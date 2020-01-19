<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once 'dbconfig/database.php';
$data = file_get_contents("php://input");

$request = json_decode($data);
error_log($data);
$target_path = "uploads/";
 
$target_path = $target_path . basename( $_FILES['file']['name']);
 
if(move_uploaded_file($_FILES['file']['tmp_name'], $target_path)) {
    header('Content-type: application/json');

    $data = ['success' => true, 'message' => 'Upload and move success', 'data'=> $target_path];
    echo json_encode( $data );
} else{
    header('Content-type: application/json');
    $data = ['success' => false, 'message' => 'There was an error uploading the file, please try again!'];
    echo json_encode( $data );
}
 
?>