<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$yhsj=$_POST["yhsj"];
		$xxmc=$_POST["xxmc"];
		$xxnr=$_POST["xxnr"];
		
		//判断$yhsj是一个号码还是多个号码
		$count=strpos($yhsj,",");
		if ($count>0) {
			//多个号码，用“，”为特殊字符，进行分割，放在$fgsj数组中
			
			$fgsj=explode(',',$yhsj);
			for ($i=0; $i < count($fgsj); $i++) { 
				$xsjc=$sjc+$i;
				$xyhsj=$fgsj[$i];
				$sql = "select * from pc_消息列表  where 时间戳='".$xsjc."'";
				$result = $conn->query($sql);
				if ($result->num_rows > 0) {
					$jsonresult='数据表有重复的时间戳';
				} else {
					$sqli = "insert into pc_消息列表 (时间戳,用户手机,消息名称,消息内容,添加时间) values ('$xsjc','$xyhsj','$xxmc','$xxnr','$timestr')";
					if ($conn->query($sqli) === TRUE) {
						$jsonresult='success';
					} else {
						$jsonresult='insert失败';
					}
				}
			}
		} else {			
			$sql = "select * from pc_消息列表  where 时间戳='".$sjc."'";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
				$jsonresult='数据表有重复的时间戳';
			} else {
				$sqli = "insert into pc_消息列表 (时间戳,用户手机,消息名称,消息内容,添加时间) values ('$sjc','$yhsj','$xxmc','$xxnr','$timestr')";
				if ($conn->query($sqli) === TRUE) {
					$jsonresult='success';
				} else {
					$jsonresult='insert失败';
				}
			}
		}	
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////插入一条记录/////////////////////////////
	}elseif ($sqlflag=="update") {	
		////////////////////////更新一条记录/////////////////////////////
		
		$sjc=$_POST["sjc"];
		$yhsj=$_POST["yhsj"];
		$xxmc=$_POST["xxmc"];
		$xxnr=$_POST["xxnr"];
		
		$sql = "select * from pc_消息列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_消息列表 set 用户手机='$yhsj',消息名称='$xxmc',消息内容='$xxnr'  where 时间戳='".$sjc."'";
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
		$sqli = "select * from pc_消息列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","用户手机":"'.$row["用户手机"].'","消息名称":"'.$row["消息名称"].'","消息内容":"'.$row["消息内容"].'","添加时间":"'.$row["添加时间"].'","消息状态":"'.$row["消息状态"].'"},';
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
		$sqli ="delete from pc_消息列表  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="app_selectcount") {
		$mobile=$_POST["mobile"];
		$xxzt="未读";
		$sc="未删";
		$sql = "select * from pc_消息列表  where 用户手机='".$mobile."' and 消息状态='".$xxzt."' and 删除='".$sc."'";
		$result = $conn->query($sql);
		$count=mysqli_num_rows($result);		
		$json = '{"result":"'.$count.'"		
				}';	
				
				
	}elseif ($sqlflag=="app_selectall") {
		$mobile=$_POST["mobile"];
		$sc="未删";
		
		$sql = "select * from pc_消息列表  where 用户手机='".$mobile."' and 删除='".$sc."' order by id desc";
		$sqldate="";
		$result = $conn->query($sql);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","用户手机":"'.$row["用户手机"].'","消息名称":"'.$row["消息名称"].'","消息内容":"'.$row["消息内容"].'","添加时间":"'.$row["添加时间"].'","消息状态":"'.$row["消息状态"].'","删除":"'.$row["删除"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';		
	}elseif ($sqlflag=="app_delete") {
		$sjc=$_POST["sjc"];	
		$sc="已删";
		
		$sql = "select * from pc_消息列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_消息列表 set 删除='$sc'  where 时间戳='".$sjc."'";
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
	}elseif ($sqlflag=="app_ydu") {
		$sjc=$_POST["sjc"];	
		$xxzt="已读";
		
		$sql = "select * from pc_消息列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_消息列表 set 消息状态='$xxzt'  where 时间戳='".$sjc."'";
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
	}else {
		//////////////////////// 查询所有记录/////////////////////////////
		
		$sqli = "select * from pc_消息列表  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","用户手机":"'.$row["用户手机"].'","消息名称":"'.$row["消息名称"].'","消息内容":"'.$row["消息内容"].'","添加时间":"'.$row["添加时间"].'"},';
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