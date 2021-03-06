<?php

/*
 * Following code will list all the products
 */
 // determine page number from $_GET
$page = 1;
// set the number of items to display per page
$items_per_page = 10;

$id_material=-1;
$id_dipnau=-1;
$id_cooking_type=-1;


$type_material=1;
$type_dipnau=3;
$cooking_type=2;

if(!empty($_POST['page'])) {
    $page = filter_input(INPUT_POST, 'page', FILTER_VALIDATE_INT);
    if(false === $page) {
        $page = 1;
    }
}
if(!empty($_POST['num_page'])) {
    $items_per_page = filter_input(INPUT_POST, 'num_page', FILTER_VALIDATE_INT);
    if(false === $items_per_page) {
        $page = 4;
    }
}
if(!empty($_POST['type'])) {
    $type = filter_input(INPUT_POST, 'type', FILTER_VALIDATE_INT);
	if(!empty($_POST['id'])) {
		$id = filter_input(INPUT_POST, 'id', FILTER_VALIDATE_INT);
		if( $type === $type_material) {
			$id_material = $id;
		}else if($type === $type_dipnau){
			$id_dipnau = $id;
		}else if($type === $cooking_type){
			$id_cooking_type = $id;
		}
	}
}




// build query
$offset = ($page - 1) * $items_per_page;
//$sql = "SELECT * FROM menuitem LIMIT " . $offset . "," . $items_per_page;
// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db
$db = new DB_CONNECT();
$link = $db->connect();	
// get all products from products table


if($id_material!=-1){

	$result = mysqli_query($link,"SELECT * FROM mons INNER JOIN materialmon
ON mons.id=materialmon.id Where materialmon.id_material =$id_material LIMIT " . $offset . "," . $items_per_page) or die(mysqli_error());
}else if($id_cooking_type!=-1){
	$result = mysqli_query($link,"SELECT * FROM mons Where id_cooking_type =$id_cooking_type LIMIT " . $offset . "," . $items_per_page) or die(mysqli_error());
	
}else if($id_dipnau!=-1){
	$result = mysqli_query($link,"SELECT * FROM mons Where id_dipnau =$id_dipnau LIMIT " . $offset . "," . $items_per_page) or die(mysqli_error());
	
}else{
	$result = mysqli_query($link,"SELECT * FROM mons LIMIT " . $offset . "," . $items_per_page) or die(mysqli_error());
}




// check for empty result
if (mysqli_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response["mons"] = array();
    
    while ($row = mysqli_fetch_array($result)) {
        // temp user array
        $product = array();
        $product["id"] = ($row["id"]);
        $product["title"] = ($row["title"]);
        $product["description"] = ($row["description"]);
        $product["material"] = ($row["material"]);
        $product["image"] =($row["image"]);
		$product["making"] = ($row["making"]);
		$product["id_material"] = ($row["id_material"]);
 
        // push single product into final response array
        $response["mons"][] = $product;
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
