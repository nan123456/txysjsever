<?php
	require("conn.php");
	
	$sqldate="";
	$sql = "select * from 工程列表 ";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"id":"'. $row["id"].'","工程名称":"'. $row["工程名称"].'","工程地区":"'. $row["工程地区"].'","工程类别":"'.$row["工程类别"].'"},';
		 }
	} else {
		//echo "0 results";
	}
	//echo $sqldate;
	$jsonresult='success';
	$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';
				
	$json = '['.$sqldate.$otherdate.']';
	echo $json;
	$conn->close();	
		
?>