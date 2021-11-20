<%@ page import="java.security.Security" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="edu.kust.domain.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>填写订单</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">
	<meta charset="UTF-8" />
	<meta name="author-name" content="Mironcoder | Miron Mahmud" />
	<meta name="author-email" content="mironcoder@gmail.com" />
	<meta name="author-profile" content="https://themeforest.net/user/mironcoder" />
	<meta name="template-name" content="Vegana" />
	<meta name="template-created" content="09-November-2020" />
	<meta name="template-title" content="Vegana - vegan food ecommerce store html template" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="keywords" content="vegana, vegan, food, ecommerce, store, html, template, bootstrap, vegetarian, organic, vegetables, greengrocery, fruit, healthy, shop" />
	<title>Vegana - Home-1</title>
	<link rel="icon" href="assets/images/logo/favicon.png" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/flaticon.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fontawesome.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/slick.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/home-1.css" />
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">

<link rel=“stylesheet”
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body>

	<div class="wrapper">
		<header class="header-part">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-6 col-lg-6">
						<ul class="header-info">
							<%--<li> <i class="fas fa-envelope"></i><p>zersog@foxmail.com</p></li>--%>
							<%--<li> <i class="fas fa-phone-alt"></i><p>+86 13576621842</p></li>--%>
							<li><i class="fas fa-user"></i></li>
							<li class="dropdown user user-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<p><security:authentication property="principal.username"></security:authentication>用户，你好</p>
								</a>
								<ul class="dropdown-menu">
									<!-- Menu Footer-->
									<li class="user-footer">
										<div class="pull-left">
											<a href="${pageContext.request.contextPath}/orders/findOrderByUserId.do?id=<security:authentication property="principal.id"/>">我的订单&nbsp;</a>
										</div>
										<div class="pull-right">
											<a href="${pageContext.request.contextPath}/logout.do">&nbsp;注销</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="col-sm-12 col-md-6 col-lg-6">
						<div class="header-option">
							<div class="header-curr">
								<!-- <i class="fas fa-money-bill"></i>
                                <select class="header-select custom-select"><option class="clr" selected="">currency</option><option class="clr" value="1">Dollers</option><option class="clr" value="2">Pound</option><option class="clr" value="3">Euro</option> </select> -->
							</div>
							<div class="header-lang">
								<i class="fas fa-globe"></i>
								<select class="header-select custom-select"><option class="clr" selected="">easy travel</option> </select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<nav class="navbar-part">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="navbar-element">
							<ul class="left-widget">
								<li><a class="icon icon-inline menu-bar" href="#"><i class="fas fa-align-left"></i></a></li>
							</ul>
							<a class="navbar-logo" href="#"> <img src="${pageContext.request.contextPath}/static/picture/logo.png" alt="logo" /> </a>
							<form class="search-form navbar-src">
								<input type="text" placeholder="Search anything..." />
								<button class="btn btn-inline"> <i class="fas fa-search"></i> <span>search</span> </button>
							</form>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="navbar-slide">
							<div class="navbar-content">
								<div class="navbar-slide-cross">
									<a class="icon icon-inline cross-btn" href="#"><i class="fas fa-times"></i></a>
								</div>
								<div class="navbar-slide-logo">
									<a href="#"><img src="${pageContext.request.contextPath}/static/picture/01.png" alt="logo" /></a>
								</div>
								<form class="search-form mb-4 navbar-slide-src">
									<input type="text" placeholder="Search anything..." />
									<button class="btn btn-inline"> <i class="fas fa-search"></i> <span>search</span> </button>
								</form>
								<ul class="navbar-list">
									<li class="navbar-item active"><a class="navbar-link" href="${pageContext.request.contextPath}/product-index/findAll.do">主页</a></li>
									<li class="navbar-item active"><a href="#" class="navbar-link"></a></li>
									<li class="navbar-item active"><a href="#" class="navbar-link"></a></li>
									<li class="navbar-item active"><a href="#" class="navbar-link"></a></li>
									<li class="navbar-item active"><a class="navbar-link" href="#"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<!-- 内容区域 -->
		<div class="content-wrapper">
			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				新建订单 <small>填写订单</small>
			</h1>
			</section>
			<!-- 内容头部 /-->
			<!-- 正文区域 -->
			<section class="content">
				<!--订单信息-->
			<form action="${pageContext.request.contextPath}/orders/save.do" method="post">
			<div class="panel panel-default">
				<div class="panel-heading">订单信息</div>
				<div class="row data-type">

					<div class="col-md-2 title">订单编号</div>
					<div class="col-md-4 data">
						<input type="text" id="ordersId" name="orderNum" class="form-control"
							value="" readonly="readonly"/>
					</div>

					<div class="col-md-2 title">下单时间</div>
					<div class="col-md-4 data">
						<input type="text" id="ordersTime" name="orderTime" class="form-control"
							   value="" readonly="readonly"/>
					</div>

					<div class="col-md-2 title">出游人数</div>
					<div class="col-md-4 data">
						<input type="text" class="form-control" placeholder="出游人数" onkeyup="value=value.replace(/[^\d]/g,'')"
							value="" name="peopleCount">
					</div>

					<div class="col-md-2 title">支付方式</div>
					<div class="col-md-4 data">
						<select class="form-control select2" style="width: 100%"
								name="payType">
							<option value="0" selected="selected">微信</option>
							<option value="1">支付宝</option>
							<option value="2">其他</option>
						</select>
					</div>

					<div class="col-md-2 title">订单状态</div>
					<div class="col-md-4 data">
						<select class="form-control select2" style="width: 100%"
								name="orderStatus" readonly="readonly">
							<option value="1" selected="selected">开启</option>
						</select>
					</div>

					<div class="col-md-2 title">订单其他信息</div>
					<div class="col-md-4 data">
						<input type="text" name="orderDesc" class="form-control" placeholder="其他信息"
							   value="" />
					</div>

					<div class="col-md-4 data">
						<input type="hidden" value="${param.id}" name="productId">
					</div>

					<div class="col-md-4 data">
						<input type="hidden" value="<security:authentication property="principal.id"/>" name="userId">
					</div>

				</div>
			</div>
				<!--费用信息/--> <!--工具栏-->
			<div class="box-tools text-center">
				<button type="submit" class="btn bg-maroon">确定</button>
				<button type="button" class="btn bg-default"
					onclick="history.back(-1);">返回</button>
			</div>
			</form>
			</section>
			<!-- 正文区域 /-->
		</div>
		<!-- 内容区域 /-->
		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.8
		</div>
		<strong>Copyright &copy; 2014-2017 <a
			href="#">研究院研发部</a>.
		</strong> All rights reserved. </footer>
		<!-- 底部导航 /-->
	</div>

	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("order-manage");

			// 列表按钮
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});
		});
	</script>
	<script src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/slick.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/slick.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/main.js"></script>

	<script type="text/javascript">
		function getTime() {
			var date = new Date();
			var fullYear = date.getFullYear();
			var month = date.getMonth() + 1;
			var ms = month < 10 ? "-" + "0" + month : "-" + month;
			var day = date.getDate();
			var ds = day < 10 ? "-" + "0" + day : "-" + day;
			var rs = fullYear + ms + ds;
			var time = date.getHours();
			if (time < 10) {
				rs += " 0" + time;
			} else {
				rs += " " + time;
			}
			var minutes = date.getMinutes();
			var min = minutes < 10 ? ":0" + minutes : ":" + minutes;
			var seconds = date.getSeconds();
			var sed = seconds < 10 ? ":0" + seconds : ":" + seconds;
			rs += min + sed;
			return rs;
		}
		function getTimeStr() {
			var date = new Date();
			var fullYear = date.getFullYear();
			var month = date.getMonth() + 1;
			var ms = month < 10 ? "" + "0" + month : "" + month;
			var day = date.getDate();
			var ds = day < 10 ? "" + "0" + day : "" + day;
			var rs = fullYear + ms + ds;
			var time = date.getHours();
			if (time < 10) {
				rs += " 0" + time;
			} else {
				rs += "" + time;
			}
			var minutes = date.getMinutes();
			var min = minutes < 10 ? "0" + minutes : "" + minutes;
			var seconds = date.getSeconds();
			var sed = seconds < 10 ? "0" + seconds : "" + seconds;
			rs += min + sed;
			return rs;
		}
		$("#ordersId").val(getTimeStr());
		$("#ordersTime").val(getTime());
	</script>
</body>


</html>