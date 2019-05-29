<?php
	require("../conn.php");
	$sql = "select * from 分户验收  ";
	$result = $conn->query($sql);
	$count=mysqli_num_rows($result);
	if ($result->num_rows > 0) {
		// 输出每行数据
		while($row = $result->fetch_assoc()) {
			echo "<br> id: ". $row["id"]. "  名称: ". $row["名称"];
		}
	} else {
		echo "0 results";
	}
	
	
	
	$conn->close();	



?>