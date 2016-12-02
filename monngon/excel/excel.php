<?php  
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();
$connect = $db->connect();	
 $output = '';  
 if(isset($_POST["export_excel"]))  
 {  
      $sql = "SELECT * FROM mons ORDER BY id DESC";  
      $result = mysqli_query($connect, $sql);  
      if(mysqli_num_rows($result) > 0)  
      {  
           $output .= '  
                <table class="table" bordered="1">  
                     <tr>  
                          <th>id</th>  
                          <th>title</th>  
                          <th>description</th>  
                          <th>material</th>  
                          <th>image</th>  
						   <th>video</th>  
                          <th>making</th>  
                          <th>id_cooking_type</th>  
						  <th>id_material</th>  
						  <th>id_dipnau</th> 
                     </tr>  
           ';  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '  
                     <tr>  
                          <td>'.$row["id"].'</td>  
                          <td>'.$row["title"].'</td>  
                          <td>'.$row["description"].'</td>  
						  <td>'.$row["material"].'</td>  
                          <td>'.$row["image"].'</td>  
                          <td>'.$row["video"].'</td>  
						     <td>'.$row["making"].'</td>  
						  <td>'.$row["id_cooking_type"].'</td>  
                          <td>'.$row["id_material"].'</td>  
                          <td>'.$row["id_dipnau"].'</td>  
                     </tr>  
                ';  
           }  
           $output .= '</table>';  
           header('Content-Type: application/xls;charset=UTF-8');   
	
           header("Content-Disposition: attachment; filename=download.xls");  
           echo $output;  
      }  
 }  
 ?>  