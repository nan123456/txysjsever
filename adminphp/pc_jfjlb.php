<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	//获取当前时间戳
	list($msec, $sec) = explode(' ', microtime());
	$msectime =  (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);	
	
	if($sqlflag=="insert"){	
		////////////////////////插入一条记录/////////////////////////////
		$jfsjc=$_POST["jfsjc"];
		$jfen=$_POST["jfen"];
		$cz=$_POST["cz"];
		$fz=$_POST["fz"];
		$sm=$_POST["sm"];
		
		$sql = "select * from pc_积分列表  where 时间戳='".$jfsjc."'";
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			if ($cz=="加") {
				$xjf=intval($jfen)+intval($fz);
			} else {
				$xjf=intval($jfen)-intval($fz);
			}			
			$sqli = "update pc_积分列表 set 积分='$xjf',修改时间='$timestr'  where 时间戳='".$jfsjc."'";
			if ($conn->query($sqli) === TRUE) {
				$jsonresult='update成功';
				$jfjlbsql = "select * from pc_积分记录表  where 时间戳='".$msectime."'";
				$jfjlbresult = $conn->query($jfjlbsql);
				if ($jfjlbresult->num_rows > 0) {
					$jsonresult=$jsonresult.'积分记录表有重复的时间戳';
				} else {
					$jfjlbsqli = "insert into pc_积分记录表 (时间戳,积分时间戳,操作,变化值,说明,时间) values ('$msectime','$jfsjc','$cz','$fz','$sm','$timestr')";
					if ($conn->query($jfjlbsqli) === TRUE) {
						$jsonresult=$jsonresult.'insertsuccess';
					} else {
						$jsonresult=$jsonresult.'insert失败';
					}
				}
				
			} else {
				$jsonresult=$jsonresult.'update失败';
			}
		} else {
			$jsonresult=$jsonresult.'积分列表无该时间戳';
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';		
		////////////////////////插入一条记录/////////////////////////////
	}elseif ($sqlflag=="update") {	
	
	}elseif ($sqlflag=="select") {		
		
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$sjc=$_POST["sjc"];
		$sqli ="delete from pc_积分记录表  where 时间戳='".$sjc."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	}elseif ($sqlflag=="app_selectall") {
		
	}else {
	
	}	
	echo $json;
	$conn->close();
	$headerpag="../admin/plus/jfgl.php";
	header("refresh:0;url=".$headerpag);
		
?>