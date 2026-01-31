<?php
include('dbconnect.php');

try {
    $dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PASS);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Query to fetch records from the table
    $qry = "SELECT * FROM orders";
    $stmt = $dbh->prepare($qry);
    $stmt->execute();

    // Fetch all client data as an associative array
    $clients = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Check if there are any records and return them
    if ($clients) {
    echo json_encode(["status" => 1, "data" => $clients]);
} else {
    echo json_encode(["status" => 0, "message" => "No records found"]);
}

} catch (PDOException $e) {
    // In case of an error, send the error message
    echo json_encode(["status" => 0, "message" => "Database Error: " . $e->getMessage()]);
}

$dbh = null;
?>
