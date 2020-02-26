<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);

$cus_id = $request->cus_id;
$cus_name = $request->cus_name;
$cus_pass = md5($request->cus_pass);
$confirmpass = md5($request->confirmpass);
$ip = $request->ipaddress;


$sql = "SELECT * FROM `cust_reg` where `cus_id`='$cus_id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
            $existuser = $new['cus_id'];
    }

    $value = array("result"=>"User Aleardy Exist.!");    
    // Use json_encode() function 
    $json = json_encode($value); 
    // Display the output 
    echo($json);

}else{
if ($cus_pass == $confirmpass){
    $sql = "INSERT INTO `cust_reg`(`cus_id`, `cus_name`, `cus_pass`, `cus_cpass`, `cus_status`) VALUES ('$cus_id','$cus_name','$cus_pass','$confirmpass','1')";
    $result = $conn->query($sql);  

    $sql1 = "INSERT INTO `cust_info`(`cust_id`, `cus_name`, `cus_address`, `cus_gender`, `cus_dob`, `cus_contactno`, `cus_accountno`, `cus_pincode`, `cus_amount`, `cus_ip`, `cus_status`)  VALUES ('$cus_id','$cus_name','','',NULL,'','','0000','0','$ip','1')";
    $result1 = $conn->query($sql1); 

    if($result1){
        $value = array("result"=>"Successfully Registered.!");    
        // Use json_encode() function 
        $json = json_encode($value); 
        // Display the output 
        echo($json);
        }
            }else{
            $value = array("result"=>"Password Miss Match.!");    
            // Use json_encode() function 
            $json = json_encode($value); 
            // Display the output 
            echo($json);
        }
}
?>