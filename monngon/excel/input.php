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
$title = $description = $material = $image = $video = $making = "";
$titleError = $descriptionError = $materialError = $imageError = $videoError = $makingError = "";
$result_material;

$isTitle = $isDescription = $isMaterial = $isImage = $isVideo = $isMaking = false;

//include db connect class 
require_once __DIR__ . '/db_connect.php'; 
// connecting to db 
$db = new DB_CONNECT(); 
$link = $db->connect(); // get all products from products table 


//Cach lam
$result_cachnau = mysqli_query($link,"SELECT *FROM cachnau") or die(mysqli_error()); 
$op_cachnau = '';
 while($row = mysqli_fetch_array($result_cachnau))
{
  $op_cachnau .= '<option value = "'.$row['id_cooking_type'].'">'.$row['name_cooking_type'].'</option>';
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["title"])) {
    $titleError = "Title is required";
  } else {
	  
    $title = test_input($_POST["title"]);
	$isTitle=true;
    // check if name only contains letters and whitespace
   // if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
     // $nameErr = "Only letters and white space allowed"; 
    //}
  }
  
  if (empty($_POST["description"])) {
    $descriptionError = "Description is required";
  } else {
	  $isDescription=true;
    $description = test_input($_POST["description"]);
   
  }
    
  if (empty($_POST["material"])) {
     $materialError = "material is required"; 
  } else {
	  $isMaterial=true;
	  $material = test_input($_POST["material"]);
   
  }

  if (empty($_POST["image"])) {
     $imageError = "image is required"; 
  } else {
	$isImage=true;
    $image = test_input($_POST["image"]);
  }

  if (empty($_POST["video"])) {
    $videoError = "video is required";
  } else {
	 $isVideo=true;
    $video = test_input($_POST["video"]);
  }
   if (empty($_POST["making"])) {
    $makingError = "making is required";
  } else {
	 $isMaking=true;
    $making = test_input($_POST["making"]);
  }
	if($isTitle==true&$isDescription==true&$isMaterial==true&$isImage==true&$isVideo==true&$isMaking==true){
	//if($isTitle){
	
		$cachnauOption = $_POST['cachnauop'];
	
		$chkmaterial = $_POST['chkmaterial'];
		if(empty($chkmaterial)) 
		{
				echo("You didn't select any buildings.");
		} 
		else
		{
			$N = count($chkmaterial);
 
			echo("You selected $N door(s): ");
			for($i=0; $i < $N; $i++)
			{
				echo($chkmaterial[$i] . " ");
			}
		}
		
		 $chkmaterial = $_POST['chkmaterial'];
		
		
		if(empty($chkdipnau)) 
		{
				echo("You didn't select any buildings.");
		} 
		else
		{
			$N = count($chkdipnau);
 
			echo("You selected $N door(s): ");
			for($i=0; $i < $N; $i++)
			{
				echo($chkdipnau[$i] . " ");
			}
		}

		
		
		 // Câu SQL Insert
		/*
		$sql = "INSERT INTO material (name_material) 
        VALUES ('noi dung')";
		*/
		/*	$sql = "INSERT INTO mons (title, description, material, image, video, making,id_cooking_type, id_material, id_dipnau)
		VALUES ('" . $title . "', '" . $description . "', '" . $material . "', '" . $image . "', '" . $video . "', '" . $making . "',0,0,0)";
		*/
		  // mysql inserting a new row
		// $result = mysql_query("INSERT INTO products(name, price, description) VALUES('$name', '$price', '$description')");
		/*var_dump($title);
		var_dump($description);
		var_dump($material);
		var_dump($image);
		var_dump($video);
		var_dump($making);
		var_dump($cachnauOption);
			var_dump($materialOption);
				var_dump($dipnauOption);
				*/
		if (mysqli_query($link,"INSERT INTO mons(title, description, material, image, video, making,id_cooking_type, id_material, id_dipnau, is_seven_day, is_most_view) VALUES('$title','$description','$material','$image','$video','$making','$cachnauOption','$materialOption','$dipnauOption', '0', '0')")) {
				
				echo "New record created successfully";
				$title="";
				$description="";
				$material="";
				$image="";
				$video="";
				$making="";
				
			
		} else {
				
				echo "Error: " . $sql . "<br>" . mysqli_error($link);
		}
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
  Nguyên liệu: <input type="text" name="material" value="<?php echo $material;?>">
  <span class="error"><?php echo $materialError;?></span>
  <br><br>
  
  Ảnh: <input type="text" name="image" value="<?php echo $image;?>">
  <span class="error"><?php echo $imageError;?></span>
  <br><br>

   Video: <input type="text" name="video" value="<?php echo $video;?>">
  <span class="error"><?php echo $videoError;?></span>
  <br><br>

   Cách làm: <input type="text" name="making" value="<?php echo $making;?>">
  <span class="error"><?php echo $videoError;?></span>
  <br><br>

 Nguyên liệu:
 
 <?php
 //Nguyen lieu
$result_material = mysqli_query($link,"SELECT *FROM material") or die(mysqli_error()); 

    while($row = mysqli_fetch_array($result_material))
{
	  echo '<input type="checkbox" name="chkmaterial[]" value="'.$row['name_material'].'"  /> '.$row['name_material'].'';
}
?>
<br><br>
 
 
  Cách nấu: <select name="cachnauop" >
	<?php echo $op_cachnau; ?>
  </select>
 <br><br>
  Dịp nấu: <?php
 //Nguyen lieu
$result_dipnau = mysqli_query($link,"SELECT *FROM dipnau") or die(mysqli_error()); 

    while($row = mysqli_fetch_array($result_dipnau))
{
	  echo '<input type="checkbox" name="chkdipnau[]" value="'.$row['id_dipnau'].'"  /> '.$row['name_dipnau'].'';
}
?>
 <br><br>
  <input type="submit" name="submit" value="Submit">  
  
<?php
echo "<h2>Your Input:</h2>";
echo $title;
echo "<br>";
echo $description;
echo "<br>";
echo $material;
echo "<br>";
echo $image;
echo "<br>";
echo $video;
echo "<br>";
echo $making;
?>

</body>
</html>