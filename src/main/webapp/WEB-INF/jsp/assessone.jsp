<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        var basepath='/',
                lang = 'cn',
                adminurl='/';
    </script>

    <script type="text/javascript" src="/js/public/js/jQuery1.7.2.js"></script>
    <script type="text/javascript"src="/js/admin/include/metvar.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/iframes.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/cookie.js"></script>
    <script type="text/javascript">
        /*ajax执行*/
        var metimgurl='/images/';
        var depth='../';
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
        var pub = '/js/app/system/include/public/',
                siteurl='http://demo.metinfo.cn/',
                basepath='/',
                apppath='',
                editorname='ueditor';
        seajs.config({
            paths: {
                'epl': 'examples',
                'pub': pub.substring(0,pub.length-1),
                'edturl':'/js/app/app/'+editorname
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
                    <li>营销</li>
                    <li><a href="#">友情链接</a></li>
                </ol>
                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="adminuser" data-toggle="dropdown" aria-expanded="true">
                        admin
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="adminuser">
                        <li class="met-tool-list">
                            <a href="#">修改个人资料</a>
                        </li>
                        <li class="met-tool-list">
                            <a target="_top" href="#">退出</a>
                        </li>
                    </ul>
                </div>
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


    <title>修改友情链接</title>
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

    <div class="position">简体中文 > 营销 > <a href="../../seo/link/index.php?anyid=39&lang=cn">友情链接</a> > 添加(友情链接)</div>


    <div class="return"><a href="javascript:metreturn('index.php?anyid=39&lang=cn');">&lt;&lt;返回</a></div>

</div>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>


</div>


<form  method="POST" name="myform" enctype="multipart/form-data" action="/ass/upnoe.html" target="_self">
    <input name="lang" type="hidden"  value="cn">
    <input name="id" type="hidden"  value="">
    <div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
        <div class="v52fmbx_tbbox">
            <div class="v52fmbx">
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>是否处理：</dt>
                        <dd>
                            <label><input name="chuli" type="radio" class="radio" value="1"   <c:if test="${assess.chuli==1}">checked="checked"</c:if> />未处理</label>
                            <label><input name="chuli" type="radio" class="radio" value="2"  <c:if test="${assess.chuli==2}">checked="checked"</c:if>/>已处理</label>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>id：</dt>
                        <dd>
                            <input readonly="readonly" name="aid" required="required" type="text" class="text nonull" value="${assess.id}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>提交姓名：</dt>
                        <dd>
                            <input readonly="readonly" name="weburl" required="required" type="text" class="text nonull" value="${assess.aname}" />
                        </dd>
                    </dl>
                </div>


                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>手机号：</dt>
                        <dd>
                            <input name="webname" readonly="readonly" required="required" type="text" class="text nonull" value="${assess.phone}" />
                        </dd>
                    </dl>
                </div>


                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>描述：</dt>
                        <dd>
                            <textarea name="contact" cols="60" readonly="readonly" rows="5" class="textarea gen">${assess.content}</textarea>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_submit">
                    <input type="submit" name="Submit" value="保存" class="submit" />
                </div>
            </div>
        </div>
    </div>
    <div class="footer">Powered by <b><a href="#" target=_blank>TopWebS CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWebS CMS</a></div>
</form>
</body>
</html>