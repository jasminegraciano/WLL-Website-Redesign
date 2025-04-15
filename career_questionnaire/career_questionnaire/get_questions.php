<?php
header('Content-Type: application/json');
require_once 'db.php';

$conn = get_db_connection();

$questions = [];
$qResult = $conn->query("SELECT * FROM questions");

while ($qRow = $qResult->fetch_assoc()) {
    $question_id = $qRow['question_id'];
    $answers = [];

    $aResult = $conn->query("SELECT answer_id, answer_text FROM answers WHERE question_id = $question_id");

    while ($aRow = $aResult->fetch_assoc()) {
        $answers[] = $aRow;
    }

    $qRow['options'] = $answers;
    $questions[] = $qRow;
}

echo json_encode($questions);
$conn->close();
?>