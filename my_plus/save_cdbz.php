<?php
	require("../conn.php");
//	$fhid=$_POST["fhid"];	
	$bhao=$_POST["bhao"];	
	$left=$_POST["left"];
	$top=$_POST["top"];	
	
	if($bhao){
		$sql = "select * from 测点列表  where 编号='".$bhao."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {			
			$sqli = "update 测点列表 set pageX='$left', pageY='$top' where 编号='".$bhao."'";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='error';
			}
		} else {
			$jsonresult='1';			
		}
		
		$json = '{"result":"'.$jsonresult.'"}';
		echo $json;
		$conn->close();
	
	}
?>