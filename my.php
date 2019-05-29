<?php
	require("conn.php");
	//$AjaxId=$_POST["AjaxId"];
	
	$sql = "select * from 工程列表 ";
	$result = $conn->query($sql);
	$rowcount=mysqli_num_rows($result)."个项目";	
	$jsonresult='success';	
	$json = '{"result":"'.$jsonresult.'",
			  "rowcount":"'.$rowcount.'"
			}';
	echo $json;
	$conn->close();	
		
?>