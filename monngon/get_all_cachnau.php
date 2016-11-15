<?php

/*
 * Following code will list all the products
 */

// array for JSON response
$response = array();


// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();
$link = $db->connect();	
// get all products from products table

$result = mysqli_query($link,"SELECT *FROM cachnau") or die(mysqli_error());


// check for empty result
if (mysqli_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response["cachnaus"] = array();
    
    while ($row = mysqli_fetch_array($result)) {
        // temp user array
        $cachnaus = array();
        $cachnaus["id_cooking_type"] = ($row["id_cooking_type"]);
        $cachnaus["name_cooking_type"] = ($row["name_cooking_type"]);
        // push single product into final response array
        $response["cachnaus"][] = $cachnaus;
    }
    // success
    $response["success"] = 1;
    // echoing JSON response
	//header("Content-type: application/json; charset=utf-8");

	header('Content-Type: application/json; charset=UTF-8');
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "No products found";

    // echo no users JSON
    echo json_encode($response);
}
?>
