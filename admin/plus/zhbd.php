<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="#" type="../image/png">
  <title>同欣易送检后台管理系统</title>
  <!--dashboard calendar-->
  <link href="../css/clndr.css" rel="stylesheet">
  	<!--multi-select-->
    <link rel="stylesheet" type="text/css" href="../js/jquery-multi-select/css/multi-select.css" />
  <!--common-->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">  
  
  <!--data table-->
  <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />
  
  <!--datetimepicker css-->
  <link rel="stylesheet" type="text/css" href="../js/bootstrap-datetimepicker/css/datetimepicker-custom.css" />
  
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
    <style type="text/css">
  	.myhidden{
  		border:none;
  	}
  </style>
  
  
</head>
<body class="sticky-header">
<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">
        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="../index.php"><img src="../images/logo.png" alt=""></a>
        </div>
        <div class="logo-icon text-center">
            <a href="../index.php"><img src="../images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">
            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="menu-list"><a href="#"><i class="fa fa-flag"></i> <span>活动</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="../index.php">新建活动</a></li>
                        <li><a href="hdgl.php">活动管理</a></li>  
                        <li><a href="bmqd.php">报名签到管理</a></li>                                     
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>通告</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="tgxj.php">新建通告</a></li>
                        <li><a href="tggl.php">通告管理</a></li>                       
                    </ul>
                </li>
                <li><a href="hbgl.php"><i class="fa fa-android"></i> <span>伙伴管理</span></a></li>
                <li><a href="jfgl.php"><i class="fa fa-bullhorn"></i> <span>积分管理</span></a></li>                
                <li><a href="xxts.php"><i class="fa fa-bar-chart-o"></i> <span>消息推送</span></a></li>
                <li class="menu-list"><a href=""><i class="fa fa-book"></i> <span>知识</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zsxj.php">送检知识新建</a></li>
                        <li><a href="zsgl.php">送检知识管理</a></li>
                        <li><a href="zlzsxj.php">资料知识新建</a></li>
                        <li><a href="zlzsgl.php">资料知识管理</a></li>                 
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-comments"></i> <span>小组</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zyzwzd.php">组员职务字段</a></li>
                       
                    </ul>
                </li>
               <li class="menu-list nav-active"><a href=""><i class="fa fa-th"></i> <span>系统管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="zhgl.php">账号管理</a></li>
                        <li class="active"><a href="zhbd.php">工程绑定/解绑</a></li>
                        <li><a href = "gyxx.php">关于信息修改</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-twitter"></i> <span>营销管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="#">上门拜访</a></li>
                        <li><a href="#">销售跟进</a></li>
                        <li><a href="#">服务追踪</a></li>
                        <li><a href="#">...</a></li>
                    </ul>
                </li>
            </ul>
            <!--sidebar nav end-->
        </div>
    </div>
    <!-- left side end-->    
    <!-- main content start-->
    <div class="main-content" >
        <!-- header section start-->
        <div class="header-section">
            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->           
            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">                   
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">                          
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="#"><i class="fa fa-sign-out"></i> 退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--notification menu end -->
        </div>
        <!-- header section end-->

        
        <!--body wrapper start-->
        <div class="wrapper">
        		<div class="row">    
             

				<div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                        	手机绑定工程
                            <span class="tools pull-right">
                                <a id="jfxjpanel" class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                            </span>
                        </header>
                        <div id="jfxjpanelbody" class="panel-body">
                        	<form id="mobileBdform" class="form-horizontal cmxform">
                                <div class="form-group ">
                                    <label for="gcmcBd" class="control-label col-lg-2">工程名称：</label>
                                    <div class="col-lg-9">
                                        <!--<input id="gcmcBd" name="gcmcBd" class="form-control"  size="16" type="text" value="" />-->
                                      <select id="gcmc" name="gcmc" class="form-control m-bot15">																				
																				<?php 
																	require("../../conn_sql.php"); 
                        					$sql = "select * from Projects";
                        					$result = sqlsrv_query($conn,$sql);
                        					while($row = sqlsrv_fetch_array($result)) {                        					
                        				?>
                        				<option value ="<?php echo iconv('GB2312', 'UTF-8', $row["ProjectId"]);?>" ><?php echo iconv('GB2312', 'UTF-8', $row["Name"]);?></option>
                        				
                        				<?php
																	}
										sqlsrv_close($conn); 
																?>
																				
																			</select>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="mobileBd" class="control-label col-lg-2">手机：</label>
                                    <div class="col-lg-4">
                                        <input id="mobileBd" name="mobileBd" class="form-control"  size="16" type="number" value="" />
                                    </div> 
                                </div>
                            	<div class="form-group">
                                	<div class="col-lg-offset-10 col-lg-5">
                                		<button id="bdSave" type="submit" class="btn btn-default btn-info">绑&nbsp;&nbsp;&nbsp;&nbsp;定</button>
                                	</div>
                                </div>
                            </form>
                         
                        </div>
                    </section>
                </div>
           
              
             
            </div>
            
            <div class="row">
			   <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	用户列表
                              <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>    
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                        	<div class="adv-table editable-table ">
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample">
                        			<thead>
                        				<tr>
										<th class="hidden">id</th>
                        					<th>账号</th>
                        					<th>手机</th>
                        					<th>操作</th> 
                        				</tr>
                        			</thead>
                        			<tbody>
																<?php
                        					require("../../conn.php");
                        					$sql = "select * from 用户信息  ";
                        					$result = $conn->query($sql);
                        					while($row = $result->fetch_assoc()) {
                        				?>
                        				<tr class="">
										<td class="hidden"><?php echo $row["id"];?></td>
                        					<td><?php echo $row["账号"];?></td>
                        					<td><?php echo $row["手机"];?></td>     
                        					<td><a class="xxi" dataTel="<?php echo $row["手机"];?>">工程查看</a></td>
                        				</tr>
                        				<?php
																	}
																	$conn->close();
																	
																?>
                        			</tbody>
                        		</table>
                        		<form id="" class="form-horizontal cmxform hidden " method="post">
                        			<input type="text" id="tel" name="tel" value="" required="required" />
                        			<input type="text" id="" name="theflag" value="sql2005" required="required" />
                        			<button id="sjjbbut" class="btn btn-default btn-info" type="submit">查询</button>     
                        	</form>
                        	</div>                  
                        </div>
                    </section>
                </div>

                <div class="col-md-6">
                    <section class="panel">
                        <header class="panel-heading">
                        	解绑操作
                              <span class="tools pull-right">
                               <a id="" class="fa fa-chevron-up" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                        	<div class="adv-table editable-table ">
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample2">
                        			<thead>
                        				<tr>
                        					<th class="hidden">工程ID</th>
                        					<th>工程名称</th>
                        					<th>绑定号码</th>
                        					<th>操作</th>
                        				</tr>
                        			</thead>
                        			<tbody>
																<?php 
																require("../../conn_sql.php"); 
                        					$postTel="";
																	if($_POST && $_POST["tel"]){
																		$postTel=$_POST["tel"];
																?>
																<input class="myhidden"  type="text" autofocus="autofocus" readonly="readonly" />
																<?php
																	}
                        					$sql = "select * from Projects  where Mobile like  '%".$postTel."%' ";
                        					$result = sqlsrv_query($conn,$sql);
                        					while($row = sqlsrv_fetch_array($result)) {
                        					
                        				?>
                        				<tr class="">                        					
                        					<td class="hidden"><?php echo iconv('GB2312', 'UTF-8', $row["ProjectId"]);?></td>
                        					<td><?php echo iconv('GB2312', 'UTF-8', $row["Name"]);?></td>     
                        					<td id="tel<?php echo iconv('GB2312', 'UTF-8', $row["ProjectId"]);?>"><?php echo iconv('GB2312', 'UTF-8', $row["Mobile"]);?></td>                        					
                        					<td><a class="jiebang" sjc="<?php echo iconv('GB2312', 'UTF-8', $row["ProjectId"]);?>">解绑</a></td>
                        					
                        				</tr>
                        				
                        				<?php
																	}
																	sqlsrv_close($conn); 	
																	
																?>
                        				</tbody>
                        		</table>
                        	</div>                  
                        </div>
                    </section>
                </div>
              
             
            </div>
        </div>
        <!--body wrapper end-->
        
        <!--footer section start-->
        <footer>
            2016 &copy; 同欣易送检后台管理系
        </footer>
        <!--footer section end-->
    </div>
    <!-- main content end-->
