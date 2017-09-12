<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>后台登录 - MetInfo企业网站管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Language" content="zh-cn"/>
    <meta name="author" content="www.metinfo.cn"/>
    <meta name="copyright" content="www.metinfo.cn"/>
    <meta content="MetInfo企业网站管理系统后台登录"/>
    <link rel="stylesheet" type="text/css" href="/css/topweb.css">
    <script type="text/javascript" src="../../public/js/metinfo-min.js"></script>
</head>
<script type="text/javascript">
    function check_main_login(){
        var name = $("input[name='login_name']");
        var pass = $("input[name='login_pass']");
        if(name.val() == ''){
            alert('用户名不能为空');
            name.focus();
            return false;
        }
        if(pass.val() == ''){
            alert('密码不能为空');
            pass.focus();
            return false;
        }
    }
    function pressCaptcha(obj){
        obj.value = obj.value.toUpperCase();
    }
    function metfocus(intext){
        intext.focus(function(){
            $(this).addClass('metfocus');
        });
        intext.focusout(function(){
            $(this).removeClass('metfocus');
        });
    }
</script>
<style>
    html,body{  background:#fbfbfb;}
</style>
<body id="login">
<div class="login-min">
    <div class="login-left">
        <div style=" border-right:1px solid #fff; padding:0px 0px 20px;">

            <a href="http://www.metinfo.cn" style="font-size:0px;" target="_blank" title="MetInfo企业网站管理系统" class="img">

                <img src="/images/login-logo.png" alt="MetInfo企业网站管理系统" title="MetInfo企业网站管理系统" />
            </a>
            <p>打造具有营销价值的企业网站</p>
        </div>
    </div>
    <div class="login-right">
        <h1 class="login-title">管理员登录</h1>
        <div>
            <%--<form method="post" action="login_check.php?langset=cn" name="main_login" onSubmit="return check_main_login()">--%>

            <form:form modelAttribute="user" method="post" action="/result.html">
                <%--<input type="hidden" name="action" value="login" />--%>
                <p style="height:22px; margin-top:0px;">

                </p>
                <p>
                    <label>用户名</label>
                    <form:input path="username" class="text" />
                </p>
                <p>
                    <label>密码</label>
                    <form:password path="password" class="text" />
                </p>
                <p class="login-code">

                </p>
                <p class="login-submit">
                    <input type="submit" name="Submit" value="登录" />
                    <a href="../admin/getpassword.php">忘记密码?</a>
                </p>
            </form:form>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="footer" style="margin-top:80px; display:block!important;">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.17</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></div>
<!--[if IE 6]>
<script src="../templates/met/images/js/IE6-png.js" type="text/javascript"></script>
<script type="text/javascript">DD_belatedPNG.fix('.bg,img');</script>
<![endif]-->
</body>
</html>

