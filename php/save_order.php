<?php
include('dbconnect.php');

try {
  $fullname = $_POST['fullname'] ?? '';
  $phone = $_POST['phone'] ?? '';
  $email = $_POST['email'] ?? '';
  $address = $_POST['address'] ?? '';
  $items = isset($_POST['items']) ? json_decode($_POST['items'], true) : [];

  if (!$fullname || !$phone || !$email || !$address || empty($items)) {
    echo json_encode(['status' => 0, 'message' => 'Incomplete fields or empty cart']);
    exit;
  }

  $dbh = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASS);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $stmt = $dbh->prepare("INSERT INTO orders 
    (fullname, address, phone, email, item_name, price, quantity, sub_total, created_at)
    VALUES (:fullname, :address, :phone, :email, :item_name, :price, :quantity, :sub_total, NOW())");

  foreach ($items as $item) {
    $stmt->execute([
      ':fullname' => $fullname,
      ':address' => $address,
      ':phone' => $phone,
      ':email' => $email,
      ':item_name' => $item['name'],
      ':price' => $item['price'],
      ':quantity' => $item['quantity'],
      ':sub_total' => $item['subtotal']
    ]);
  }

  echo json_encode(['status' => 1, 'message' => 'Order saved successfully.']);
} catch (PDOException $e) {
  echo json_encode(['status' => 0, 'message' => 'DB error: ' . $e->getMessage()]);
}
?>
