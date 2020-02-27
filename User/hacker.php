<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);

$cust_id = $request->cust_id;

$sql = "SELECT * FROM `cust_info` where `cust_id`='$cust_id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
            $cus_id = $new['cust_id'];
            $cus_name = $new['cus_name'];
            $cus_accountno = $new['cus_contactno'];
    }
}
    $randIP = "".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255);

    $sql1 = "INSERT INTO `cust_block`(`cust_id`, `cust_name`, `cust_ac`,`block_ip`) VALUES ('$cus_id','$cus_name','$cus_accountno','$randIP')";
    $result1 = $conn->query($sql1); 

    if($result1){
        $value = array("result"=>"Successfully locked.!");    
        // Use json_encode() function 
        $json = json_encode($value); 
        // Display the output 
        echo($json);
        }