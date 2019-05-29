<?php
	require("../conn.php");
	$sjc = $_POST["sjc"];
//	$gclb = $_POST["gclb"];
//	$sclb = $_POST["sclb"];
	$sqldate="";
//	$sql = "select * from 测点布置附件表 where 时间戳 = '".$sjc."' and 项目类别 = '".$gclb."' and 实测类别 = '".$sclb."' ";
    $sql = "select * from 测点布置附件表 where 时间戳 = '".$sjc."' ";
	$result = $conn->query($sql);
	$count = mysqli_num_rows($result);
	if($result->num_rows > 0){
		while($row = $result->fetch_assoc()){
			$sqldate = $sqldate.'{"测点附件":"'.$row["测点附件"].'"},';
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