<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>同欣易送检</title>
<style>
	
	td{
  font-size:13pt;
}

</style>
</head>
<body> 
              <table  border="1" align="center" cellpadding="0" cellspacing="0" >
                <tr align="center" bgcolor="#E8E8E8">                 
                  <td width="80">名称</td>
                  <td width="200">任务描述</td>
                  <td width="200">任务接收人</td>
                  <td width="80">栋号</td>
                  <td width="80">房号</td>
                  <td width="200">验收日期</td>                  
                  <td width="200">添加日期</td>
                </tr> 
                <?php
                	require("../conn.php");
					$sql = "select * from 分户验收  ";
					$result = $conn->query($sql);
					while($row = $result->fetch_assoc()) {
						
					
                ?>
                 <tr align="center" >                
                  <td width="80"><?php echo $row["名称"];?></td>
                  <td width="200"><?php echo $row["任务描述"];?></td>
                  <td width="200"><?php echo $row["任务接收人"];?></td>
                  <td width="80"><?php echo $row["栋号"];?></td>
                  <td width="80"><?php echo $row["房号"];?></td>
                  <td width="200"><?php echo $row["验收日期"];?></td>                 
                  <td width="200"><?php echo $row["添加日期"];?></td>
                </tr> 
                <?php
               		}
					$conn->close();	
                ?>
    </table>
</body>
</html>
