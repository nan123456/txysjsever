<?php
	require("conn.php");
	$xmid=$_POST["xmid"];
	$sqldate="";
	$sql = "select * from 工程列表 where id='".$xmid."'";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"工程名称":"'. $row["工程名称"].'"},';
		 }
	} else {
		//echo "0 results";
	}
	$jsonresult='success';
	$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';
				
	$json = '['.$sqldate.$otherdate.']';
	echo $json;
	$conn->close();	
		
?>