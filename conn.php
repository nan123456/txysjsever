<?php
	/****远程数据库连接*****/	
//	/
	$servername = "localhost:3306";
	$username = "root";
	$password = "123456";
	$dbname = "同欣易送检";	
	$conn = new mysqli($servername, $username, $password, $dbname);	
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}else{
		echo "Connected successfully";
	}
//	*/
	/****远程数据库连接 end*****/	
	
//	/*本地连接
//	 * 2017-12-11
//	 * */
//	$servername = "localhost:3306";
//	$username = "root";
//	$password = "123456";
//	$dbname = "同欣易送检"; 	
//	$conn = new mysqli($servername, $username, $password, $dbname);	
//	if ($conn->connect_error) {
//		die("Connection failed: " . $conn->connect_error);
//	}else{
////		echo "Connected successfully";
//	}
?> 