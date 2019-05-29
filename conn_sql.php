<?php
	//php连接sql2005数据库
	$serverName = "112.74.34.150:8081";
	$connectionInfo = array( "Database"=>"Tongx_web", "UID"=>"sa", "PWD"=>"sa123456");
	$conn = sqlsrv_connect( $serverName, $connectionInfo );
	if( $conn === false ) {
		die( print_r( sqlsrv_errors(), true));
	}else{
		echo "successfully to sql";
	}
	
//	$sql = "select * from Projects   where ProjectId='00a134ca-e015-475e-b693-75d593a9d465' ";
//	$result = sqlsrv_query($conn,$sql);
//
//	while($row = sqlsrv_fetch_array($result))
//	{
//		echo $row["Name"];
//	}
//	sqlsrv_close($conn); 	
?> 