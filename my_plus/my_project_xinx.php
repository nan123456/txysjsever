<?php
	require("../conn.php");
	$sjc = $_POST["sjc"];
	$sqldate="";
	$sql = "select * from 质量检查 where 时间戳 = '$sjc'";
	$result = $conn->query($sql);
	$count = mysqli_num_rows($result);
	if($result->num_rows > 0){
		while($row = $result->fetch_assoc()){
			$sqldate = $sqldate.'{"id":"'.$row["id"].'","名称":"'.$row["工程名称"].'","检查部位":"'.$row["检查部位"].'","检查日期":"'.$row["检查日期"].'","检查人员":"'.$row["检查人员"].'","施工班组":"'.$row["施工班组"].'","组长姓名":"'.$row["组长名称"].'","联系电话":"'.$row["联系电话"].'","施工日期":"'.$row["施工日期"].'","工作描述":"'.$row["工作描述"].'"},';
		}
	}
	
	$jsonresult='success';
		$otherdate = '{"result":"'.$jsonresult.'",
					"count":"'.$count.'"
					}';
				
		$json = '['.$sqldate.$otherdate.']';
		
	echo $json;
//	echo 'ok';
	$conn->close();	
?>