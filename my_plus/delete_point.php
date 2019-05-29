<?php
    require("../conn.php");
    $bhao = $_POST['bhao'];
    $sjc = $_POST['sjc'];
    
    $sql = 'DELETE FROM `测点列表` WHERE 编号 = "'.$bhao.'" AND 时间戳 = "'.$sjc.'"';
    $result = $conn->query($sql);
    if($result){
    	$json = '{"result":"删除成功！"}';
    	echo $json;
    }else{
    	$json = '{"result":"删除失败"}';
    	echo $json;
    }
    $conn->close();
?>