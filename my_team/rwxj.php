<?php
	require("../conn.php");
	
	$xmid=$_POST["xmid"];
	$xmmc=$_POST["xmmc"];
	$rwmc=$_POST["rwmc"];
	$rwzyx=$_POST["rwzyx"];
	$sjc=$_POST["sjc"];
	$rwlb=$_POST["rwlb"];
	$rwms=$_POST["rwms"];
	$rwcjr=$_POST["rwcjr"];	
	$rwjsr=$_POST["rwjsr"];
	$rwjsrhm=$_POST["rwjsrhm"];
	$bwei=$_POST["bwei"];	
	$jzrq=$_POST["jzrq"];
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($xmid){
		$sql = "select * from 任务 where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='1';
		} else {
			$sqli = "insert into 任务 (xmid,项目名称,任务名称,时间戳, 任务重要性,任务类别,任务描述, 任务创建人,任务接收人,任务接收人号码,部位,截止日期,新建日期) values ('$xmid','$xmmc','$rwmc','$sjc','$rwzyx','$rwlb','$rwms','$rwcjr','$rwjsr','$rwjsrhm','$bwei','$jzrq','$timestr')";
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