<?php
	require("../conn.php");
	$sjc=$_GET["c"];
	$s=$_GET["s"];
	$m=$_GET["m"];
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>同欣易送检</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link rel="stylesheet" href="mui.min.css">		
		<style>
			html,body {
				background-color: #efeff4;
			}
			.title{
				margin: 20px 5px 10px;
				color: #6d6d72;
				font-size: 15px;
			}	
			.mui-content,input,select,textarea,option,p,label{
				font-size: 0.9em;
			}
			form{
				margin-top: 5px;
			}
			.my_color_blue{
				color:#0000FF;
			}	
			#done.mui-disabled{
				color: gray;
			}
			.blue{
				background-color: #007AFF;
			}
			.white{
				color: white;
			}
			.my_none{
				display: none !important;
			}			
			#hdnr{
				padding: 10px;	
				text-indent:2em;			
			}			
		</style>
	</head>
	<body>
		<header class="mui-bar mui-bar-nav blue">		
			<h1 class="mui-title white"><strong>活动报名</strong></h1>
		</header>
		<div class="mui-content">
			<?php
					$sql = "select * from pc_活动列表  where 时间戳='".$sjc."'";
					$result = $conn->query($sql);
					while($row = $result->fetch_assoc()) {
			?>
			<div class="mui-content-padded" style="margin: 5px;">
				
				<form class="mui-input-group">
					<input type="hidden" id="s" class="mui-input-clear" value="<?php echo $s;?>">
					<input type="hidden" id="m" class="mui-input-clear" value="<?php echo $m;?>">
					<div class="mui-input-row">
						<label>活动名称：</label>
						<input type="text" class="mui-input-clear" placeholder="活动名称" readonly="readonly" value="<?php echo $row["活动名称"];?>">
					</div>
					<div class="mui-input-row">
						<label>活动时间：</label>
						<input type="text" class="mui-input-clear" placeholder="活动时间" readonly="readonly" value="<?php echo $row["活动时间"];?>">
					</div>	
					<div class="mui-input-row">
						<label>行车路线：</label>
						<input type="text" class="mui-input-clear" placeholder="行车路线" readonly="readonly" value="<?php echo $row["行车路线"];?>">
					</div>	
					<div class="mui-input-row">
						<label>活动性质：</label>
						<input type="text" class="mui-input-clear" placeholder="活动性质" readonly="readonly" value="<?php echo $row["活动性质"];?>">
					</div>
					<div class="mui-button-row">						
						<button id="bu_hdnr" type="button" class="mui-btn mui-btn-primary">活动内容    ▼▼</button>
					</div>
					<p id="hdnr" class="my_none"><?php echo $row["活动内容"];?></p>			
				</form>
				<form id="ajaxform" class="mui-input-group">
					<div class="mui-input-row my_none">
						<label for="sjc">时间戳：</label>
						<input id="sjc" name="sjc" type="text" class="mui-input-clear" required="required">
						<input id="hdsjc" name="hdsjc" type="text" class="mui-input-clear" value="<?php echo $sjc;?>">
						<input id="hdmc" name="hdmc" type="text" class="mui-input-clear" value="<?php echo $row["活动名称"];?>">
						<input id="bmrs" name="bmrs" type="text" class="mui-input-clear" value="<?php echo $row["报名人数"];?>">
					</div>
					<div class="form-group my_none">
						<label for="sqlflag" class="control-label col-lg-2">sqlflag：</label>
						<div class="col-lg-6">
							<input id="sqlflag" name="sqlflag" class="form-control"  size="16" type="text" value="insert" />
						</div>
					</div>
					<div class="mui-input-row">
						<label for="xming">姓名：</label>
						<input id="xming" name="xming" type="text" class="mui-input-clear" placeholder="姓名" required="required">
					</div>
					<div class="mui-input-row">
						<label for="sji">手机：</label>
						<input id="sji" name="sji" type="number" class="mui-input-clear" placeholder="手机" value="" required="required">
					</div>	
					<div class="mui-input-row">
						<label for="dwmc">单位名称：</label>
						<input id="dwmc" name="dwmc" type="text" class="mui-input-clear" placeholder="单位名称" value="">
					</div>
					<div class="mui-button-row">						
						<button id="baom" type="submit" class="mui-btn mui-btn-primary">报名</button>
					</div>					
				</form>
				<div class="title">
					<p class="my_color_blue">关于我们：</p>
					<p>公司名称:  <?php echo $row["公司名称"];?></p>
					<p>公司地址:  <?php echo $row["公司地址"];?></p>
					<p>会务咨询:  <?php echo $row["会务咨询"];?></p>	
					<p>备注:  <?php echo $row["备注"];?></p>	
				</div>			
			</div>
			<?php
				}
				$conn->close();
			?>
			
		</div>
	</body>
	<script src="../admin/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="../admin/js/jquery.validate.min.js"></script>
	<script src="../admin/js/charCode.js" type="text/javascript" charset="utf-8"></script>	
	<script type="text/javascript">
		$(document).ready(function(){
			//var encode = kbt.decrypt(code);	//解密
			var $sjs=kbt.decrypt($("#s").val());
        	var $sjm=kbt.decrypt($("#m").val());
        	var times=Date.parse($sjs);
        	var timem=Date.parse($sjm);
        	var nowtime=new Date();
        	if (nowtime<times || nowtime>timem) {
        		alert("对不起，现在不在规定报名时间内！");
        		$("#baom").attr("disabled","disabled");
        	}
        	
			//自动填充当前时间戳
			var mytime = function() {
				var myDate=new Date();
				var mytime=myDate.getTime();
				$("#sjc").val(mytime);				
			};
			mytime();
			
			$("#bu_hdnr").bind("click",function(){
				if ($("#hdnr").hasClass("my_none")) {
					$("#hdnr").removeClass("my_none");
					$("#bu_hdnr").text("活动内容    ▲▲");
				}else{	
					$("#hdnr").addClass("my_none");	
					$("#bu_hdnr").text("活动内容    ▼▼");
				}
				
			});
			
			$("#ajaxform").validate({
            
            submitHandler:function(form) {
            	$.ajax({
            		url:'../adminphp/pc_bmqd.php',
            		type:'post',
            		dataType:'json',
            		data:$("#ajaxform").serialize(),
            		success:function(data){
            			if (data.result=='success') {
            				alert("报名成功，欢迎您的参与！");
            				$("#sjc").val(mytime);
            				$("#xming").val("");
            				$("#sji").val(mytime);
            				$("#dwmc").val(mytime);
            				mytime();
            			} else{
            				var severresult=data.result;
            				alert(severresult);
            			}         			 			
            			
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type);
            		}
            		
            	});
            	
            	
            }
        });
		
		});
	</script>
</html>