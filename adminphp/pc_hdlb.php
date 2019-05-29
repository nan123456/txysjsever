<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$hdmc=$_POST["hdmc"];
		$tsdq=$_POST["alltsdq"];
		$hdsj=$_POST["hdsj"];
		$hddd=$_POST["hddd"];
		$xclx=$_POST["xclx"];
		$hdjf=$_POST["hdjf"];
		$hdxz=$_POST["hdxz"];
		$hdnr=$_POST["hdnr"];
		$gsmc=$_POST["gsmc"];
		$gsdz=$_POST["gsdz"];
		$hwzx=$_POST["hwzx"];
		$bzhu=$_POST["bzhu"];
		
		$sql = "select * from pc_活动列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$jsonresult='数据表有重复的时间戳';
		} else {
			$sqli = "insert into pc_活动列表 (时间戳,活动名称,推送地区,活动时间,活动地点,行车路线,活动性质,活动内容,公司名称,公司地址,会务咨询,备注,添加时间,活动积分) values ('$sjc','$hdmc','$tsdq','$hdsj','$hddd','$xclx','$hdxz','$hdnr','$gsmc','$gsdz','$hwzx','$bzhu','$timestr','$hdjf')";
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
		$hdmc=$_POST["hdmc"];
		$tsdq=$_POST["alltsdq"];
		$hdsj=$_POST["hdsj"];
		$hddd=$_POST["hddd"];
		$xclx=$_POST["xclx"];
		$hdjf=$_POST["hdjf"];
		$hdxz=$_POST["hdxz"];
		$hdnr=$_POST["hdnr"];
		$gsmc=$_POST["gsmc"];
		$gsdz=$_POST["gsdz"];
		$hwzx=$_POST["hwzx"];
		$bzhu=$_POST["bzhu"];
		
		$sql = "select * from pc_活动列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			$sqli = "update pc_活动列表 set 活动名称='$hdmc',推送地区='$tsdq',活动时间='$hdsj',活动地点='$hddd',行车路线='$xclx',活动性质='$hdxz',活动内容='$hdnr',公司名称='$gsmc',公司地址='$gsdz',会务咨询='$hwzx',备注='$bzhu',活动积分='$hdjf'  where 时间戳='".$sjc."'";
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
		$sqli = "select * from pc_活动列表  where 时间戳='".$sjc."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$rowhddd = str_replace(PHP_EOL, '', $row["活动地点"]);
				$rowxclx = str_replace(PHP_EOL, '', $row["行车路线"]);
				$rowhdxz = str_replace(PHP_EOL, '', $row["活动性质"]);
				$rowhdnr = str_replace(PHP_EOL, '', $row["活动内容"]);				
				$rowbz = str_replace(PHP_EOL, '', $row["备注"]);
				

				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","活动名称":"'.$row["活动名称"].'","推送地区":"'.$row["推送地区"].'","活动时间":"'.$row["活动时间"].'","活动地点":"'.$rowhddd.'","行车路线":"'.$rowxclx.'","活动性质":"'.$rowhdxz.'","活动内容":"'.$rowhdnr.'","公司名称":"'.$row["公司名称"].'","公司地址":"'.$row["公司地址"].'","会务咨询":"'.$row["会务咨询"].'","备注":"'.$rowbz.'","添加时间":"'.$row["添加时间"].'","报名人数":"'.$row["报名人数"].'","活动积分":"'.$row["活动积分"].'"},';
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
		$sqli ="delete from pc_活动列表  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="app_select_two") {
		
		$qd=$_POST["qd"];
		//分割汉字，获取地区缩写
		$xqd=str_split($qd,3);
		$dq_char=getFirstCharter($xqd[0]).getFirstCharter($xqd[1]);
		
		$sqldate="";
		$sqli = "select * from pc_活动列表  where 推送地区  like '%".$dq_char."%' order by id desc ";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"时间戳":"'.$row["时间戳"].'","活动名称":"'.$row["活动名称"].'","活动时间":"'.$row["活动时间"].'","活动地点":"'.$row["活动地点"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='该地区无活动';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
		
	}elseif ($sqlflag=="selectname") {
		$hdnf=$_POST["hdnf"];
		
		$sqli = "select left(活动时间,4),活动名称  from pc_活动列表 where  活动时间=".$hdnf;
		//echo $sqli;
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"活动名称":"'.$row["活动名称"].'"},';
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
		
		
		$sqli = "select * from pc_活动列表  ";
		$sqldate="";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","时间戳":"'.$row["时间戳"].'","活动名称":"'.$row["活动名称"].'","推送地区":"'.$row["推送地区"].'","活动时间":"'.$row["活动时间"].'","活动地点":"'.$row["活动地点"].'","行车路线":"'.$row["行车路线"].'","活动性质":"'.$row["活动性质"].'","活动内容":"'.$row["活动内容"].'","公司名称":"'.$row["公司名称"].'","公司地址":"'.$row["公司地址"].'","会务咨询":"'.$row["会务咨询"].'","备注":"'.$row["备注"].'","添加时间":"'.$row["添加时间"].'","报名人数":"'.$row["报名人数"].'","活动积分":"'.$row["活动积分"].'"},';
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
	
	//获取中文字符拼音首字母
	function getFirstCharter($str){
		if(empty($str)){
			return '';
		}
		$fchar=ord($str{0});
		if($fchar>=ord('A')&&$fchar<=ord('z'))
			return strtoupper($str{0});
		$s1=iconv('UTF-8','gb2312',$str);
		$s2=iconv('gb2312','UTF-8',$s1);
		$s=$s2==$str?$s1:$str;
		$asc=ord($s{0})*256+ord($s{1})-65536;
		if($asc>=-20319&&$asc<=-20284) 
			return 'a';
		if($asc>=-20283&&$asc<=-19776) 
			return 'b';
		if($asc>=-19775&&$asc<=-19219) 
			return 'c';
		if($asc>=-19218&&$asc<=-18711) 
			return 'd';
		if($asc>=-18710&&$asc<=-18527) 
			return 'e';
		if($asc>=-18526&&$asc<=-18240) 
			return 'f';
		if($asc>=-18239&&$asc<=-17923) 
			return 'g';
		if($asc>=-17922&&$asc<=-17418) 
			return 'h';
		if($asc>=-17417&&$asc<=-16475) 
			return 'j';
		if($asc>=-16474&&$asc<=-16213) 
			return 'k';
		if($asc>=-16212&&$asc<=-15641) 
			return 'l';
		if($asc>=-15640&&$asc<=-15166) 
			return 'm';
		if($asc>=-15165&&$asc<=-14923) 
			return 'n';
		if($asc>=-14922&&$asc<=-14915) 
			return 'o';
		if($asc>=-14914&&$asc<=-14631) 
			return 'p';
		if($asc>=-14630&&$asc<=-14150) 
			return 'q';
		if($asc>=-14149&&$asc<=-14091) 
			return 'r';
		if($asc>=-14090&&$asc<=-13319) 
			return 's';
		if($asc>=-13318&&$asc<=-12839) 
			return 't';
		if($asc>=-12838&&$asc<=-12557) 
			return 'w';
		if($asc>=-12556&&$asc<=-11848) 
			return 'x';
		if($asc>=-11847&&$asc<=-11056) 
			return 'y';
		if($asc>=-11055&&$asc<=-10247) 
			return 'z';
		return null;
	}
		
?>