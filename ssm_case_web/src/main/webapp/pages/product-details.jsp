<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
 <head>
  <title>产品详情</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/flaticon.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fontawesome.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/slick.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/product-details.css" />
 </head>
 <body>
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
        <a href="#"><img src="${pageContext.request.contextPath}/static/picture/logo.png" alt="logo" /></a>
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


  <section class="single-banner">
   <div class="container">
    <div class="row">
     <div class="col-lg-12">
      <div class="single-content">
       <h2>Single product details</h2>
       <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/product-index/findAll.do">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Product Details</li>
       </ol>
      </div>
     </div>
    </div>
   </div> 
  </section>

  <%--产品详情--%>
  <section class="pro-det-part">
   <div class="container">
    <div class="row">
     <div class="col-md-6 col-lg-5">
      <div class="pro-det-img"> 
       <img src="${pageContext.request.contextPath}${product.url}" alt="product-1" />
      </div>
     </div>
     <div class="col-sm-8 col-md-6 col-lg-5">
      <div class="pro-det-cntnt">
       <h3>${product.productName}</h3>
       <p>
       <h6>
         <h6 style="color: rebeccapurple">产品编号：${product.productNum }</h6>￥${product.productPrice}
       </h6>
       </p>
      </div>
      <div class="pro-det-cntnt">
        <i class="fas fa-city"></i>
       <span>${product.cityName}</span>
      </div>
      <div class="pro-det-sum">
       <p>${product.productDesc}</p>
      </div>
      <div class="pro-det-cart">
       <ul>
        <%--<li> <input type="number" placeholder="0" /></li> //输入人数 订单时有用--%>
        <li> <a href="${pageContext.request.contextPath}/pages/orders-add.jsp?id=${product.id}" class="btn btn-outline"> <i class="fas fa-shopping-bag"></i> <span>下单</span> </a></li>
        <%--<li> <a href="#" class="btn btn-outline"> <i class="fas fa-heart"></i> </a></li>--%>
       </ul>
      </div>
      <div class="pro-det-pay">
       <h5>出行时间:<i class="fas fa-calendar-week"></i> <span>${product.departureTimeStr }</span></h5>
      </div>
      <div class="pro-det-share">
       <h5>产品状态:${product.productStatusStr}</h5>
      </div>
     </div>
    </div>
   </div> 
  </section>

  <%--产品描述--%>
  <section class="pro-tab-part">
   <div class="container">
    <div class="row">
     <div class="col-lg-12">
      <div class="pro-tab-menu">
       <ul class="nav nav-tabs">
        <li><a href="#specific" class="nav-link" data-toggle="tab">specification</a></li>
        <li><a href="#descrip" class="nav-link" data-toggle="tab">description</a></li>
       </ul>
      </div>
      <div class="tab-pane" id="specific">
       <div class="pro-tab-specific">
        <table class="table table-bordered">
         <tbody>
          <tr>
           <th scope="row">产品编号</th>
           <td>${product.productNum}</td>
          </tr>
          <tr>
           <th scope="row">产品名称</th>
           <td>${product.productName}</td>
          </tr>
          <tr>
           <th scope="row">出发城市</th>
           <td>${product.cityName}</td>
          </tr>
          <tr>
           <th scope="row">出发时间</th>
           <td>${product.departureTimeStr}</td>
          </tr>
         </tbody>
        </table>
       </div>
      </div>
      <div class="tab-pane" id="descrip">
       <div class="pro-tab-descrip">
        <p> <span>${product.productDesc}</span></p>
       </div>
      </div>
     </div>
    </div>
   </div> 
  </section>

  <%--相关联产品推荐--%>
  <section class="section related-part">
   <div class="container">
    <div class="row">
     <div class="col-lg-12">
      <div class="section-heading">
       <h2 class="title">相关旅游产品推荐</h2>
      </div>
     </div>
    </div>
    <div class="row">
     <div class="col-lg-12">
      <div class="product-slider slider-arrow">
       <c:forEach items="${productRela}" var="product1">
        <c:if test="${product.productNum != product1.productNum}">
         <div class="product-card" >
          <div class="product-img">
           <img src="${pageContext.request.contextPath}${product1.url}" alt="product-1" />
           <ul class="product-widget">
            <li><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product1.id}"><i class="fas fa-eye"></i></a></li>
           </ul>
          </div>
          <div class="product-content">
           <div class="product-name">
            <h6><i class="fas fa-star "></i><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product1.id}">${product1.productName }</a></h6>
           </div>
           <div class="product-price">
            <h6 style="color: #01ff70">
             ￥${product1.productPrice}</h6>
            <div class="product-rating">
             <i class="fas fa-city"></i>
             <span>${product1.cityName}</span>
            </div>
           </div>
          </div>
         </div>
        </c:if>
       </c:forEach>
      </div>
     </div>
    </div>
   </div> 
  </section>

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

  <script src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/slick.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/slick.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/main.js"></script>
 </body>
</html>