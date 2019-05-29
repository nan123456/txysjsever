<?php
	require("../conn.php");
//	$divisionType = $_POST["divisionType"];
	$constructionUnits = $_POST["constructionUnits"]; 
	$supervision = $_POST["supervision"];
	$timestamp = $_POST["timestamp"];
	$kpzt="未删除";
//	echo "$applicationTime";
//	$csbh = $_POST["csbh"];
//	$cs = $_POST["cs"];
//	$csmc = $_POST["csmc"];
	$bgmc = $_POST["bgmc"];
	$prospectingUnits = $_POST["prospectingUnits"];
	$applicationTime = $_POST["applicationTime"];
	$sql = "insert into 原始记录 (时间戳,资料库,表格名称,表格编号,验收部位,验收日期,卡片状态) values ('$timestamp','$constructionUnits','$bgmc','$supervision','$prospectingUnits','$applicationTime','$kpzt')";
	
	if($conn->query($sql)){
		$result = 'success';
	}else{
		$result = 'fail';
	}
	
	$json = '{
		"result":"'.$result.'"
	}';
	
	echo $json;
	$conn->close();
?>