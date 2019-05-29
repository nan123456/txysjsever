<?php
   require ("../conn.php");
   $sjc = $_POST["sjc"];
   //$gclb = $_POST["gclb"];
   //$sjc = 1491565303352;
   //$gclb = "混凝土结构工程";
   $sqldate = "";

	  $sql = "select * from  工程质量检测表 a,原始记录新建测点 b where a.检查内容=b.测点类别  and b.时间戳='" . $sjc . "' order by 检查内容 desc";

  $result = $conn -> query($sql);
  $count = mysqli_num_rows($result);
  if ($result -> num_rows > 0) {
	  while ($row = $result -> fetch_assoc()) {
		
			  $sqldate = $sqldate . '{"id":"' . $row["id"] . '","测点类型":"' . $row["测点类别"] . '","编号":"' . $row["测点编号"] . '","实测值":"' . $row["测点实测值"] . '","说明":"' . $row["说明"] . '","pageX":"' . $row["pageX"] . '","pageY":"' . $row["pageY"] . '","评判标准":"' . $row["评判标准"] . '"},';
	  }
  }
  //echo $sqldate;
  $jsonresult = 'success';
  $otherdate = '{"result":"' . $jsonresult . '",
				  "count":"' . $count . '"
				  }';

  $json = '[' . $sqldate . $otherdate . ']';
  echo $json;
  $conn -> close();
?>