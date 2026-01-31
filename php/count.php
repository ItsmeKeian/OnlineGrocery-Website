<?php
include('dbconnect.php');

try {
    // Connect to the database
    $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Count all orders
    $countQry = "SELECT COUNT(*) AS total_records FROM `orders`";
    $countStmt = $dbh->prepare($countQry);
    $countStmt->execute();
    $countData = $countStmt->fetch(PDO::FETCH_ASSOC);

    // Sum all total price (total income)
    $incomeQry = "SELECT SUM(sub_total) AS total_income FROM `orders`";
    $incomeStmt = $dbh->prepare($incomeQry);
    $incomeStmt->execute();
    $incomeData = $incomeStmt->fetch(PDO::FETCH_ASSOC);

    echo json_encode(array(
        "status" => 1,
        "unid" => $countData['total_records'],
        "income" => $incomeData['total_income'] ?? 0
    ));
} catch (PDOException $e) {
    echo json_encode(array("status" => 0, "message" => "Error: " . $e->getMessage()));
}

$dbh = null;
?>
