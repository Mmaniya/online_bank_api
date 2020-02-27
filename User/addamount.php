<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);

$cust_id = $request->cust_id;
$cus_accountno = $request->cus_accountno;
$cus_pincode = $request->cus_pincode;
$cus_amount = $request->cus_amount;
$addamount = $request->addamount;


$neamt = $addamount + $cus_amount;
 $sqli = "UPDATE `cust_info` SET `cus_amount`='$neamt' WHERE `cust_id`='$cust_id' AND `cus_accountno`='$cus_accountno' AND `cus_pincode`='$cus_pincode'";
$results = $conn->query($sqli); 



$sql = "SELECT * FROM `cust_info` where `cust_id`='$cust_id'";
$result = $conn->query($sql);
$rows = array();

if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
        array_push($rows,$new);
    }
    print json_encode($rows);
}


if($result){
    $value = array("result"=>"Deposit Successfully.!");    
    // Use json_encode() function 
    $json = json_encode($value); 
    // Display the output 
    echo($json);
    }else{
        $value = array("result"=>"Updated Failed.!");    
        // Use json_encode() function 
        $json = json_encode($value); 
        // Display the output 
        echo($json);
    }

