<?php
	require("conn.php");
	
	$fhid=$_POST["fhid"];	
	$rwms=$_POST["rwms"];
	$rwjsr=$_POST["rwjsr"];
	$dhao=$_POST["dhao"];
	$fhao=$_POST["fhao"];
	$ysrq=$_POST["ysrq"];
	$mchen=$dhao.$fhao;
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($fhid){
		$sql = "select * from 分户验收 where id='".$fhid."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {			
			$sqli = "update 分户验收 set 名称='$mchen',任务描述='$rwms', 任务接收人='$rwjsr',栋号='$dhao',房号='$fhao',验收日期='$ysrq',添加日期='$timestr' where id='".$fhid."'";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='error';
			}
		} else {
			$jsonresult='1';			
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';
		echo $json;
		$conn->close();
	
	}
?>