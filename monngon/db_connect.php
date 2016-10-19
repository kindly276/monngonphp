<?php

/**
 * A class file to connect to database
 */
class DB_CONNECT {
	public static $db;
    // constructor
    function __construct() {
        // connecting to database
        $this->connect();
    }

    // destructor
    /*function __destruct($db) {
        // closing db connection
        $this->close($db);
    }*/

    /**
     * Function to connect with database
     */
    function connect() {
        // import database connection variables
        require_once __DIR__ . '/db_config.php';

        // Connecting to mysql database
        $db = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD,DB_DATABASE) or die(mysqli_error());

        // Selecing database
        //$db = mysql_select_db(DB_DATABASE) or die(mysql_error()) or die(mysqli_error());

        // returing connection cursor
        return $db;
    }

    /**
     * Function to close db connection
     */
    function close($db) {
        // closing db connection
        mysqli_close($db);
    }

}

?>