<?php
	require("../conn.php");
	
	$xmid=$_POST["xmid"];
	$xmmc=$_POST["xmmc"];
	$xming=$_POST["xming"];
	$zwu=$_POST["zwu"];
	$sji=$_POST["sji"];
	$yxiang=$_POST["yxiang"];
	$zysjc=$_POST["zysjc"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($xmid){
		$sql = "select * from 组员信息 where 时间戳='".$zysjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='1';
		} else {
			$sqli = "insert into 组员信息 (时间戳,姓名,职务, 手机,邮箱, 项目id,项目名称,添加时间) values ('$zysjc','$xming','$zwu','$sji','$yxiang','$xmid','$xmmc','$timestr')";
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