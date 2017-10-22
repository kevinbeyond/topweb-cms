<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>后台登录 - 托普威CMS</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Language" content="zh-cn"/>
    <meta content="托普威CMS"/>
    <link rel="stylesheet" type="text/css" href="/css/topweb.css">
</head>
<style>
    html,body{background:#fbfbfb;}
</style>
<body id="login">
    <div class="login-min">
        <div class="login-left">
            <div style=" border-right:1px solid #fff; padding:0px 0px 20px;">
                <a href="/" style="font-size:0px;" target="_blank" title="托普威CMS" class="img">
                    <img src="/images/login-logo.jpg" alt="托普威CMS" title="托普威CMS" width="300" />
                </a>
                <p>打造具有营销价值的企业网站</p>
            </div>
        </div>
        <div class="login-right">
            <h1 class="login-title">管理员登录</h1>
            <div>
                <%--<form method="post" action="login_check.php?langset=cn" name="main_login" onSubmit="return check_main_login()">--%>
                <form:form modelAttribute="user" method="post" action="/index.html">
                    <%--<input type="hidden" name="action" value="login" />--%>
                    <p style="height:22px; margin-top:0px;">
                    </p>
                    <p>
                        <label>用户名</label>
                        <form:input path="username" class="text" />
                        <form:errors path="username" class="error-tip"/>
                    </p>
                    <p>
                        <label>密码</label>
                        <form:password path="password" class="text" />
                        <form:errors path="password" class="error-tip"/>
                    </p>
                    <p class="login-code">

                    </p>
                    <p class="login-submit">
                        <input type="submit" name="Submit" value="登录" />
                        <%--<a href="#">忘记密码?</a>--%>
                    </p>
                </form:form>
            </div>
        </div>
        <div class="clear"></div>
    </div>
<div class="footer" style="margin-top:80px; display:block!important;">
    Powered by <b><a href="/" target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href=http://www.topweb.com target=_blank>TopWeb Inc.</a></div>
<!--[if IE 6]>
<script src="/js/admin/templates/met/images/js/IE6-png.js" type="text/javascript"></script>
<script type="text/javascript">DD_belatedPNG.fix('.bg,img');</script>
<![endif]-->
</body>
<script type="text/javascript">
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
</html>

