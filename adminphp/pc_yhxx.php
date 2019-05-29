<?php	
	require("../conn.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="app_select"){	
		$mobile=$_POST["mobile"];
		
		$sqldate="";
		$sqli = "select * from 用户信息  where 手机='".$mobile."'";
		$result = $conn->query($sqli);
		$count=mysqli_num_rows($result);
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$sqldate= $sqldate.'{"id":"'.$row["id"].'","账号":"'.$row["账号"].'","密码":"'.$row["密码"].'","邮箱":"'.$row["邮箱"].'","手机":"'.$row["手机"].'"},';
			}
			$jsonresult='success';
		} else {
			$jsonresult='数据表无该时间戳';
		}
		
		$otherdate = '{"result":"'.$jsonresult.'",
				"count":"'.$count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
	
	
	}elseif ($sqlflag=="delete") {
		//////////////////////// 删除一条记录/////////////////////////////
		$id=$_POST["id"];
		$sqli ="delete from 用户信息  where id='".$id."'";
		if ($conn->query($sqli) === TRUE) {
			$jsonresult='success';
		} else {
			$jsonresult='delete失败';
		}
		$json = '{"result":"'.$jsonresult.'"		
				}';
		//////////////////////// 删除一条记录/////////////////////////////
	
	}else {
		
	}	
	echo $json;
	$conn->close();
		
?>