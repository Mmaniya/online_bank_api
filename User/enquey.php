<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);

$cust_id = $request->cust_id;
$cust_bank = $request->cust_bank;
$pincode = $request->cust_pin;

$sql = "SELECT * FROM `cust_info` where `cust_id`='$cust_id' AND `cus_bank`='$cust_bank' AND `cus_pincode`='$pincode'";
$result = $conn->query($sql);
$rows = array();
if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
        array_push($rows,$new);
    }
    print json_encode($rows);
}
