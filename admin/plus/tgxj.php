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
                <li class="menu-list nav-active"><a href=""><i class="fa fa-laptop"></i> <span>通告</span></a>
                    <ul class="sub-menu-list">
                        <li class="active"><a href="tgxj.php">新建通告</a></li>
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
                <li class="menu-list"><a href=""><i class="fa fa-th"></i> <span>系统管理</span></a>
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
        
        <!-- page heading start-->
        <div class="page-heading">
            <h3>
            	<small>该处对应同欣易送检app，关注，通告</small>
            </h3>            
        </div>
        <!-- page heading end-->
        
        <!--body wrapper start-->
        <div class="wrapper">       
            <div class="row">
                <div class="col-md-12">
                    <section class="panel">
                        <header class="panel-heading">
                        	通告新建
                              <span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
                        </header>
                        <div class="panel-body">
                            <form id="tgxjform" action="#" class="form-horizontal cmxform ">
                            		<div class="form-group hidden">
                                    <label for="sjc" class="control-label col-lg-2">时间戳：</label>
                                    <div class="col-lg-6">
                                        <input id="sjc" name="sjc" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                                <div class="form-group hidden">
                                    <label for="sqlflag" class="control-label col-lg-2">sqlflag：</label>
                                    <div class="col-lg-6">
                                        <input id="sqlflag" name="sqlflag" class="form-control"  size="16" type="text" value="insert" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="zbt" class="control-label col-lg-2">主标题：</label>
                                    <div class="col-lg-6">
                                        <input id="zbt" name="zbt" class="form-control"  size="16" type="text" value="" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="fbt" class="control-label col-lg-2">副标题：</label>
                                    <div class="col-lg-6">
                                    	<input id="fbt" name="fbt" class="form-control"  size="16" type="text" value="" />  
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="tsdq" class="control-label col-lg-2">推送地区：</label>
                                    <div class="col-lg-6">
                                    	<select multiple="multiple" id="tsdq" name="tsdq" class="multi-select">
                                    		<option value="gz">广州市</option>
                                    		<option value="cz">潮州市</option>
                                    		<option value="dg">东莞市</option>
                                    		<option value="fz">佛山市</option>
                                    		<option value="hy">河源市</option>
                                    		
                                    		<option value="hz">惠州市</option>
                                    		<option value="jm">江门市</option>
                                    		<option value="jy">揭阳市</option>
                                    		<option value="mm">茂名市</option>
                                    		<option value="mz">梅州市</option>
                                    		
                                    		<option value="qy">清远市</option>
                                    		<option value="st">汕头市</option>
                                    		<option value="sw">汕尾市</option>
                                    		<option value="sg">韶关市</option>
                                    		<option value="sz">深圳市</option>
                                    		
                                    		<option value="yj">阳江市</option>
                                    		<option value="yf">云浮市</option>
                                    		<option value="zj">湛江市</option>
                                    		<option value="zq">肇庆市</option>
                                    		<option value="zs">中山市</option>
                                    		
                                    		<option value="zh">珠海市</option>
                                    	</select>
                                    	<input id="alltsdq" name="alltsdq" size="" type="hidden" value=""  class="form_datetime form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                	<div class="col-lg-offset-2 col-lg-10">                                		
                                		<button id="qby" class="btn btn-success col-lg-2" type="button">>>></button>
                                		<button id="qbz" class="btn btn-success col-lg-offset-1 col-lg-2" type="button"><<<</button>      		
                                		<button id="kk" class="btn btn-success hidden" type="button">kk</button>      		
                                	</div>
                                </div>                           
                                <div class="form-group">
                                    <label for="tgnr" class="control-label col-lg-2">通告内容：</label>
                                    <div class="col-lg-6">
                                    	<textarea id="tgnr" name="tgnr" rows="13" class="form-control"></textarea>
                                       
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                	<div class="col-lg-offset-6 col-lg-5">                                		
                                		<button id="reset" class="btn btn-default btn-info hidden" type="reset">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                                		<button id="myreset" class="btn btn-default btn-info" type="button">重&nbsp;&nbsp;&nbsp;&nbsp;置</button>
                                		<button class="btn btn-default btn-info" type="submit">保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                                		
                                	</div>
                                </div>

                            </form>
                            <!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                            	<div class="modal-dialog">
                            		<div class="modal-content">
                            			<div class="modal-header">
                            				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            				<h4 class="modal-title">同欣易送检后台管理系统</h4>
                            			</div>
                            			<div class="modal-body">
                            				<p>保存成功！</p>                            			
                            			</div>
                            			<div class="modal-footer">
                            				<button data-dismiss="modal" class="btn btn-primary" type="button">确定</button>                            				
                            			</div>
                            		</div>
                            	</div>
                            </div>
                            <!-- modal -->
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

<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
<script type="text/javascript">
$().ready(function() {
	//禁用回车键
				document.onkeydown = function () {
					if (window.event && window.event.keyCode == 13) {
						window.event.returnValue = false;
					}
				}
				//自动填充当前时间戳
				var mytime = function() {
					var myDate=new Date();
					var mytime=myDate.getTime();
					$("#sjc").val(mytime);
				};
				mytime();
				
				$("#myreset").bind("click",function(){
					$("#reset").trigger("click");
					mytime();
					$("#qbz").trigger("click");
				});
				
				$("#qby").bind("click",function(){					
					//alert($("#tsdq").val());
					//$("#tsdq").val("gz,cz");
					var tsdq=$("#tsdq")[0];
					var length=tsdq.length;
					//alert(length);
					for (var i=0;i<length;i++) {
						var id=tsdq.options[i].value+"-selectable";
						$("#"+id).trigger("click");
					}
				});
				
				$("#qbz").bind("click",function(){					
					//alert($("#tsdq").val());
					//$("#tsdq").val("gz,cz");
					var tsdq=$("#tsdq")[0];
					var length=tsdq.length;
					//alert(length);
					for (var i=0;i<21;i++) {
						var id=tsdq.options[i].value+"-selection";
						$("#"+id).trigger("click");
					}
				});
				$("#kk").bind("click",function(){					
					alert($("#tsdq").val());
				
				
				});
				// tgxjform form on  submit
        $("#tgxjform").validate({
            rules: {
                zbt: "required",              
                tsdq: "required",
                tgnr: "required"
            },
            messages: {
                zbt: "主标题不能为空！",               
                tsdq: "推送地区不能为空！" ,
                tgnr: "通告内容不能为空！"           
            },
            submitHandler:function(form) {
            	$("#alltsdq").val($("#tsdq").val());
            	$.ajax({
            		url:'../../adminphp/pc_tglb.php',
            		type:'post',
            		dataType:'json',
            		data:$("#tgxjform").serialize(),
            		success:function(data){
            			//alert(data);
            			if (data.result=='success') {
            				$('#myModal').modal();
            				$("#myreset").trigger("click");
            				$("#qbz").trigger("click");
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


</body>
</html>
