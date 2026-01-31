<?php
include('dbconnect.php');

try {
    $_uname = isset($_POST["un"]) ? $_POST["un"] : "";
    $_pword = isset($_POST["pw"]) ? $_POST["pw"] : "";

    $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $qry = "SELECT * FROM `account` WHERE `username`=:un";
    $stmt = $dbh->prepare($qry);
    $stmt->bindParam(":un", $_uname);
    $stmt->execute();

    $data = $stmt->fetch(PDO::FETCH_ASSOC);

    // Plain text password check (not secure!)
    if ($data && $_pword === $data['password']) {
        $arr = array("status" => 1);
    } else {
        $arr = array("status" => 0);
    }

    echo json_encode($arr);
} catch (PDOException $e) {
    $arr = array("err" => $e->getMessage());
    echo json_encode($arr);
}

$dbh = null;
?>
