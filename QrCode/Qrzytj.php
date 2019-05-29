<?php
	$ProjectId=$_GET["d"];
	$xmmc=$_GET["c"];	
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
		</style>
	</head>
	<body>
		<header class="mui-bar mui-bar-nav blue">		
			<h1 class="mui-title white"><strong>项目组名称</strong></h1>
		</header>
		<div class="mui-content">
			
			<div class="mui-content-padded" style="margin: 5px;">				
				<form id="ajaxform" class="mui-input-group">
					<input type="hidden" id="xmid" name="xmid" class="mui-input-clear" value="<?php echo $ProjectId;?>">
					<input type="hidden" id="xmmcjm" name="xmmcjm" class="mui-input-clear" value="<?php echo $xmmc;?>">
					<input type="hidden" id="xmmc" name="xmmc" class="mui-input-clear" value="">
					<div class="mui-input-row my_none">
						<label for="zysjc">时间戳：</label>
						<input id="zysjc" name="zysjc" type="text" class="mui-input-clear" required="required">
					</div>					
					<div class="mui-input-row">
						<label for="xming">姓名：</label>
						<input id="xming" name="xming" type="text" class="mui-input-clear" placeholder="姓名" value="" required="required">
					</div>	
					<div class="mui-input-row">
						<label for="zwu">职务：</label>
						<input id="zwu" name="zwu" type="text" class="mui-input-clear" placeholder="职务" value="" required="required">
					</div>	
					<div class="mui-input-row">
						<label for="sji">手机：</label>
						<input id="sji" name="sji" type="number" class="mui-input-clear" placeholder="手机" value="" required="required">
					</div>	
					<div class="mui-input-row">
						<label for="yxiang">邮箱：</label>
						<input id="yxiang" name="yxiang" type="email" class="mui-input-clear" placeholder="邮箱" value="" required="required">
					</div>		
					<div class="mui-button-row">						
						<button id="baoc" type="submit" class="mui-btn mui-btn-primary">保存</button>
					</div>					
				</form>
				<div class="title">
					<p>该处填写人员信息，成为本项目组组员。</p>	
				</div>		
			</div>
		</div>
	</body>
	<script src="../admin/js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="../admin/js/jquery.validate.min.js"></script>
	<script src="../admin/js/charCode.js" type="text/javascript" charset="utf-8"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var xmmcjm=kbt.decrypt($("#xmmcjm").val());
			$("#xmmc").val(xmmcjm);
			$("strong").text("【  "+xmmcjm+"组  】  组员添加");
			
			//自动填充当前时间戳
			var mytime = function() {
				var myDate=new Date();
				var mytime=myDate.getTime();
				$("#zysjc").val(mytime);				
			};
			mytime();
			
			$("#ajaxform").validate({            
            submitHandler:function(form) {
            	$.ajax({
            		url:'../my_team/zytj.php',
            		type:'post',
            		dataType:'json',
            		data:$("#ajaxform").serialize(),
            		success:function(data){
            			if (data.result=='success') {
            				alert("保存成功！");
            				window.location.reload();
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