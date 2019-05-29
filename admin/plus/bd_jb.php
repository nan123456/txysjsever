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
  
  <!--common-->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">  
  
  <!--data table-->
  <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />
    
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
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
						<li><a href="zhbd.php">工程绑定/解绑</a></li>
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
                        	工程绑定/解绑
                              <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>    
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                        	<div class="adv-table editable-table ">
                        		<div>
                        			<form id="" class="form-horizontal cmxform " method="post">
                        				<?php
                                        	require("../../conn.php");																	
                                        	if($_POST){
                                        		$hdnf=$_POST["hdnf"];
                                        			
                                        	}
																	?>
                        				
                        				
                                <div class="form-group">
                                    <label for="qdzt" class="control-label col-lg-2">手机号：</label>
                                    <div class="col-lg-3">
                                        <input id="" name="" class="form-control"  size="" type="number" value="" />                   
                                    </div> 
                                    <div class="col-lg-offset-1 col-lg-5">
                                		<button class="btn btn-default btn-info" type="submit">查&nbsp;&nbsp;&nbsp;&nbsp;询</button>                                		
                                	</div>
                                </div>
                        				
                        			</form>
                        		</div>
                        		<div class="space15"></div>
                        		<table class="table table-striped table-hover table-bordered" id="editable-sample">
                        			<thead>
                        				<tr>
                        					<th class="hidden">序号</th>
                        					<th>工程ID</th>
                        					<th>工程名称</th>
                        					<th>操作</th>
                        				</tr>
                        			</thead>
                        			<tbody>
                        				
                        				<tr class="">
                        					<td class="hidden">1</td>
                        					<td></td>
                        					<td></td>
                        					<td><a class="jbang" sjc="">解绑</a></td>
                        					
                        				</tr>
                        				
                        				
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

<!--common scripts for all pages-->
<script src="../js/scripts.js"></script>

<!--data table-->
<script type="text/javascript" src="../js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
<!--script for editable table-->
<script src="../js/editable-table.js"></script>

<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
<script src="../js/charCode.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		EditableTable.init();
	});
	$().ready(function() {
//		//活动年份
//		var mydata=new Date();
//		var myyear=mydata.getFullYear();
//		var str="";
//		//年份下拉框创建
//		for (var i=2015;i<myyear+3;i++) {
//			if (i==myyear) {
//				str=str+'<option selected="selected">'+i+'</option>';
//			} else{
//				str=str+"<option>"+i+"</option>";
//			}			
//		}
//		$("#hdnf").html(str);
		
		
		
				deletesjc="";
        $(".schu").live("click",function(){
        	$('#myModal3').modal();
        	var $sjc=$(this).attr("sjc");
        	deletesjc=$sjc;       	
        });
        
         $("#thisdelete").bind("click",function(){
        	$("#thisclose").trigger("click");
        	$.ajax({
            		url:'../../adminphp/pc_bmqd.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"delete",
            			sjc:deletesjc
            		},
            		success:function(data){
            			
            			if (data.result=='success') {
            				$('#myModal2').modal();
            				deletesjcid="#"+deletesjc;
            				$(deletesjcid).trigger("click");
            				
            				deletesjc="";
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
        
        //活动年份改变事件，活动名称下拉框内容动态变化
        $("#hdnf").live("change",function(){
        	$.ajax({
            		url:'../../adminphp/pc_hdlb.php',
            		type:'post',
            		dataType:'json',
            		data:{
            			sqlflag:"selectname",
            			hdnf:$("#hdnf").val()
            		},
            		success:function(data){    
            			var count=data.length;
            			var optionhtml="<option>全部</option>";
            			if (count>1) {            				
            				for (var i=0;i<count-1;i++) {
            					var hdnf=data[i].活动名称;
            					optionhtml=optionhtml+"<option>"+hdnf+"</option>";
            				}
            			} else{
            				var result=data[0].result;
            				//alert(result);            		
            			} 
            			$("#hdmc").html(optionhtml);
            		},
            		error:function(xhr,type,errorThrown){
            			alert('ajax错误'+type+"---"+errorThrown);
            		}
            		
            	});
        });
		
	});

	
</script>


</body>
</html>
