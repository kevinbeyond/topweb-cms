<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title托普威CMS</title>
    <meta name="renderer" content="webkit">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="/css/box.css" />
    <link rel="stylesheet" href="/css/font-awesome/font-awesome.min.css" />
    <script>
        var langtxt = {
                    "checkupdatetips":"对不起！您的权限不够，无法操作在线升级。",
                    "detection":"检测中",
                    "try_again":"重试"
                },
                anyid="",
                own_form="/admin/index.php?lang=cn&anyid=&n=index&c=index&",
                own_name="/admin/index.php?lang=cn&anyid=&n=index&",
                tem="/app/system/admin/templates/web/index/",
                adminurl="/admin/index.php?lang=cn&",
                renewable="",
                apppath="http://app.metinfo.cn/index.php?lang=cn&",
                jsrand="53175"
                ;
    </script>
    <!--[if IE]><script src="/js/html5.js" type="text/javascript"></script><![endif]-->
</head>
<body>
<input id="met_automatic_upgrade" type="hidden" value="1" />
<div class="metcms_cont v52fmbx" id="metcmsbox" data-metcms_v="5.3.17" data-patch="5">
    <div class="metcms_cont_left hidden-xs">
        <div class="metlogo">
            <a href="/" hidefocus="true">
                <img src="/images/logo.png" alt="TopWeb CMS" title="TopWeb CMS"/>
            </a>
        </div>
        <%--<dl class="jslist">
            <dt><a target="_blank" href="/index.php?lang=cn" title="网站首页"><i class="fa fa-home"></i>网站首页</a></dt>
        </dl>--%>

        <dl >
            <dt>内容</dt>
            <dd>
                <a href="/content/publish.html"  title="发布"  id="metinfo_metnav_68"><i class="fa fa-plus"></i>发布</a>
                <a href="/content/manage.html"  title="管理"  id="metinfo_metnav_29"><i class="fa fa-th-large"></i>管理</a>
            </dd>
        </dl>

        <dl class="jslist">
            <dt><i class="fa fa-money"></i>营销<i class="fa fa-angle-right"></i></dt>
            <dd>
                <%--<a href="/admin/app/stat/index.php?anyid=34&lang=cn"  title="访问统计"  id="metinfo_metnav_34"><i class="fa fa-line-chart"></i>访问统计</a>
                <a href="/admin/interface/online/index.php?anyid=71&lang=cn"  title="客服"  id="metinfo_metnav_71"><i class="fa fa-comments-o"></i>客服</a>
                <a href="/admin/index.php?n=seo&c=seo&a=doindex&anyid=37&lang=cn"  title="SEO"  id="metinfo_metnav_37"><i class="fa fa-check"></i>SEO</a>--%>
                <a href="/market/friendshiplink.html?pnow=1&linktype=3&guan=0"  title="友情链接"  id="metinfo_metnav_39"><i class="fa fa-link"></i>友情链接</a>
                    <a href="/um/uninersity.html?pnow=1&type=0&authentication=0  " title="大学管理" id="uninersity"><i style=" font-size: 14px;margin-left: 8px; display: inline;color: #A7C6DC" class="fa fa-link">&nbsp;&nbsp;&nbsp;&nbsp;大学管理</i></a>
            </dd>
        </dl>

        <%--<dl class="jslist">
            <dt><i class="fa fa-tachometer"></i>外观<i class="fa fa-angle-right"></i></dt>
            <dd>
                <a href="/admin/index.php?n=theme&c=theme&a=doindex&anyid=18&lang=cn"  title="电脑" target="_blank" id="metinfo_metnav_18"><i class="fa fa-desktop"></i>电脑</a>
                <a href="/admin/index.php?n=theme&c=theme&a=doindex&mobile=1&anyid=70&lang=cn"  title="手机" target="_blank" id="metinfo_metnav_70"><i class="fa fa-mobile"></i>手机</a>
            </dd>
        </dl>--%>

        <%--<dl >
            <dt>应用</dt>
            <dd>
                <a href="/admin/index.php?n=myapp&c=myapp&&a=doindex&anyid=44&lang=cn"  title="我的应用"  id="metinfo_metnav_44"><i class="fa fa-paper-plane"></i>我的应用</a>

                <a href="/admin/index.php?n=appstore&c=appstore&a=doindex&anyid=65&lang=cn"  title="应用商店"  id="metinfo_metnav_65"><i class="fa fa-cube"></i>应用商店</a>

            </dd>
        </dl>--%>

        <%--<dl class="jslist">
            <dt><i class="fa fa-user"></i>用户<i class="fa fa-angle-right"></i></dt>
            <dd>

                <a href="/admin/index.php?n=user&c=admin_user&a=doindex&anyid=73&lang=cn"  title="会员"  id="metinfo_metnav_73"><i class="fa fa-users"></i>会员</a>

            </dd>
        </dl>--%>

        <%--<dl class="jslist">
            <dt><i class="fa fa-shield"></i>安全<i class="fa fa-angle-right"></i></dt>
            <dd>

                <a href="/admin/system/safe.php?anyid=12&lang=cn"  title="安全与效率"  id="metinfo_metnav_12"><i class="fa fa-shield"></i>安全与效率</a>

            </dd>
        </dl>--%>

        <dl class="jslist">
            <dt><i class="fa fa-sliders"></i>设置<i class="fa fa-angle-right"></i></dt>
            <dd>
                <a href="/setting/baseWebInfo.html"  title="基本信息"  id="metinfo_metnav_57"><i class="fa fa-newspaper-o"></i>基本信息</a>
                <%--<a href="/admin/app/wap/wap.php?anyid=77&lang=cn"  title="手机版"  id="metinfo_metnav_77"><i class="fa fa-mobile"></i>手机版</a>--%>
                <a href="/setting/columns.html"  title="栏目"  id="metinfo_metnav_25"><i class="fa fa-sitemap"></i>栏目</a>
                <%--<a href="/admin/system/lang/lang.php?anyid=10&lang=cn"  title="语言"  id="metinfo_metnav_10"><i class="fa fa-language"></i>语言</a>--%>
                <%--<a href="/admin/system/img.php?anyid=11&lang=cn"  title="缩略图/水印"  id="metinfo_metnav_11"><i class="fa fa-picture-o"></i>缩略图/水印</a>--%>
            </dd>
        </dl>

    </div>
    <%--嵌入iframe--%>
    <div class="metcms_cont_right">
        <div class="metcms_cont_right_box">
            <iframe src="" frameborder="0"></iframe>
        </div>
    </div>
    <div class="clear"></div>
</div>
<script>
    var indexbox = 1;
    //手机版关闭时隐藏电脑外观
    if(1==0)
    {
        document.getElementById("metinfo_metnav_18").style.display="none";
    }
</script>
<script src="/js/sea.js"></script>
</body>
</html>