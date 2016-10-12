<?php
 
/*
 * Following code will list all the products
 */
 
// array for JSON response

require_once('db_connect.php');
$con=connect();
$response = array(); 
// get all products from products table
$result = mysqli_query($con,"SELECT *FROM mons") or die(mysqli_error());
 
// check for empty result
if (mysqli_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response["mons"] = array();
 
    while ($row = mysqli_fetch_array($result)) {
        // temp user array
        $product = array();
        $product["id"] = $row["id"];
        $product["title"] = $row["title"];
        $product["description"] = $row["description"];
        $product["material"] = $row["material"];
        $product["image"] = $row["image"];
 
        // push single product into final response array
        array_push($response["mons"], $product);
    }
    // success
    $response["success"] = 1;
 
    // echoing JSON response
    echo json_encode($response);
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "No products found";
 
    // echo no users JSON
    echo json_encode($response);
}
?>