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
$title = $description = $matetial = $websiteErr = "";
$name = $email = $image = $video = $making = "";
/*
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed"; 
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format"; 
    }
  }
    
  if (empty($_POST["website"])) {
    $website = "";
  } else {
    $website = test_input($_POST["website"]);
    // check if URL address syntax is valid (this regular expression also allows dashes in the URL)
    if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$website)) {
      $websiteErr = "Invalid URL"; 
    }
  }

  if (empty($_POST["comment"])) {
    $comment = "";
  } else {
    $comment = test_input($_POST["comment"]);
  }

  if (empty($_POST["gender"])) {
    $genderErr = "Gender is required";
  } else {
    $gender = test_input($_POST["gender"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
*/
?>



<h2>PHP Form Validation Example</h2>
<p><span class="error">* required field.</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Tiêu đề: <input type="text" name="title" value="<?php echo $title;?>">
  <span class="error">* <?php echo $title;?></span>
  <br><br>
  Mô tả: <input type="text" name="description" value="<?php echo $description;?>">
  <span class="error">* <?php echo $description;?></span>
  <br><br>
  Nguyên liệu: <input type="text" name="matetial" value="<?php echo $matetial;?>">
  <span class="error"><?php echo $matetial;?></span>
  <br><br>
  Ảnh: <textarea name="image" rows="5" cols="40"><?php echo $image;?></textarea>
  <br><br>
  Video: <textarea name="video" rows="5" cols="40"><?php echo $video;?></textarea>
  <br><br>
  Cách làm: <textarea name="making" rows="5" cols="40"><?php echo $making;?></textarea>
  <br><br>
  Cách nấu: <select name="typecooking" ></select>
  <br><br>
  <input type="submit" name="submit" value="Submit">  
</form>

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