<!DOCTYPE HTML>  
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body>  

<?php

// define variables and set to empty values
$title = $description = $matetial = $image = $video = $making = "";
$titleError = $descriptionError = $matetialError = $imageError = $videoError = $makingError = "";


//include db connect class 
require_once __DIR__ . '/db_connect.php'; 
// connecting to db 
$db = new DB_CONNECT(); 
$link = $db->connect(); // get all products from products table 

//Nguyen lieu
$result = mysqli_query($link,"SELECT *FROM material") or die(mysqli_error()); 
$op_material = '';
 while($row = mysqli_fetch_array($result))
{
  $op_material .= '<option value = "'.$row['name_material'].'">'.$row['name_material'].'</option>';
}
//Cach lam
$result_cachnau = mysqli_query($link,"SELECT *FROM cachnau") or die(mysqli_error()); 
$op_cachnau = '';
 while($row = mysqli_fetch_array($result_cachnau))
{
  $op_cachnau .= '<option value = "'.$row['name_cooking_type'].'">'.$row['name_cooking_type'].'</option>';
}
//Dip nau
$result_dipnau = mysqli_query($link,"SELECT *FROM dipnau") or die(mysqli_error()); 
$op_dipnau = '';
 while($row = mysqli_fetch_array($result_dipnau))
{
  $op_dipnau .= '<option value = "'.$row['name_dipnau'].'">'.$row['name_dipnau'].'</option>';
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["title"])) {
    $titleError = "Title is required";
  } else {
    $title = test_input($_POST["title"]);
    // check if name only contains letters and whitespace
   // if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
     // $nameErr = "Only letters and white space allowed"; 
    //}
  }
  
  if (empty($_POST["description"])) {
    $descriptionError = "Description is required";
  } else {
    $description = test_input($_POST["description"]);
   
  }
    
  if (empty($_POST["matetial"])) {
     $matetialError = "matetial is required"; 
  } else {
    $matetial = test_input($_POST["matetial"]);
   
  }

  if (empty($_POST["image"])) {
     $imageError = "image is required"; 
  } else {
    $image = test_input($_POST["comment"]);
  }

  if (empty($_POST["video"])) {
    $videoError = "video is required";
  } else {
    $video = test_input($_POST["video"]);
  }
   if (empty($_POST["making"])) {
    $makingError = "making is required";
  } else {
    $making = test_input($_POST["making"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

?>



<h2>PHP Form Validation Example</h2>
<p><span class="error">* required field.</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Tiêu đề: <input type="text" name="title" value="<?php echo $title;?>">
  <span class="error">* <?php echo $titleError;?></span>
  <br><br>
  Mô tả: <input type="text" name="description" value="<?php echo $description;?>">
  <span class="error">* <?php echo $descriptionError;?></span>
  <br><br>
  Nguyên liệu: <input type="text" name="matetial" value="<?php echo $matetial;?>">
  <span class="error"><?php echo $matetialError;?></span>
  <br><br>
  Ảnh: <textarea name="image" rows="5" cols="40"><?php echo $imageError;?></textarea>
  <br><br>
  Video: <textarea name="video" rows="5" cols="40"><?php echo $videoError;?></textarea>
  <br><br>
  Cách làm: <textarea name="making" rows="5" cols="40"><?php echo $makingError;?></textarea>
  <br><br>
  Nguyên liệu: <select name="material" >
	<?php echo $op_material; ?>
  </select>
 <br><br>
  Cách nấu: <select name="cachnau" >
	<?php echo $op_cachnau; ?>
  </select>
 <br><br>
  Dịp nấu: <select name="dipnau" >
	<?php echo $op_dipnau; ?>
  </select>
 <br><br>
  <input type="submit" name="submit" value="Submit">  
  
<?php
echo "<h2>Your Input:</h2>";
echo $title;
echo "<br>";
echo $description;
echo "<br>";
echo $matetial;
echo "<br>";
echo $image;
echo "<br>";
echo $video;
echo "<br>";
echo $making;
?>

</body>
</html>