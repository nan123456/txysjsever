<?php
	require("../conn.php");
//	$fhid=$_POST["fhid"];
    $sjc = $_POST["sjc"];	
	$bhao = $_POST["bhao"];	
	$numx = $_POST["numx"];
	$numy = $_POST["numy"];	
	
	if($bhao){
		$sql = "select * from 测点列表  where 编号='".$bhao."' and 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {			
			$sqli = "update 测点列表 set pageX='$numx', pageY='$numy' where 编号='".$bhao."'";
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