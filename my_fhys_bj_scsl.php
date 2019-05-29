<?php
	require("conn.php");
	$sjc=$_POST["sjc"];
	$sqldate="";
	$sql = "select * from 测点列表   where 时间戳='$sjc' ORDER BY 编号";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);	
	if ($result->num_rows > 0) {
		 while($row = $result->fetch_assoc()) {
		 	$sqldate= $sqldate.'{"id":"'. $row["id"].'","测点类型":"'. $row["测点类型"].'","编号":"'. $row["编号"].'","实测值":"'. $row["实测值"].'","pageX":"'.$row["pageX"].'","pageY":"'.$row["pageY"].'"},';
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