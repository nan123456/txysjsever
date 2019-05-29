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
		<!--tags input-->
		<link rel="stylesheet" type="text/css" href="../js/jquery-tags-input/jquery.tagsinput.css" />
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
					<a href="../index.php">
						<img src="../images/logo.png" alt="">
					</a>
				</div>
				<div class="logo-icon text-center">
					<a href="../index.php">
						<img src="../images/logo_icon.png" alt="">
					</a>
				</div>
				<!--logo and iconic logo end-->

				<div class="left-side-inner">
					<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="menu-list">
							<a href="#">
								<i class="fa fa-flag"></i><span>活动</span>
							</a>
							<ul class="sub-menu-list">
								<li>
									<a href="../index.php">
										新建活动
									</a>
								</li>
								<li>
									<a href="hdgl.php">
										活动管理
									</a>
								</li>
								<li>
									<a href="bmqd.php">
										报名签到管理
									</a>
								</li>
							</ul>
						</li>
						<li class="menu-list">
							<a href="">
								<i class="fa fa-laptop"></i><span>通告</span>
							</a>
							<ul class="sub-menu-list">
								<li>
									<a href="tgxj.php">
										新建通告
									</a>
								</li>
								<li>
									<a href="tggl.php">
										通告管理
									</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="hbgl.php">
								<i class="fa fa-android"></i><span>伙伴管理</span>
							</a>
						</li>
						<li>
							<a href="jfgl.php">
								<i class="fa fa-bullhorn"></i><span>积分管理</span>
							</a>
						</li>
						<li>
							<a href="xxts.php">
								<i class="fa fa-bar-chart-o"></i><span>消息推送</span>
							</a>
						</li>
						<li class="menu-list">
							<a href="">
								<i class="fa fa-book"></i><span>知识</span>
							</a>
							<ul class="sub-menu-list">
								<li>
									<a href="zsxj.php">
										送检知识新建
									</a>
								</li>
								<li>
									<a href="zsgl.php">
										送检知识管理
									</a>
								</li>
								<li>
									<a href="zlzsxj.php">
										资料知识新建
									</a>
								</li>
								<li>
									<a href="zlzsgl.php">
										资料知识管理
									</a>
								</li>
							</ul>
						</li>
						<li class="menu-list">
							<a href="">
								<i class="fa fa-comments"></i><span>小组</span>
							</a>
							<ul class="sub-menu-list">
								<li>
									<a href="zyzwzd.php">
										组员职务字段
									</a>
								</li>

							</ul>
						</li>
						<li class="menu-list">
							<a href="">
								<i class="fa fa-th"></i><span>系统管理</span>
							</a>
							<ul class="sub-menu-list">
								<li>
									<a href="zhgl.php">
										账号管理
									</a>
								</li>
								<li>
									<a href="zhbd.php">
										工程绑定/解绑
									</a>
								</li>
								<li class="active"><a href = "gyxx.php">关于信息修改</a></li>
							</ul>
						</li>
						<li class="menu-list">
							<a href="">
								<i class="fa fa-twitter"></i><span>营销管理</span>
							</a>
							<ul class="sub-menu-list">
								<li>
									<a href="#">
										上门拜访
									</a>
								</li>
								<li>
									<a href="#">
										销售跟进
									</a>
								</li>
								<li>
									<a href="#">
										服务追踪
									</a>
								</li>
								<li>
									<a href="#">
										...
									</a>
								</li>
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
					<a class="toggle-btn">
						<i class="fa fa-bars"></i>
					</a>
					<!--toggle button end-->
					<!--notification menu start -->
					<div class="menu-right">
						<ul class="notification-menu">
							<li>
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
									<li>
										<a href="#">
											<i class="fa fa-sign-out"></i> 退出
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!--notification menu end -->
				</div>
				<!-- header section end-->

				<!-- page heading start-->
				<div class="page-heading">
					<h3><small>该处对应同欣易送检app，关于信息</small></h3>
				</div>
				<!-- page heading end-->

				<!--body wrapper start-->
				<div class="wrapper">
					<div class="row">
						<div class="col-md-12">
							<section class="panel">
								<header class="panel-heading">
									关于信息
									<span class="tools pull-right">
									<a id="xxtspanel" class="fa fa-chevron-down" href="javascript:;"></a>
									<a class="fa fa-times" href="javascript:;"></a> </span>
								</header>
								<div id="xxtspanelbody" class="panel-body">
									<form id="xxtsform" class="form-horizontal cmxform ">
										<div class="form-group hidden">
											<label for="sjc" class="control-label col-lg-1">时间戳：</label>
											<div class="col-lg-4">
												<input id="sjc" name="sjc" class="form-control"  size="16" type="text" value="" />
											</div>
											<label for="sqlflag" class="control-label col-lg-1 col-lg-offset-1">sqlflag：</label>
											<div class="col-lg-4">
												<input id="sqlflag" name="sqlflag" class="form-control"  size="16" type="text" value="insert" />
											</div>
										</div>
										<?php
											require'../../conn.php';
											$sql = "select * from pc_关于信息";
											$result = $conn->query($sql);
											  if($result->num_rows >=0){
											  	while($row = $result->fetch_assoc()){
											?>
										<div class="form-group">
											<label for="xtjj" class="control-label col-lg-2">系统简介：</label>
											<p>
												<textarea cols="75" rows="5" id="xtjj" ><?php echo $row["系统简介"]; ?></textarea>
</p>										</div>
										<div class="form-group">
											<label for="zygn" class="control-label col-lg-2">主要功能：</label>
											<p>
												<textarea cols="75" rows="7" id="zygn" ><?php echo $row["主要功能"]; ?></textarea>
</p>										</div>

										<?php 
												}
											  }
											?>
										<div class="form-group">
											<div class="col-lg-offset-9 col-lg-5">
												<button class="btn btn-default btn-info" type="button" onclick="save()">保&nbsp;&nbsp;&nbsp;&nbsp;存
												</button>
											</div>
										</div>

									</form>
								</div>
							</section>
						</div>

					</div>
				</div>
				<!--body wrapper end-->

				<!--footer section start-->
				<footer>
					2018 &copy; 同欣易送检后台管理系
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

		<!--tags input-->
		<script src="../js/jquery-tags-input/jquery.tagsinput.js"></script>
		<script src="../js/tagsinput-init.js"></script>
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
			function save(){
				var timestamp = (new Date()).valueOf();//获取当前时间戳
				var xtjj =document.getElementById("xtjj").value;//系统简介内容
				var zygn =document.getElementById("zygn").value;//主要功能内容
//				alert(timestamp  + 		xtjj		+			zygn);

      	$.ajax({
      		type:"get",
      		url:"../../adminphp/save_gyxx.php",
      		async:true,
      		data:{
      			timestamp:timestamp,
      			xtjj: xtjj,
      			zygn: zygn
      		}, 
      		success:function(data){
//    			alert(data);
      			if(data){
      				alert("数据保存成功");
      			}else{
      				alert("数据保存失败");
      			}
      		}
      	});
}
			</script>

	</body>
</html>