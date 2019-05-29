<?php
	require ("../conn.php");
//	资料知识类别
	$zlkmc=$_POST["zlkmc"];
	$xmid=$_POST["xmid"];
//	$zlkmc='质量验收资料';
//	$xmid='2147483647';
	$sqldate="";
//	$sql = "select * from 原始记录  where 卡片状态 = '已保存'  ";
	$sql = "select * from 原始记录  where 卡片状态 = '已保存' and 工程id='".$xmid."' and 资料库名称='".$zlkmc."' ORDER BY 时间戳 DESC";
	$result = $conn->query($sql);
	$class = mysqli_num_rows($result); 
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		 $sqldate= $sqldate.'{"id":"'. $row["id"].'","表格编号":"'. $row["表格编号"].'","表格名称":"'. $row["表格名称"].'","验收部位":"'. $row["验收部位"].'","验收日期":"'. $row["验收日期"].'","时间戳":"'. $row["时间戳"].'"},';
		}
	} else { 
	} 
	$jsonresult = 'success';
	$otherdate = '{"result":"'.$jsonresult.'",
					"count":"'.$class.'",
					"SQL":"'.$sql.'"
				}';
	$json = '['.$sqldate.$otherdate.']';
	echo $json;
	$conn->close();
?>