</section>
<!-- Placed js at the end of the document so the pages load faster -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>
<!--multi-select-->
<script type="text/javascript" src="../js/jquery-multi-select/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="../js/jquery-multi-select/js/jquery.quicksearch.js"></script>
<script src="../js/multi-select-init.js"></script>
<!--common scripts for all pages-->
<script src="../js/scripts.js"></script>

<!--data table-->
<script type="text/javascript" src="../js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
<!--script for editable table-->
<script src="../js/editable-table.js"></script>

<!--pickers plugins-->
<script type="text/javascript" src="../js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<!--pickers initialization-->
<script src="../js/pickers-init.js"></script>

<script type="text/javascript" src="../js/jquery.validate.min.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function() {
		EditableTable.init();
	});
	$().ready(function() {		
				
				$(".xxi").live("click",function(){
					var $dataTel=$(this).attr("dataTel");
        	$("#tel").val($dataTel);
        	$("#sjjbbut").trigger("click");
       });      
    
        $("#mobileBdform").validate({
            rules: {
                gcmc: "required",
                mobileBd:{
                	 required:true
                	 
                }
            },
            messages: {
                gcmc: "不能为空！",
                mobileBd: "手机号不能为空！"
            },
            submitHandler:function(form) {
            	$.ajax({
            		url:'../../adminphp/pc_yhxx_bangding.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"bangding",
            			gcmcValue:$("#gcmc").val(),
            			mobileValue:$("#mobileBd").val()
            		},
            		success:function(data){            			
            			if (data.result=='success') {
            				alert("绑定成功"); 
            				window.location.reload();
            			} else{
            				var severresult=data.result;
            				alert(severresult);
            			}            			
            			
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type+"---"+errorThrown);
            		}
            		
            	});
            	
            	
            }
        });
        
        //解绑工程
        $(".jiebang").live("click",function(){
        	var $sjc=$(this).attr("sjc");  
        	//alert($sjc); 	
        	$.ajax({
            url:'../../adminphp/pc_yhxx_bangding.php',
            type:'post',
       			dataType:'json',
            data:{
            	sqlflag:"jiebang",
            	gcmcValue:$sjc
            },
            success:function(data){
              //alert(data);            			
            	if (data.result=='success') {          			
            		alert("解绑成功"); 
            		$("#tel"+$sjc)[0].innerHTML="";
            	} else{
            		var severresult=data.result;
            		alert(severresult);
            	}
            },
            error:function(xhr,type,errorThrown){
            	alert('ajax错误'+type);
            }
          });
        });
      
        
       
      
        
        
	});
</script>


</body>
</html>
