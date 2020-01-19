<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once '../dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);
// print_r($request);
// echo $request->name;exit;
$name = $request->name;
$mobile = $request->mobile;
$username = $request->username;
$password = md5($request->password);

$sql = "SELECT * FROM `users` where `username`='$username'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($new = $result->fetch_assoc()) {
            $existuser = $new['username'];
    }

    $value = array("result"=>"exist");    
    // Use json_encode() function 
    $json = json_encode($value); 
    // Display the output 
    echo($json);

}else{

$sql = "INSERT INTO `users`(`name`, `mobile`, `username`, `password`) VALUES ('$name','$mobile','$username','$password')";
$result = $conn->query($sql);   
if($result){
    $value = array("result"=>"success");    
    // Use json_encode() function 
    $json = json_encode($value); 
    // Display the output 
    echo($json);
    }
}
?>
