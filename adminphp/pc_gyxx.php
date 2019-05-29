<?php
	require("../conn.php");
	$sqldate ="";
	$sql = "select * from pc_关于信息 ";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			$i=0;
			while($row = $result->fetch_assoc()) {
//				$sqldate= $sqldate.'{ "系统简介":"'.$row["系统简介"].'","主要功能":"'.$row["主要功能"].'"},';
				$data[$i]['系统简介'] = $row['系统简介'];
				$data[$i]['主要功能'] = $row['主要功能'];
				$i++;
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据调取失败';
		}
		
//		$otherdate = '{"result":"'.$jsonresult.'",
//				"count":"'.$count.'"
//				}';	
//		$json = '['.$sqldate.$otherdate.']';
		$jsondata = json_encode($data);
		echo $jsondata;
		$conn->close();
?>