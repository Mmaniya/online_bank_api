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
$cus_bank = $request->cus_bank;


$sql = "SELECT * FROM `cust_info` where `cust_id`='$cust_id' AND `cus_bank`='$cus_bank' AND `cus_pincode`='$cus_pincode'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
        $neamt = $new['cus_amount'] + $addamount;
    }
  
}

$sqli = "UPDATE `cust_info` SET `cus_amount`='$neamt' WHERE `cust_id`='$cust_id' AND `cus_accountno`='$cus_accountno' AND `cus_pincode`='$cus_pincode'";
$results = $conn->query($sqli); 

if($results){
    $value = array("result"=>"Deposit Successfully.!");    
    // Use json_encode() function 
    $json = json_encode($value); 
    // Display the output 
    echo($json);
    }else{
        $value = array("result"=>"Deposit Failed.!");    
        // Use json_encode() function 
        $json = json_encode($value); 
        // Display the output 
        echo($json);
    }

