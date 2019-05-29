<?php
	require("conn.php");
	
	$xmid=$_POST["xmid"];
	$rwlb=$_POST["rwlb"];
	$rwms=$_POST["rwms"];
	$rwjsr=$_POST["rwjsr"];
	$dhao=$_POST["dhao"];
	$fhao=$_POST["fhao"];
	$ysrq=$_POST["ysrq"];
	$mchen=$dhao.$fhao;
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	list($msec, $sec) = explode(' ', microtime());
	$msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);
					
	if($xmid){
		$sql = "select * from 分户验收 where 时间戳='".$msectime."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='1';
		} else {
			$sqli = "insert into 分户验收 (xmid, 名称,任务描述, 任务接收人,栋号,房号,验收日期,添加日期,时间戳) values ('$xmid','$mchen','$rwms','$rwjsr','$dhao','$fhao','$ysrq','$timestr','$msectime')";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='error';
			}
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';
		echo $json;
		$conn->close();
	
	}
?>