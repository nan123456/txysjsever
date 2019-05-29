<?php
	require("../conn.php");
	$lx=$_POST["lx"];
	$mchen=$_POST["mchen"];
	if($lx=="rwfj"){
		$lx="任务附件";	
	}elseif ($lx=="hffj") {
		$lx="回复附件";	
	}else {
		$lx="任务附件";
	}
	$sql = "select * from 任务 where 时间戳='".$mchen."'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		$sqli = "UPDATE 任务 set $lx='$filenames' where 时间戳='".$mchen."' ";
		
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
	
?>