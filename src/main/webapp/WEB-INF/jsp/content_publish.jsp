<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>托普威CMS</title>
    <meta name="renderer" content="webkit">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/app/system/include/public/ui/admin/css/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/newstyle.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css" />

    <script>
        var langtxt = {
                    "jsx15":"上传",
                    "js35":"上传临时文件夹（upload_tmp_dir）不可写或者域名/后台文件夹/include/uploadify.php没有访问权限。",
                    "jsx17":"上传成功！",
                    "formerror1":"请填写此字段。",
                    "formerror2":"请从这些选项中选择一个。",
                    "formerror3":"请输入正确的手机号码。",
                    "formerror4":"请输入正确的Email地址。",
                    "formerror5":"两次输入的密码不一致，请重新输入。",
                    "formerror6":"请输入至少&metinfo&个字符。",
                    "formerror7":"输入不能超过&metinfo&个字符。",
                    "formerror8":"输入的字符数必须在&metinfo&之间。",
                    "js46":"不能重复",
                    "js23":"没有选中的记录!",
                    "checkupdatetips":"对不起！您的权限不够，无法操作在线升级。",
                    "detection":"检测中",
                    "try_again":"重试"
                },
                anyid="68",
//                own_form="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=68&n=content&c=content&",
//                own_name="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=68&n=content&",
                  tem="/js/app/system/admin/templates/web/content/",
                  adminurl="/",
//                apppath="http://app.metinfo.cn/index.php?lang=cn&",
                jsrand="201710071626",
                editorname="ueditor"
                ;
    </script>
    <!--[if IE]><script src="/js/public/js/html5.js" type="text/javascript"></script><![endif]-->
</head>
<body>
<div id="metcmsbox">

    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">
                <ol class="breadcrumb position hidden-xs">
                    <li>简体中文</li>
                    <li>内容</li>
                    <li><a href="/content/publish.html">发布</a></li>
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
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/index.php?n=content&c=content&a=doadd&anyid=68&lang=cn">简体中文</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/index.php?n=content&c=content&a=doadd&anyid=68&lang=en">English</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/index.php?n=content&c=content&a=doadd&anyid=68&lang=tc">繁体中文</a></li>
                        <li class="met-tool-list">
                            <button class="btn btn-success" type="submit" onclick="valid()"><i class="fa fa-plus"></i>新增网站语言</button>
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
                    <!--<a href="http://www.metinfo.cn/bangzhu/index.php?ver=metcms" class="btn btn-success dropdown-toggle" target="_blank">技术支持<a>
                    <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                        <i class="fa fa-life-ring"></i><span class="hidden-xs">技术支持</span>
                        <span class="caret"></span>
                        <input name="supporturldata" type="hidden" value="user_key=&siteurl=http://localhost:88/metinfo/" />
                    </button>
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
                    </ul>-->
                </div>--%>
            </div>
        </div>
    </div>

    <div class="metappcontentbox">
        <div class="metinfotop">
        </div>
        <div class="clear"></div>

        <form method="POST" class="ui-from" name="myform" action="/content/columnPublish.html" target="_self">
            <div class="v52fmbx content_add">
                <dl>
                    <dt>发布至</dt>
                    <dd class="ftype_select-linkage">
                        <div class="fbox" style="float:left;" data-selectdburl="/setting/cascadeColumns?classtype=1">
                            <select name="class1" class="prov" data-required="1"></select>
                            <select name="add_class2" class="city"></select>
                            <select name="add_class3" class="dist"></select>
                        </div>

                        <span class="tips" style="float:left; margin-left:20px;">
                            <a href="/setting/columns.html" >配置栏目</a>
                        </span>

                    </dd>
                </dl>
                <dl class="noborder">
                    <dt> </dt>
                    <dd>
                        <input type="submit" name="submit" value="下一步" class="submit">
                    </dd>
                </dl>
            </div>
        </form>

        <script src="/js/app/system/include/public/js/sea.js"></script>

    </div>
</div>
<div class="footer">Powered by <b><a href=# target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href=# target=_blank>TopWeb CMS</a></div>
</div>
</div>
<div class="clear"></div>
</div>
</div>
</body>
</html>
