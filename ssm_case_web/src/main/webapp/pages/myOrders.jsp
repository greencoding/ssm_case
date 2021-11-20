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

    <title>我的订单</title>
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
                我的订单 <small>订单列表</small>
            </h1>
        </section>
        <!-- 内容头部 /-->
        <!-- 正文区域 -->
        <section class="content">
            <!--订单信息-->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>
                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="sorting_desc">订单编号</th>
                                <th class="sorting">下单时间</th>
                                <th class="sorting_asc sorting_asc_disabled">产品名称</th>
                                <th class="sorting_asc sorting_asc_disabled">产品价格</th>
                                <th class="sorting_asc sorting_asc_disabled">出游人数</th>
                                <th class="sorting_desc sorting_desc_disabled">订单描述</th>
                                <th class="text-center sorting">订单状态</th>
                                <th class="text-center sorting">支付类型</th>
                            </tr>
                            </thead>
                            <tbody>


                            <c:forEach items="${orders}" var="orders">
                                <c:if test="${orders.orderStatus == 1}">

                                    <tr>
                                        <td>${orders.orderNum }</td>
                                        <td>${orders.orderTimeStr }</td>
                                        <td>${orders.product.productName }</td>
                                        <td>${orders.product.productPrice }</td>
                                        <td>${orders.peopleCount }</td>
                                        <td>${orders.orderDesc }</td>
                                        <td class="text-center">${orders.orderStatusStr }</td>
                                        <td class="text-center">${orders.payTypeStr }</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                            </tbody>
                            <!--
                        <tfoot>
                        <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                        </tr>
                        </tfoot>-->
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->


                </div>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <!-- /.box-footer-->
            </div>
        </section>
        <!-- 正文区域 /-->
    </div>
    <!-- 内容区域 /-->
    <!-- 底部导航 -->
    <div class="footer-bottom">
        <div class="container">
            <p>Copyright &copy; 2021 | All rights reserved by <a target="_blank" href="https://themeforest.net/user/mironcoder">zersog</a></p>
            <ul class="pay-card">
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/picture/02.jpg" alt="payment-2" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/picture/03.jpg" alt="payment-3" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/static/picture/04.jpg" alt="payment-4" /></a></li>
            </ul>
        </div>
    </div>
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
