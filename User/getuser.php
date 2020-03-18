<?php

// Headers
header('Access-Control-Allow-Origin: *');
// header('Content-Type: application/json');
// header('Access-Control-Allow-Methods: GET');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);

$cus_id = $request->cus_id;
$cus_bank = $request->cus_bank;


$sql = "SELECT * FROM `cust_info` where `cust_id`='$cus_id' AND `cus_bank`='$cus_bank'";
$result = $conn->query($sql);
$rows = array();

if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
        array_push($rows,$new);
    }
    print json_encode($rows);
}

?>
