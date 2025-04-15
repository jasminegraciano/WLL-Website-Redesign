<?php
require_once 'db.php';

$conn = get_db_connection();

$sql = "SELECT job_id, job_title, job_description, alumni_stories FROM jobs ORDER BY job_title ASC";
$result = $conn->query($sql);

$jobs = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $jobs[] = $row;
    }
}

$conn->close();

header('Content-Type: application/json');
echo json_encode($jobs);
?>
