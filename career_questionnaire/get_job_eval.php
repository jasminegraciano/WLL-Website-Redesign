<?php
header('Content-Type: application/json');
require_once 'db.php';

if (!isset($_GET['answer_id'])) {
    echo json_encode(["error" => "No answer_ids provided"]);
    exit;
}

$answer_ids = $_GET['answer_id'];

if (!is_array($answer_ids)) {
    $answer_ids = [$answer_ids];
}

$conn = get_db_connection();

$placeholders = implode(',', array_fill(0, count($answer_ids), '?'));
$types = str_repeat('i', count($answer_ids));
$params = $answer_ids;

$stmt = $conn->prepare("SELECT DISTINCT question_id FROM answers WHERE answer_id IN ($placeholders)");
$stmt->bind_param($types, ...$params);
$stmt->execute();
$result = $stmt->get_result();

$question_ids = [];
while ($row = $result->fetch_assoc()) {
    $question_ids[] = $row['question_id'];
}
$stmt->close();

// Score jobs
$job_scores = [];

$stmt2 = $conn->prepare("SELECT answer_id, weight, job_id FROM jobweights WHERE answer_id IN ($placeholders)");
$stmt2->bind_param($types, ...$params);
$stmt2->execute();
$result2 = $stmt2->get_result();

while ($row = $result2->fetch_assoc()) {
    $job_id = $row['job_id'];
    $weight = $row['weight'];

    if (!isset($job_scores[$job_id])) {
        $job_scores[$job_id] = 0;
    }

    $job_scores[$job_id] += $weight;
}

arsort($job_scores);

$top_jobs = array_slice($job_scores, 0, 5, true);

if (empty($top_jobs)) {
    echo json_encode([]);
    exit;
}

// Get job details (including alumni_stories)
$placeholders = implode(',', array_fill(0, count($top_jobs), '?'));
$types = str_repeat('i', count($top_jobs));
$stmt3 = $conn->prepare("SELECT job_id, job_title, job_description, alumni_stories FROM jobs WHERE job_id IN ($placeholders)");
$stmt3->bind_param($types, ...array_keys($top_jobs));
$stmt3->execute();
$result3 = $stmt3->get_result();

$final = [];

// Fetch job details and organize by the original sorted order
while ($row = $result3->fetch_assoc()) {
    $job_id = $row['job_id'];
    $final[$job_id] = $row;
}

// Reorder based on job scores
$final_sorted = [];
foreach (array_keys($top_jobs) as $job_id) {
    if (isset($final[$job_id])) {
        $final_sorted[] = $final[$job_id];
    }
}

echo json_encode($final_sorted);
$conn->close();
?>