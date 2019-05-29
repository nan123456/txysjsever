<?php
	require ("../conn.php");
	$ulId = $_POST["ulId"];
	$timestamp = $_POST["timestamp"];
	    	$sql = "update 原始记录  set 卡片状态='已删除' where id='".$ulId."'";
			$result = $conn->query($sql);
			$jsonresult='success';
		$otherdate = '{"result":"'.$jsonresult.'"}';
				
		$json = '['.$otherdate.']';
			echo $jsonresult;
$conn->close();	
?>