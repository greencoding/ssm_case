<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>注册</title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition register-page">
    <div class="register-box">
        <div class="register-logo">
            <a href="#"><b>easy旅游网</b>统一身份认证</a>
        </div>

        <div class="register-box-body">
            <p class="login-box-msg">新用户注册</p>

            <form action="${pageContext.request.contextPath}/user/register.do" method="post" onSubmit="return dealSubmit()">
                <div class="form-group has-feedback">
                    <input type="text" name="username" id="username" class="form-control" placeholder="用户名" onBlur="dealUsername()" value="">
                    <span id="span01" style="color:red;display:none">*用户名不能为空</span>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" name="email" id="email" class="form-control" placeholder="Email" onBlur="dealEmail()" value="">
                    <span id="span05" style="color:red;display:none">*电子邮件名非法</span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" id="password" class="form-control" placeholder="输入密码" onBlur="dealPassword()" value="">
                    <span id="span03" style="color:red;display:none">*密码小于八个字符</span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" id="password01" class="form-control" placeholder="确认密码" onBlur="dealPassword01()" value="">
                    <span id="span04" style="color:red;display:none">*两次密码不一致</span>
                </div>
                <div class="form-group has-feedback">
                    <input type="text" name="phoneNum" id="tel" class="form-control" placeholder="请输入电话号码" value="" onkeyup="value=value.replace(/[^\d]/g,'')">
                    <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                </div>
                <input type="hidden" name="status" value="1">
                <div class="row">
                    <!-- /.col -->
                    <div class="col-xs-4" style="margin-left: 110px">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">注册</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <a href="${pageContext.request.contextPath}/pages/login.jsp" class="text-center">我有账号，现在就去登录</a>
        </div>
        <!-- /.form-box -->
    </div>
    <!-- /.register-box -->

    <!-- jQuery 2.2.3 -->
    <!-- Bootstrap 3.3.6 -->
    <!-- iCheck -->
    <script
            src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>
    <script
            src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script
            src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script type="javascript">
        $(function() {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
    <script type="text/javascript">
        var s1=s3=s4=s5=false;
        function dealUsername(){
            var v1=document.getElementById("username");
            var v2=document.getElementById("span01");
            if(v1.value==null||v1.value===""){
                v2.style.display="";
            }else{
                s1=true;
                v2.style.display="none";
            }
        }


        function dealPassword(){
            var v1=document.getElementById("password");
            var v2=document.getElementById("span03");
            if(v1.value.length<8){
                v2.style.display="";
            }else{
                v2.style.display="none";
                s3=true;
            }
        }

        function dealPassword01(){
            var v1=document.getElementById("password01");
            var v2=document.getElementById("span04");
            var v3=document.getElementById("password");
            if(v1.value!==v3.value){
                v2.style.display="";
            }else{
                v2.style.display="none";
                s4=true;
            }
        }

        function dealEmail(){
            var v1=document.getElementById("email");
            var v2=document.getElementById("span05");
            if(v1.value.indexOf("@")===-1){
                v2.style.display="";
            }else{
                v2.style.display="none";
                s5=true;
            }
        }

        function dealSubmit() {
            var v1 = s1 && s3 && s4 && s5;
            if (!v1) {
                alert("注册信息还未填写完成！");
                return false;//不会跳转
            } else {
                alert("注册表单填写完成,点击确认进行提交！");
                return true;
            }
        }
    </script>
</body>

</html>