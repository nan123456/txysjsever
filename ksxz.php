<?php
	require("conn.php");
	
	$xmid=$_POST["xmid"];
	$rwlb=$_POST["rwlb"];
	$rwms=$_POST["rwms"];
	$rwjsr=$_POST["rwjsr"];
	$ysrq=$_POST["ysrq"];
	$dhao=$_POST["dhao"];
	
	$lczs=$_POST["lczs"];
	$mchs=$_POST["mchs"];
	$qslc=$_POST["qslc"];
	
	if($xmid){	
	for ($i=$qslc; $i < $lczs+1; $i++) {
		for ($j=1; $j < $mchs+1; $j++) {
			$mchen=$dhao.$i.$j;	
			$fhao=$i.$j;			
			//获取当前时间
			$time=getdate();
			$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];	
			
			list($msec, $sec) = explode(' ', microtime());
			$msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);
	
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
		}
	}	
		
	$json = '{"result":"'.$jsonresult.'"		
			}';
	echo $json;
	$conn->close();	
	}
?>