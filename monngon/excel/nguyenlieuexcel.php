<?php  
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();
$connect = $db->connect();	
 $output = '';  
 if(isset($_POST["export_excel"]))  
 {  
      $sql = "SELECT * FROM material ORDER BY id_material DESC";  
      $result = mysqli_query($connect, $sql);  
      if(mysqli_num_rows($result) > 0)  
      {  
           $output .= '  
                <table class="table" bordered="1">  
                     <tr>  
                          <th>id_material</th>  
                          <th>name_material</th>  
                     </tr>  
           ';  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '  
                     <tr>  
                          <td>'.$row["id_material"].'</td>  
                          <td>'.$row["name_material"].'</td>  
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