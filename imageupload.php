<?php include_once 'dbconfig/database.php';?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

  <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
  <title>Devdactic Image Upload</title>
</head>
<body>
<h1>Ionic Image Upload</h1>
  <?php
  $scan = scandir('uploads');
  foreach($scan as $file)
  {
    if (!is_dir($file))
    {
        echo '<h3>'.$file.'</h3>';
      echo '<img src="uploads/'.$file.'" style="width: 400px;"/><br />';
    }
  }
  ?>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>UserID</th>
        <th>TokenID</th>
        <th>Content</th>
        <th>Img 1</th>
        <th>Img 2</th>
        <th>Img 3</th>
        <th>Img 4</th>
        <th>Img 5</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <?php 
        $sql = "SELECT * FROM `gstimageupload`";
        $result = $conn->query($sql);
        
        if ($result->num_rows > 0) {
            while($new = $result->fetch_assoc()) {
              ?><tr>
                    <td><?php echo $userid = $new['userid'];?>
                    <td><?php echo $tokenid = $new['tokenid'];?>
                    <td><?php echo $content = $new['content'];?>
                    <td><img src="uploads/<?php echo $new['img1'];?>" width="100" height="100"><td>
                    <td><img src="uploads/<?php echo $new['img2'];?>" width="100" height="100"><td>
                    <td><img src="uploads/<?php echo $new['img3'];?>" width="100" height="100"><td>
                    <td><img src="uploads/<?php echo $new['img4'];?>" width="100" height="100"><td>
                    <td><img src="uploads/<?php echo $new['img5'];?>" width="100" height="100"><td>
                    <td><?php echo $status = $new['status'];?>
                    </tr><?php 
                 }
          }
      ?>

    </tbody>
  </table>

</body>
</html>