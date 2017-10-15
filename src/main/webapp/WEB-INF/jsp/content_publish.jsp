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
