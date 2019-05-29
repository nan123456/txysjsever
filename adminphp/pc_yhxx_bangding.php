<?php	
	require("../conn_sql.php");	
	$sqlflag=$_POST["sqlflag"];	
	
	$time=getdate();
	$timestr=$time['year']."-".$time['mon']."-".$time['mday']."/".$time['hours'].":".$time['minutes'].":".$time['seconds'];
	
	if($sqlflag=="bangding"){	
		$gcmcValue=$_POST["gcmcValue"];
		$mobileValue=$_POST["mobileValue"];
		
		$sql = "select * from Projects  where ProjectId='".$gcmcValue."'";
		$result = sqlsrv_query($conn,$sql);
		$num = -sqlsrv_rows_affected( $result );
		if ($num > 0) {			
			$sqli = "update Projects set Mobile='$mobileValue' where ProjectId='".$gcmcValue."'";
			$stmt = sqlsrv_query($conn,$sqli);
			$jsonresult='success';
		} else {
			$jsonresult='1';			
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';
	}else if ($sqlflag=="jiebang") {
		$gcmcValue=$_POST["gcmcValue"];
		
		$sql = "select * from Projects  where ProjectId='".$gcmcValue."'";
		$result = sqlsrv_query($conn,$sql);
		$num = -sqlsrv_rows_affected( $result );
		if ($num > 0) {			
			$sqli = "update Projects set Mobile='' where ProjectId='".$gcmcValue."'";
			$stmt = sqlsrv_query($conn,$sqli);
			$jsonresult='success';
		} else {
			$jsonresult='1';			
		}
		
		$json = '{"result":"'.$jsonresult.'"		
				}';
	}else if ($sqlflag=="gcxx") {
		$sqldate="";
		$sqli = "select * from Projects";
		$result = sqlsrv_query($conn,$sqli);
		$row_count = -sqlsrv_rows_affected( $result );
		while($row = sqlsrv_fetch_array($result)) {
			$zmName=iconv('GB2312', 'UTF-8', $row["Name"]);
			$sqldate= $sqldate.'{"Name":"'.$zmName.'","ProjectId":"'.$row["ProjectId"].'"},';
		}
		$jsonresult='success';
		$otherdate = '{"result":"'.$jsonresult.'",
						"count":"'.$row_count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
	}else if ($sqlflag=="gcxxMobile") {
		$mobile=$_POST["mobile"];
		$sqldate="";
		$sqli = "select * from Projects where Mobile='".$mobile."'";
		$result = sqlsrv_query($conn,$sqli);
		$row_count = -sqlsrv_rows_affected( $result );
		while($row = sqlsrv_fetch_array($result)) {
			$zmName=iconv('GB2312', 'UTF-8', $row["Name"]);
			$sqldate= $sqldate.'{"Name":"'.$zmName.'","ProjectId":"'.$row["ProjectId"].'"},';
		}
		$jsonresult='success';
		$otherdate = '{"result":"'.$jsonresult.'",
						"count":"'.$row_count.'"
				}';	
		$json = '['.$sqldate.$otherdate.']';
	}else {
		
	}	
	echo $json;
	sqlsrv_close($conn);	
?>