<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>MetInfo企业网站管理系统</title>
    <meta name="renderer" content="webkit">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="http://localhost:88/metinfo/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/ui/admin/css/metinfo.css" />
    <link rel="stylesheet" href="http://localhost:88/metinfo/app/system/include/public/font-awesome/css/font-awesome.min.css?20171004" />
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
                anyid="57",
                own_form="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=57&n=webset&c=webset&",
                own_name="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=57&n=webset&",
                tem="http://localhost:88/metinfo/app/system/admin/templates/web/webset/",
                adminurl="http://localhost:88/metinfo/admin/index.php?lang=cn&",
                apppath="http://app.metinfo.cn/index.php?lang=cn&",
                jsrand="20171004",
                editorname="ueditor"
                ;
    </script>
    <!--[if IE]><script src="http://localhost:88/metinfo/public/js/html5.js" type="text/javascript"></script><![endif]-->
</head>
<body>
<div id="metcmsbox">

    <script>
        function valid(){
            if(1){
                location.href = 'http://localhost:88/metinfo/admin/system/lang/lang.php?anyid=10&langaction=add&lang=cn&cs=1';
            }else{
                alert("您没有此操作权限请联系管理员");
            }
        }

    </script>

    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">

                <ol class="breadcrumb position hidden-xs">
                    <li>简体中文</li>

                    <li>设置</li>

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=webset&c=webset&a=doindex&anyid=57&lang=cn">基本信息</a></li>
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

            </div>
        </div>
    </div>
    <div class="navbar-collapse collapse metinfo_nav" role="navigation" aria-expanded="false">
        <ul class="nav navbar-nav visible-xs-block">

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">内容<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=content&c=content&a=doadd&anyid=68&lang=cn"  title="发布"><i class="fa fa-plus"></i>发布</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/content/content.php?anyid=29&lang=cn"  title="管理"><i class="fa fa-th-large"></i>管理</a></li>

                </ul>
            </li>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-money"></i>营销<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/app/stat/index.php?anyid=34&lang=cn"  title="访问统计"><i class="fa fa-line-chart"></i>访问统计</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/interface/online/index.php?anyid=71&lang=cn"  title="客服"><i class="fa fa-comments-o"></i>客服</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=seo&c=seo&a=doindex&anyid=37&lang=cn"  title="SEO"><i class="fa fa-check"></i>SEO</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/seo/link/index.php?anyid=39&lang=cn"  title="友情链接"><i class="fa fa-link"></i>友情链接</a></li>

                </ul>
            </li>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-tachometer"></i>外观<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=theme&c=theme&a=doindex&anyid=18&lang=cn"  title="电脑"><i class="fa fa-desktop"></i>电脑</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=theme&c=theme&a=doindex&mobile=1&anyid=70&lang=cn"  title="手机"><i class="fa fa-mobile"></i>手机</a></li>

                </ul>
            </li>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">应用<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=myapp&c=myapp&&a=doindex&anyid=44&lang=cn"  title="我的应用"><i class="fa fa-paper-plane"></i>我的应用</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=appstore&c=appstore&a=doindex&anyid=65&lang=cn"  title="应用商店"><i class="fa fa-cube"></i>应用商店</a></li>

                </ul>
            </li>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>用户<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=user&c=admin_user&a=doindex&anyid=73&lang=cn"  title="会员"><i class="fa fa-users"></i>会员</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/admin/index.php?anyid=47&lang=cn"  title="管理员"><i class="fa fa-users"></i>管理员</a></li>

                </ul>
            </li>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-shield"></i>安全<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/system/safe.php?anyid=12&lang=cn"  title="安全与效率"><i class="fa fa-shield"></i>安全与效率</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/system/database/index.php?anyid=13&lang=cn"  title="备份与恢复"><i class="fa fa-database"></i>备份与恢复</a></li>

                </ul>
            </li>

            <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-sliders"></i>设置<b class="caret"></b></a>
                <ul class="dropdown-menu">

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=webset&c=webset&a=doindex&anyid=57&lang=cn"  title="基本信息"><i class="fa fa-newspaper-o"></i>基本信息</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/app/wap/wap.php?anyid=77&lang=cn"  title="手机版"><i class="fa fa-mobile"></i>手机版</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/column/index.php?anyid=25&lang=cn"  title="栏目"><i class="fa fa-sitemap"></i>栏目</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/system/lang/lang.php?anyid=10&lang=cn"  title="语言"><i class="fa fa-language"></i>语言</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/system/img.php?anyid=11&lang=cn"  title="缩略图/水印"><i class="fa fa-picture-o"></i>缩略图/水印</a></li>

                    <li><a href="http://localhost:88/metinfo/admin/index.php?n=about&c=about&a=doindex&anyid=75&lang=cn"  title="检测更新"><i class="fa fa-info-circle"></i>检测更新</a></li>

                </ul>
            </li>

        </ul>
    </div>

    <div class="metappcontentbox">

        <div class="metinfotop">

            > 第三方代码


        </div>
        <div class="clear"></div>

        <div class="stat_list">

            <a  title="网站信息" href="/setting/baseWebInfo.html">网站信息</a>
            <%--<a  title="邮件发送设置" href="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=57&n=webset&c=webset&&a=doemailset">邮件发送设置</a>--%>
            <a class='now' title="第三方代码" href="/setting/base3rdInfo.html">第三方代码</a>

        </div>
        <div class="clear"></div>

        <form method="POST" class="ui-from" name="myform" action="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=57&n=webset&c=webset&a=dotpeditor" target="_self">
            <div class="v52fmbx">
                <dl>
                    <dd class="ftype_description">
                        第三方代码（一般用于放置百度商桥代码、站长统计代码、谷歌翻译代码等）
                    </dd>
                </dl>
                <dl>
                    <dt>顶部代码</dt>
                    <dd class="ftype_textarea">
                        <div class="fbox">
                            <textarea name="met_headstat" style="width:80%;">1111111111111111111111111111111111111111111111</textarea>
                        </div>
                        <span class="tips">代码会放在 &lt;/head&gt; 标签以上</span>

                    </dd>
                </dl>
                <dl>
                    <dt>底部代码</dt>
                    <dd class="ftype_textarea">
                        <div class="fbox">
                            <textarea name="met_footstat" style="width:80%;">111111111111111111111111111111111111111111111111111</textarea>
                        </div>
                        <span class="tips">代码会放在 &lt;/body&gt; 标签以上</span>

                    </dd>
                </dl>
                <dl class="noborder">
                    <dt> </dt>
                    <dd>
                        <input type="submit" name="submit" value="保存" class="submit">
                    </dd>
                </dl>
            </div>
        </form>

        <script src="http://localhost:88/metinfo/app/system/include/public/js/sea.js?20171004"></script>

    </div>
</div>
<div class="footer">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.18</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></div>
</div>
</div>
<div class="clear"></div>
</div>
</div>
</body>
</html>