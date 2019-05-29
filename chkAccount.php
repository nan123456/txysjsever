<?php
	require("conn.php");

	$account=$_POST["account"];
	$sql = "select * from 用户信息 where 账号='".$account."'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		$jsonresult='error';
	} else {		
		$jsonresult='success';
	}
	$json = '{"result":"'.$jsonresult.'"		
				}';
	echo $json;
	$conn->close();	
		
?>