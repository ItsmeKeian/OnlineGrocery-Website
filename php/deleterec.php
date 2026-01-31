<?php
include('dbconnect.php');

try {
    $id = isset($_POST['id']) ? (int)$_POST['id'] : 0;

    // DEBUG: Log the ID to a file
    file_put_contents("debug.log", "Received ID: $id\n", FILE_APPEND);

    if ($id <= 0) {
        echo json_encode(["status" => 0, "message" => "Invalid ID provided."]);
        exit;
    }

    $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $dbh->prepare("DELETE FROM orders WHERE orderid = :id");
    $stmt->bindParam(":id", $id, PDO::PARAM_INT);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        echo json_encode(["status" => 1, "message" => "Record deleted successfully."]);
    } else {
        echo json_encode(["status" => 0, "message" => "No record found to delete."]);
    }
} catch (PDOException $e) {
    echo json_encode(["status" => 0, "message" => "Database error: " . $e->getMessage()]);
}
?>
