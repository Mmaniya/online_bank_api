<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authorization, X-Requested-With');
include_once 'dbconfig/database.php';
$data = file_get_contents("php://input");
$request = json_decode($data);

$tokenContent = $request->tokenContent;
$tokenId = $request->tokenId;
$userId = $request->userId;
$filepath = $request->filepath;

$sql = "INSERT INTO `gstimageupload`(`userid`, `content`, `tokenid`, `img1`, `img2`, `img3`, `img4`, `img5`,`status`) VALUES ('$userId','$tokenContent','$tokenId','','','','','','pending')";
$result = $conn->query($sql);   
if($result){

    $sql1 = "SELECT * FROM `gstimageupload` where `img1`=''";
    $result1 = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $img1update = "UPDATE `gstimageupload` SET `img1`='$filepath'";
        $updateimg1 = $conn->query($img1update);
    }

    $sql2 = "SELECT * FROM `gstimageupload` where `img1`!='' AND `img2`=''";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        $img2update = "UPDATE `gstimageupload` SET `img2`='$filepath'";
        $updateimg2 = $conn->query($img2update);
    }

    $sql3 = "SELECT * FROM `gstimageupload` where `img1`!='' AND `img2`!='' AND `img3`=''";
    $result3 = $conn->query($sql3);

    if ($result3->num_rows > 0) {
        $img3update = "UPDATE `gstimageupload` SET `img3`='$filepath'";
        $updateimg3 = $conn->query($img3update);
    }

    $sql4 = "SELECT * FROM `gstimageupload` where `img1`!='' AND `img2`!='' AND `img3`!='' AND `img4`=''";
    $result4 = $conn->query($sql4);

    if ($result4->num_rows > 0) {
        $img4update = "UPDATE `gstimageupload` SET `img4`='$filepath'";
        $updateimg4 = $conn->query($img4update);
    }

    $sql5 = "SELECT * FROM `gstimageupload` where `img1`!='' AND `img2`!='' AND `img3`!='' AND `img4`!='' AND `img5`=''";
    $result5 = $conn->query($sql5);

    if ($result5->num_rows > 0) {
        $img5update = "UPDATE `gstimageupload` SET `img5`='$filepath'";
        $updateimg5 = $conn->query($img5update);
    }

    $value = array("result"=>"success");    
    // Use json_encode() function 
    $json = json_encode($value); 
    // Display the output 
    echo($json);
}
?>