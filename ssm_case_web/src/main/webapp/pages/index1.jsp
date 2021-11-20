<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
 <head>
  <meta charset="UTF-8"  content="首页"/>
  <title>首页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/flaticon.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fontawesome.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/slick.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/home-1.css" />
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
         <li class="navbar-item active"><a class="navbar-link" href="#">主页</a></li>
		 <li class="navbar-item active"><a href="#product-low" class="navbar-link">低价出行</a></li>
		 <li class="navbar-item active"><a href="#product-mid" class="navbar-link">舒适出行</a></li>
		 <li class="navbar-item active"><a href="#product-high" class="navbar-link">豪华出行</a></li>
		 <li class="navbar-item active"><a class="navbar-link" href="#contract">联系我们</a></li>
        </ul>
       </div>
      </div>
     </div>
    </div>
   </div> 
  </nav>
  <!-- 轮播图 -->
  <main class="banner-part slider-arrow slider-dots">
   <section class="banner-1">
    <div class="container">
     <div class="row">
      <div class="col-md-5 col-lg-6"></div>
      <div class="col-md-7 col-lg-6">
       <div class="banner-content-1">
        <h1>北京二日一晚跟团游</h1>
        <p>带您深度逛紫禁城·故宫（赠珍宝馆门票)，登八达岭长城做好汉，观庄严而又神圣的升旗仪式，不进购物店，出行无忧，不留遗憾！</p>
       </div>
      </div>
     </div>
    </div> 
   </section>
   <section class="banner-2">
    <div class="container">
     <div class="row">
      <div class="col-lg-12">
       <div class="banner-content-2">
        <h1>三亚五日自由行</h1>
        <p>经典一日游含观光车+雨林自助餐+玻璃栈道 |【高星4晚】不输巴厘岛的网红级酒店随心选 | 含专车接送机+赠机场休息室+旅拍体验 | 优品加购蜈支洲岛/南山/直升机/游艇等!</p>
       </div>
      </div>
     </div>
    </div>
   </section>
   <section class="banner-3">
    <div class="container">
     <div class="row">
      <div class="col-md-7 col-lg-6">
       <div class="banner-content-3">
        <h1>云南8日7晚跟团游</h1>
        <p>全程5钻酒店入住·省去舟车劳顿+热带雨林风光+原始森林+孔雀放飞+野象谷+训象表演+花海吉普车+赠送2大演出印象丽江+丽水金沙!</p>
       </div>
      </div>
      <div class="col-md-5 col-lg-6"></div>
     </div>
    </div>
   </section>
  </main>

  <!-- 低价旅游产品 -->
  <section id="product-low" class="section trend-part">
   <div class="container">
    <div class="row">
     <div class="col-lg-12">
      <div class="section-heading">
       <h2 class="title">低价出行</h2>
      </div>
     </div>
    </div>
    <div class="row">
     <div class="col-lg-12">
      <div class="product-slider slider-arrow">
    <c:forEach items="${pageInfo}" var="product">
        <c:if test="${product.productPrice < 2000 && product.productStatus==1}">
            <div class="product-card" >
                <div class="product-img">
                    <img src="${pageContext.request.contextPath}${product.url}" alt="product-1" />
                    <ul class="product-widget">
                        <li><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product.id}"><i class="fas fa-eye"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <div class="product-name">
                        <h6><i class="fas fa-star "></i><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product.id}">${product.productName }</a></h6>
                    </div>
                    <div class="product-price">
                        <h6 style="color: #01ff70">
                            ￥${product.productPrice}</h6>
                        <div class="product-rating">
                            <i class="fas fa-city"></i>
                            <span>${product.cityName}</span>
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

  <!-- 中价旅游产品 -->
  <section id="product-mid" class="section best-part">
   <div class="container">
    <div class="row">
     <div class="col-lg-12">
      <div class="section-heading">
       <h2 class="title">舒适出行</h2>
      </div>
     </div>
    </div>
    <div class="row">
     <div class="col-lg-12">
      <div class="product-slider slider-arrow">
          <c:forEach items="${pageInfo}" var="product">
              <c:if test="${product.productPrice >= 2000 && product.productPrice <= 5000 && product.productStatus==1}">
                  <div class="product-card" >
                      <div class="product-img">
                          <img src="${pageContext.request.contextPath}${product.url}" alt="product-1" />
                          <ul class="product-widget">
                              <li><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product.id}"><i class="fas fa-eye"></i></a></li>
                          </ul>
                      </div>
                      <div class="product-content">
                          <div class="product-name">
                              <h6><i class="fas fa-star "></i><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product.id}">${product.productName }</a></h6>
                          </div>
                          <div class="product-price">
                              <h6 style="color: #01ff70">
                                  ￥${product.productPrice}</h6>
                              <div class="product-rating">
                                  <i class="fas fa-city"></i>
                                  <span>${product.cityName}</span>
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

  <!-- 豪华出行 -->
  <section id="product-high" class="section new-part">
   <div class="container">
    <div class="row">
     <div class="col-lg-12">
      <div class="section-heading">
       <h2 class="title">豪华出行</h2>
      </div>
     </div>
    </div>
    <div class="row">
     <div class="col-lg-12">
      <div class="product-slider slider-arrow">
          <c:forEach items="${pageInfo}" var="product">
              <c:if test="${product.productPrice > 5000 && product.productStatus == 1}">
                  <div class="product-card" >
                      <div class="product-img">
                          <img src="${pageContext.request.contextPath}${product.url}" alt="product-1" />
                          <ul class="product-widget">
                              <li><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product.id}"><i class="fas fa-eye"></i></a></li>
                          </ul>
                      </div>
                      <div class="product-content">
                          <div class="product-name">
                              <h6><i class="fas fa-star "></i><a href="${pageContext.request.contextPath}/product-index/findone.do?id=${product.id}">${product.productName }</a></h6>
                          </div>
                          <div class="product-price">
                              <h6 style="color: #01ff70">
                                  ￥${product.productPrice}</h6>
                              <div class="product-rating">
                                  <i class="fas fa-city"></i>
                                  <span>${product.cityName}</span>
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


  <section id="contract" class="news-part">
   <div class="container">
    <div class="row">
     <div class="col-md-5 col-lg-6">
      <div class="news-content">
       <h2>Subscribe for Latest Offers</h2>
      </div>
     </div>
     <div class="col-md-7 col-lg-6">
      <form class="search-form news-form"> 
       <input type="text" placeholder="Enter Email Address" /> 
       <button class="btn btn-inline"> <i class="fas fa-envelope"></i> <span>Subscribe</span> </button>
      </form>
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