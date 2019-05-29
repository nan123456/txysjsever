<?php
	require("conn.php");
	$bhao=$_POST["bhao"];
	$fhid=$_POST["fhid"];
	
	$sqldate="";
	$sql = "select * from 测点列表   where 编号='".$bhao."' and fhid='".$fhid. "'";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"id":"'. $row["id"].'","测点类型":"'. $row["测点类型"].'","编号":"'. $row["编号"].'","实测值":"'.$row["实测值"].'","说明":"'.$row["说明"].'"},';
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