<?php
function get_db_connection() {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "questionnaire_db";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
}
?>