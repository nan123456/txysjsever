<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录，报名/////////////////////////////
		$sjc=$_POST["sjc"];
		
		$hdsjc=$_POST["hdsjc"];
		$hdmc=$_POST["hdmc"];
		
		$xming=$_POST["xming"];
		$sji=$_POST["sji"];
		$dwmc=$_POST["dwmc"];
		
		$ybmrs=$_POST["bmrs"];
		$xbmrs=$ybmrs+1;
		
		$sql = "select * from pc_报名_签到  where 活动时间戳='".$hdsjc."' and 手机='".$sji."' ";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='对不起，该号码已经在数据库中';
		} else {
			$sqli = "insert into pc_报名_签到 (时间戳,活动时间戳,活动名称,姓名,手机,单位名称,添加时间) values ('$sjc','$hdsjc','$hdmc','$xming','$sji','$dwmc','$timestr')";
			if ($conn->query($sqli) === TRUE) {
				$sqlihd = "update pc_活动列表  set 报名人数='$xbmrs' where 时间戳='".$hdsjc."'";
				if ($conn->query($sqlihd) === TRUE) {
					$jsonresult='success';
				} else {
					$jsonresult='update pc_活动列表 失败';
				}			
			} else {
				$jsonresult='insert into pc_报名_签到 失败';
			}
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////插入一条记录/////////////////////////////
	}elseif ($sqlflag=="update") {	
		////////////////////////更新一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		
		$xming=$_POST["xming"];
		$qdzt="已签到";
		$hdjf=$_POST["hdjf"];
			
		$sji=$_POST["sji"];
		$wqd="未签到";
		$sql = "select * from pc_报名_签到  where 时间戳='".$sjc."' and 签到状态='".$wqd."' ";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_报名_签到 set 签到状态='$qdzt',获得积分='$hdjf',签到时间='$timestr' where 时间戳='".$sjc."'";
			if ($conn->query($sqli) === TRUE) {
				$sqljf = "select * from pc_积分列表  where 手机='".$sji."'";
				$resultjf = $conn->query($sqljf);				
				if ($resultjf->num_rows > 0) {
					while($row = $resultjf->fetch_assoc()) {
						$yjf=$row["积分"];
					}
					$xjf=$yjf+$hdjf;
					$sqlijf = "update pc_积分列表 set 积分='$xjf',修改时间='$timestr' where 手机='".$sji."'";
					if ($conn->query($sqlijf) === TRUE) {
						$jsonresult='success';
					}else {
						$jsonresult='update pc_积分列表 失败';
					}
				}else {
					$bzhu="记录来源，活动签到自动生成";
					list($msec, $sec) = explode(' ', microtime());
					$msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);
					$sqlijf = "insert into pc_积分列表  (时间戳,姓名,手机,积分,备注,添加时间) values ('$msectime','$xming','$sji','$hdjf','$bzhu','$timestr')";
					if ($conn->query($sqlijf) === TRUE) {
						$jsonresult='success';
					}else {
						$jsonresult='insert into pc_积分列表 失败';
					}
				}
				
			} else {
				$jsonresult='update pc_报名_签到 失败';
			}
		} else {
			$jsonresult='对不起，您未报名！';
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////更新一条记录/////////////////////////////
	}elseif ($sqlflag=="select") {
		////////////////////////查询一条记录/////////////////////////////
		$sji=$_POST["sji"];
		$hdsjc=$_POST["hdsjc"];
		
		$sqldate="";
		$sqli = "select * from pc_报名_签到  where 活动时间戳='".$hdsjc."' and 手机='".$sji."' ";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","活动时间戳":"'.$row["活动时间戳"].'","活动名称":"'.$row["活动名称"].'","姓名":"'.$row["姓名"].'","手机":"'.$row["手机"].'","单位名称":"'.$row["单位名称"].'","添加时间":"'.$row["添加时间"].'","签到状态":"'.$row["签到状态"].'","获得积分":"'.$row["获得积分"].'","签到时间":"'.$row["签到时间"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='对不起，您未报名';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		////////////////////////查询一条记录/////////////////////////////
		
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sqli ="delete from pc_报名_签到  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}else {
		//////////////////////// 查询所有记录/////////////////////////////
		$sqli = "select * from pc_报名_签到  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","活动时间戳":"'.$row["活动时间戳"].'","活动名称":"'.$row["活动名称"].'","姓名":"'.$row["姓名"].'","手机":"'.$row["手机"].'","单位名称":"'.$row["单位名称"].'","添加时间":"'.$row["添加时间"].'","签到状态":"'.$row["签到状态"].'","获得积分":"'.$row["获得积分"].'","签到时间":"'.$row["签到时间"].'"},';
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