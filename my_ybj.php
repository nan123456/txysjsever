<?php
	require("conn.php");
	$xmid=$_POST["xmid"];	
	$sqldate="";
	$sql = "select * from 分户验收 where xmid='".$xmid."'";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"名称":"'. $row["名称"].'","时间戳":"'. $row["时间戳"].'"},';
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