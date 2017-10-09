<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/newstyle.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css" />
    <script type="text/javascript">
        var basepath='../templates/met/images?20171004',
                lang = 'cn',
                adminurl='http://localhost:88/metinfo/admin/';
    </script>
    <script type="text/javascript" src="/js/public/js/jQuery1.7.2.js"></script>
    <script type="text/javascript"src="/js/admin/include/metvar.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/iframes.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/cookie.js"></script>
    <script type="text/javascript">
        /*ajax执行*/
        var metimgurl='../templates/met/images/';
        var depth='';
        $(document).ready(function(){
            ifreme_methei();
        });
    </script>
    <!--[if lte IE 9]>
    <SCRIPT language=JavaScript>
        function killErrors() {
            return true;
        }
        window.onerror = killErrors;
    </SCRIPT>
    <![endif]-->
    <script src="/js/app/system/include/public/js/seajs.js"></script>
    <script>
        var pub = 'http://localhost:88/metinfo/app/system/include/public/',
                siteurl='http://localhost:88/metinfo/',
                basepath='http://localhost:88/metinfo/admin/',
                apppath='http://app.metinfo.cn/index.php?lang=cn&',
                editorname='ueditor';
        seajs.config({
            paths: {
                'epl': 'examples',
                'pub': pub.substring(0,pub.length-1),
                'edturl':siteurl+'app/app/'+editorname
            },
            alias: {
                "jquery": "jquery/1.11.1/jquery_seajs.js"
            }
        });
        seajs.use("pub/js/examples/compatible"); //载入入口模块
    </script>

    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">
                <ol class="breadcrumb position hidden-xs">
                    <li>简体中文</li>
                    <li>内容</li>
                    <li><a href="/content/manage.html">管理</a></li>
                </ol>
                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="adminuser" data-toggle="dropdown" aria-expanded="true">
                        admin
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="adminuser">
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/admin/editor_pass.php?anyid=47&lang=cn">修改个人资料</a></li>
                        <li class="met-tool-list"><a target="_top" href="http://localhost:88/metinfo/admin/login/login_out.php">退出</a></li>
                    </ul>
                </div>
                <%--<div class="btn-group pull-right met-tool met-msecount-tool">
                    <button class="btn btn-default text-center dropdown-toggle msecount" type="button" onclick="location.href = 'http://localhost:88/metinfo/admin/index.php?n=system&c=news&a=doindex&lang=cn';">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-danger">0</span>
                    </button>
                </div>--%>

                <%--<div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="langlistbox" data-toggle="dropdown" aria-expanded="true">
                        <i class="fa fa-globe"></i><span class="hidden-xs">简体中文</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="langlistbox">
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/content/content.php?anyid=29&lang=cn&switch=1">简体中文</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/content/content.php?anyid=29&lang=en&switch=1">English</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/content/content.php?anyid=29&lang=tc&switch=1">繁体中文</a></li>
                        <li class="met-tool-list">
                            <button class="btn btn-success" type="submit" onclick="location.href = 'http://localhost:88/metinfo/admin/system/lang/lang.php?anyid=10&langaction=add&lang=cn&cs=1';"><i class="fa fa-plus"></i>新增网站语言</button>
                        </li>
                    </ul>
                </div>--%>

                <%--<div class="btn-group pull-right met-tool" >
                    <button class="btn btn-default dropdown-toggle" type="button" id="shouquan" data-toggle="dropdown" aria-expanded="true">
                        <i class="fa fa-bookmark"></i><span class="hidden-xs">商业授权</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="shouquan">
                        <li class="met-tool-list text-center"><a target="_blank" class="liaojie" href="http://www.metinfo.cn/web/product.htm">了解商业授权</a></li>
                        <li class="met-tool-list text-center">
                            <button class="btn btn-primary" type="submit" onclick="location.href = 'http://localhost:88/metinfo/admin/index.php?lang=cn&&n=system&c=authcode&a=doindex';">录入商业授权</button>
                        </li>
                    </ul>
                </div>--%>
                <%--<div class="btn-group pull-right met-tool supportbox" >
                    <a href="http://www.metinfo.cn/bangzhu/index.php?ver=metcms" class="btn btn-success dropdown-toggle" target="_blank">技术支持<a>
                        <!--<button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                            <i class="fa fa-life-ring"></i><span class="hidden-xs">技术支持</span>
                            <span class="caret"></span>
                            <input name="supporturldata" type="hidden" value="user_key=&siteurl=http://localhost:88/metinfo/" />
                        </button>-->
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                            <li class="met-tool-list text-center support_loading">获取中...</li>
                            <li class="met-tool-list text-center support_youok">处理时间：每天 </li>
                            <li class="met-tool-list text-center support_youok"><button class="btn btn-primary" type="submit">工单</button></li>
                            <li class="divider support_youok"></li>
                            <li class="met-tool-list text-center support_youok">在线时间：工作日</li>
                            <li class="met-tool-list text-center support_youok"><button class="btn btn-info supportmechatlink" type="submit">点我咨询</button></li>
                            <li class="divider support_youok"></li>
                            <li class="met-tool-list text-center support_desc">于 <span id="support_expiretime"></span> 到期</li>
                            <li class="met-tool-list text-center support_desc"><a href="http://localhost:88/metinfo/admin/index.php?lang=cn&n=appstore&c=support&a=doindex">续费服务</a></li>
                            <li class="met-tool-list text-center support_no"><span class="text-danger">尚未开通服务</span>
                                <a href="http://www.metinfo.cn/news/shownews1248.htm" target="_blank">什么是技术支持？</a>
                            </li>
                            <li class="met-tool-list text-center support_no">
                                <button class="btn btn-primary" type="submit" onclick="location.href = 'http://localhost:88/metinfo/admin/index.php?lang=cn&n=appstore&c=support&a=doindex';">开通服务</button>
                            </li>
                        </ul>
                </div>--%>
            </div>
        </div>
    </div>
    <SCRIPT language=JavaScript>
        var langtime;
        $(".metcms_top_right_box li.lang").hover(function(){
            clearTimeout(langtime);
            var dl = $(this).find("dl");
            langtime = setTimeout(function () { dl.show();  }, "200");
        },function(){
            clearTimeout(langtime);
            var dl = $(this).find("dl");
            dl.hide();
        });
        var str = window.parent.document.URL;
        var s = str.indexOf(lang);
        var str1 = window.location.href;
        var s1 = str1.indexOf('switch=1');
        if(s == '-1' && s1 != '-1'){
            str = str.replace(/(lang=[^#]*#)/g,"lang="+lang+"#");
            parent.location.href=str;
        }
    </SCRIPT>
    <title>网站基本信息设置</title>
    <style>
        img{ behavior: url(../templates/met/images/iepngfix.htc); }
        .Layer {float: left;position: absolute;left: 81px;top: 13px;font-weight: normal;color:#666;}
    </style>

</head>
<body>

<script type="text/javascript">
    function metreturn(url){
        if(url){
            location.href=url;
        }else if($.browser.msie){
            history.go(-1);
        }else{
            history.go(-1);
        }
    }
</script>
<div class="metinfotop">
    <div class="position">简体中文 > 内容 > <a href="/content/manage.html">管理</a></div>
    <div class="return">
        <a href="content.php?anyid=29&lang=cn&met_content_type=2" title="切换为按模块分类" class='modular_display'>按模块分类</a>
        <a href="content.php?anyid=29&lang=cn&met_content_type=1" title="切换为按栏目分类" class='column_hidden'>按栏目分类</a>
    </div>
</div>
<div class="clear"></div>
<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>
</div>
<!--
	<div align="right" class="v52fmbx_dings">

	</div>
-->
<h3 class="v52fmbx_ding search" id="topsearch" >
    <form  method='POST' name='myform' onSubmit='return Checkmember();' action='content.php?anyid=29&search=&action=search&lang=cn' target='_self'>
        <div >
        </div>
        <div>
            <label class="Layer">请输入栏目名称</label>
            <input id='program' name='program' type='text' size='24'  class='input_text stxt'/>
        </div>
    </form>

    <div class="topsearch-rigth">
        <a href="content.php?anyid=29&lang=cn&met_content_type=2" title="切换为按模块分类" class='modular_display'>按模块分类</a>
        <a href="content.php?anyid=29&lang=cn&met_content_type=1" title="切换为按栏目分类" class='column_hidden'>按栏目分类</a>
        </span>

        <a href="recycle/index.php?anyid=33&amp;lang=cn" title="回收站" style="color: #23b7e5;text-decoration: none;padding-left:0px !important;">
            <i class="fa fa-recycle"></i>回收站</a>
        <a href="../app/batch/img.php?anyid=32&lang=cn&cs=3" style="color: #23b7e5;text-decoration: none;padding-left:0px !important;">批量操作</a>
    </div>
</h3>


<div class="metv5box">
    <ul class="columnlist" id="test">
        <%--<li class="contlist" >
            <div class="box">
                <a href='/content/modultList.html?module=1'>
                    <img src="/images/metv5/tubiao_1.png?new" width='70' height='70' />
                    <h2>简介模块</h2>
                </a>
            </div>
        </li>--%>

        <li class="contlist" >
            <div class="box">
                <a href='/content/modultList.html?module=2'>
                    <img src="/images/metv5/tubiao_2.png?new" width='70' height='70' />
                    <h2>文章模块</h2>
                </a>
            </div>
        </li>

        <%--<li class="contlist" >
            <div class="box">
                <a href='../index.php?n=content&c=product_admin&a=doindex&module=3&lang=cn&anyid=29'>
                    <img src="../templates/met/images/metv5/tubiao_3.png?new" width='70' height='70' />
                    <h2>产品模块</h2>
                </a>
            </div>
        </li>--%>

        <%--<li class="contlist" >
            <div class="box">
                <a href='download/index.php?module=4&lang=cn&anyid=29'>
                    <img src="../templates/met/images/metv5/tubiao_4.png?new" width='70' height='70' />
                    <h2>下载模块</h2>
                </a>
            </div>
        </li>--%>

        <li class="contlist" >
            <div class="box">
                <a href='/content/modultList.html?module=3'>
                    <img src="/images/metv5/tubiao_5.png?new" width='70' height='70' />
                    <h2>图片模块</h2>
                </a>
            </div>
        </li>

        <%--<li class="contlist" >
            <div class="box">
                <a href='job/index.php?class1=36&lang=cn&anyid=29'>
                    <img src="../templates/met/images/metv5/tubiao_6.png?new" width='70' height='70' />
                    <h2>招聘模块</h2>
                </a>
            </div>
        </li>--%>

        <%--<li class="contlist" >
            <div class="box">
                <a href='message/index.php?class1=25&lang=cn&anyid=29'>
                    <img src="../templates/met/images/metv5/tubiao_7.png?new" width='70' height='70' />
                    <h2>留言系统</h2>
                </a>
            </div>
        </li>--%>

        <%--<li class="contlist" >
            <div class="box">
                <a href='feedback/index.php?class1=31&lang=cn&anyid=29'>
                    <img src="../templates/met/images/metv5/tubiao_8.png?new" width='70' height='70' />
                    <h2>反馈系统</h2>
                </a>
            </div>
        </li>--%>
    </ul>
</div>
<div class="clear"></div>
</div>
</div>
<script type="text/javascript">
    function searchzdx(dom,label,color1,color2){
        if(dom.val()=='')label.show();
        dom.focus(function(){
            label.css("color",color2);
        });
        dom.keyup(function(){
            if($(this).val()==''){
                label.show();
            }else{
                label.hide();
            }
        });
        dom.focusout(function(){
            if($(this).val()==''){
                label.show();
                label.css("color",color1);
            }
        });
    }
    searchzdx($('#topsearch .stxt'),$('#topsearch label'),"#666","#ccc");
    var element = document.getElementById("program");
    document.getElementById("program").onfocus=function(){
        if(!+[1,]){
            element.onpropertychange = webChange;
        }else{
            element.addEventListener("input",webChange,false);
        }
    }
    function webChange(){
        $.ajax({
            url: 'originate.php?lang=cn&id='+escape(element.value),
            type: 'GET',
            cache: false,
            success: function(data) {
                $('#test').html(data);
            }
        });
    }
    $('.contmorehver').hover(
            function () {
                $(this).find('div.contmore').show();
            },
            function () {
                $(this).find('div.contmore').hide();
            }
    );
    function metHeight(group,type) {
        tallest = 0;
        group.each(function() {
            thisHeight = $(this).height();
            if(thisHeight > tallest) {
                tallest = thisHeight;
            }
        });
        if(type==1){
            group.each(function(){
                if($(this).outerHeight(true)<tallest){
                    var ht = (tallest - $(this).outerHeight(true))/2;
                    $(this).css('padding-top',ht+'px');
                    $(this).css('padding-bottom',ht+'px');
                }
            });
        }else{
            group.height(tallest);
            group.each(function(){
                var h = tallest - $(this).find('.img').outerHeight(true);
                var x = h - $(this).find('.title').outerHeight(true);
                if(x>0){
                    var ht = (x/2)+3;
                    $(this).find('.title').css('padding-top',ht+'px');
                    $(this).find('.title').css('padding-bottom',ht+'px');
                }
            });
        }
    }
    metHeight($('.box'));
    metHeight($('.contlist .text'),1);
    function Focus(obj) {
        if(obj.value==obj.defaultValue){
            obj.value='';
        }
    }
    function Blur(obj) {
        if(obj.value==''){
            obj.value=obj.defaultValue;

        }
    }
</script>
<div class="clear"></div>
<div class="footer">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.18</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></div>
</body>
</html>