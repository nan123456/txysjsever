<?php
	require("conn.php");
	
	$sjc=$_POST["sjc"];	
	$bhao=$_POST["bhao"];	
	$scz=$_POST["scz"];
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sjc){
		$sql = "select * from 测点列表  where 编号='".$bhao."' and 时间戳='$sjc'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {			
			$sqli = "update 测点列表 set 实测值='$scz' where 编号='".$bhao."' and 时间戳='$sjc'";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='error';
			}
		} else {
			$jsonresult='1';			
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';
		echo $json;
		$conn->close();
	
	}
?>