<?php
	require("conn.php");
	
	$account=$_POST["account"];
	$password=$_POST["password"];
	$email=$_POST["email"];
	$shji=$_POST["shji"];
	
	if($account){
	$sql = "select * from 用户信息 where 账号='".$account."'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		$jsonresult='1';
	} else {
		$sqli = "insert into 用户信息 (账号, 密码, 邮箱,手机) values ('$account', '$password', '$email', '$shji')";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='error';
		}
	}	
	$json = '{"result":"'.$jsonresult.'"		
				}';
	echo $json;
	$conn->close();

	}
?>