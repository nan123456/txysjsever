<?php
	require("../conn.php");
//	$gclb = $_POST["gclb"];
    $sjc = $_POST["sjc"];
	$sqldate = "";
	$sql = "select * from 测点列表 where 时间戳 = '".$sjc."'";
	$result = $conn->query($sql);
	$count = mysqli_num_rows($result);
	if($result->num_rows > 0){ 
		while($row = $result->fetch_assoc()){
			$sqldate = $sqldate.'{"测点类型":"'.$row["测点编号"].'","测点个数":"'.$row["测点个数"].'","测点编号":"'.$row["测点编号"].'"},';
//			$sqlbh = $sqlbh.'{"编号":"'.$row["编号"].'"},';
		}
	}
	 
	$jsonresult='success';
		$otherdate = '{"result":"'.$jsonresult.'",
					"count":"'.$count.'"
					}';
				
		$json = '['.$sqldate.$otherdate.']';
		
	echo $json;
	$conn->close();	
?>