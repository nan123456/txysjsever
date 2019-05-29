<?php
	require("conn.php");	
	$sjc=$_POST["sjc"];
	$mchen=$_POST["mchen"];
	$sqldate="";
	$sql = "select * from 分户验收 where 名称='".$mchen."' and 时间戳='".$sjc."' ";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"任务描述":"'.$row["任务描述"].'","任务接收人":"'.$row["任务接收人"].'","栋号":"'.$row["栋号"].'","验收日期":"'.$row["验收日期"].'"},';
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