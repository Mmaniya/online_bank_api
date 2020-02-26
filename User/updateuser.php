<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);

$cus_id = $request->cus_id;
$cus_name = $request->cus_name;
$cus_address = $request->cus_address;
$cus_dob = $request->cus_dob;
$cus_gender = $request->cus_gender;
$cus_contactno = $request->cus_contactno;
$cus_accountno = $request->cus_accountno;
$cus_pincode = $request->cus_pincode;
$cus_amount = $request->cus_amount;


$sql = "UPDATE `cust_info` SET `cus_name`='$cus_name',`cus_address`='$cus_address',`cus_gender`='$cus_gender',`cus_dob`='$cus_dob',`cus_contactno`='$cus_contactno',`cus_accountno`='$cus_accountno',`cus_pincode`='$cus_pincode',`cus_amount`='$cus_amount' WHERE `cust_id`='$cus_id'";
$result = $conn->query($sql); 

if($result){
    $value = array("result"=>"Updated Successfully.!");    
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

?>