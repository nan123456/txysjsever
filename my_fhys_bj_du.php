<?php
	require("conn.php");	
	$fhid=$_POST["fhid"];
	$sqldate="";
	$sql = "select * from 分户验收 where id='".$fhid."'";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"任务描述":"'.$row["任务描述"].'","任务接收人":"'.$row["任务接收人"].'","栋号":"'.$row["栋号"].'","房号":"'.$row["房号"].'","验收日期":"'.$row["验收日期"].'","验收照片":"'.$row["验收照片"].'","户型平面图":"'.$row["户型平面图"].'","验收记录":"'.$row["验收记录"].'","补充记录":"'.$row["补充记录"].'"},';
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