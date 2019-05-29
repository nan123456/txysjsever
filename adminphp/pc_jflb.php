<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$xming=$_POST["xming"];
		$sji=$_POST["sji"];
		$jfen=$_POST["jfen"];		
		$bzhu=$_POST["bzhu"];
		
		$sql = "select * from pc_积分列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='数据表有重复的时间戳';
		} else {
			$sqli = "insert into pc_积分列表 (时间戳,姓名,手机,积分,备注,添加时间) values ('$sjc','$xming','$sji','$jfen','$bzhu','$timestr')";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='insert失败';
			}
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////插入一条记录/////////////////////////////
	}elseif ($sqlflag=="update") {	
		////////////////////////更新一条记录/////////////////////////////
		
		
		$sjc=$_POST["sjc"];
		$xming=$_POST["xming"];
		$sji=$_POST["sji"];
		$jfen=$_POST["jfen"];		
		$bzhu=$_POST["bzhu"];
		
		$sql = "select * from pc_积分列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_积分列表 set 姓名='$xming',手机='$sji',积分='$jfen',备注='$bzhu',修改时间='$timestr'  where 时间戳='".$sjc."'";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='success';
			} else {
				$jsonresult='update失败';
			}
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////更新一条记录/////////////////////////////
	
		
		}elseif ($sqlflag=="select") {
		////////////////////////查询一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		
		$sqldate="";
		$sqli = "select * from pc_积分列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","姓名":"'.$row["姓名"].'","手机":"'.$row["手机"].'","积分":"'.$row["积分"].'","备注":"'.$row["备注"].'","添加时间":"'.$row["添加时间"].'","修改时间":"'.$row["修改时间"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		////////////////////////查询一条记录/////////////////////////////
		
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sqli ="delete from pc_积分列表  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="app_select") {
		$mobile=$_POST["mobile"];
		
		$sqldate="";
		$sqli = "select * from pc_积分列表  where 手机='".$mobile."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","姓名":"'.$row["姓名"].'","手机":"'.$row["手机"].'","积分":"'.$row["积分"].'","备注":"'.$row["备注"].'","添加时间":"'.$row["添加时间"].'","修改时间":"'.$row["修改时间"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		
		
	}else {
		//////////////////////// 查询所有记录/////////////////////////////
		
		
		$sqli = "select * from pc_积分列表  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","姓名":"'.$row["姓名"].'","手机":"'.$row["手机"].'","积分":"'.$row["积分"].'","备注":"'.$row["备注"].'","添加时间":"'.$row["添加时间"].'","修改时间":"'.$row["修改时间"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		//////////////////////// 查询所有记录/////////////////////////////
		}	
	echo $json;
	$conn->close();
		
?>