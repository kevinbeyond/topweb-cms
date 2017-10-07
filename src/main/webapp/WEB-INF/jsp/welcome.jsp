<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%--<script>
    function valide(){
        if(1){
            $('#column').attr('href','http://localhost:88/metinfo/admin/column/index.php?anyid=25&lang=cn');
        }else{
            alert("您没有此操作权限请联系管理员");
        }
    }

    function information(){
        if(1){
            $('#information').attr('href','http://localhost:88/metinfo/admin/index.php?n=webset&c=webset&a=doindex&anyid=57&lang=cn');
        }else{
            alert("您没有此操作权限请联系管理员");
        }
    }

    function fubu(){
        if(1){
            $('#fubu').attr('href','http://localhost:88/metinfo/admin/index.php?n=content&c=content&a=doadd&anyid=68&lang=cn');
        }else{
            alert("您没有此操作权限请联系管理员");
        }
    }
</script>--%>
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
    <link rel="stylesheet" href="/css/app/system/include/public/ui/admin/css/metinfo.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css?20171004" />
    <script>
        var tem="",
                jsrand="20170927";
    </script>
    <%--<script>
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
                anyid="",
                own_form="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=&n=index&c=index&",
                own_name="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=&n=index&",
                tem="http://localhost:88/metinfo/app/system/admin/templates/web/index/",
                adminurl="http://localhost:88/metinfo/admin/index.php?lang=cn&",
                apppath="http://app.metinfo.cn/index.php?lang=cn&",
                jsrand="20171004",
                editorname="ueditor"
                ;
    </script>--%>
    <!--[if IE]><script src="/js/public/js/html5.js" type="text/javascript"></script><![endif]-->
</head>
<body>
<div id="metcmsbox">

    <%--<script>
        function valid(){
            if(1){
                location.href = 'http://localhost:88/metinfo/admin/system/lang/lang.php?anyid=10&langaction=add&lang=cn&cs=1';
            }else{
                alert("您没有此操作权限请联系管理员");
            }
        }

    </script>--%>
    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">
                <ol class="breadcrumb position hidden-xs">
                    <li>简体中文</li>
                    <li>后台首页</li>
                </ol>
                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="adminuser" data-toggle="dropdown" aria-expanded="true">
                        admin
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="adminuser">
                        <li class="met-tool-list"><a href="#">修改个人资料</a></li>
                        <li class="met-tool-list"><a target="_top" href="#">退出</a></li>
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
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=&n=index&c=index&a=dohome">简体中文</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/index.php?lang=en&anyid=&n=index&c=index&a=dohome">English</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/index.php?lang=tc&anyid=&n=index&c=index&a=dohome">繁体中文</a></li>
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

                <div class="btn-group pull-right met-tool supportbox" >
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
                </div>
            </div>
        </div>
    </div>
    <%--<div class="navbar-collapse collapse metinfo_nav" role="navigation" aria-expanded="false">
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
    </div>--%>

    <div class="metappcontentbox">
        <div class="metinfotop">
        </div>
        <div class="clear"></div>

        <link rel="stylesheet" href="/css/app/system/admin/templates/web/index/css/metinfo.css?20171004" />
        <%--<script>
            var chartdata = '{"labels":["08:59","09:59","10:59","11:59","12:59","13:59","14:59","15:59","16:59"],"datasets":[{"fillColor":"#23b7e5","strokeColor":"#23b7e5","pointColor":"#23b7e5","pointStrokeColor":"#fff"},{"fillColor":"#7266ba","strokeColor":"#7266ba","pointColor":"#7266ba","pointStrokeColor":"#fff"},{"fillColor":"#23ad44","strokeColor":"#23ad44","pointColor":"#23ad44","pointStrokeColor":"#fff"}]}';
            var ownlangtxt = {"installations":"安装量"};
        </script>--%>
        <%--<!--[if lte IE 8]><script src="/js/app/system/admin/templates/web/index/js/excanvas.js"></script><![endif]-->
        <input id="met_automatic_upgrade" type="hidden" value="1" />--%>
        <div class="index_box">
            <section class="index_point hidden-xs">
                <h3>新手指引
                    <%--<a href="http://edu.metinfo.cn/" target="_blank" >米拓学院<i class="fa fa-angle-right"></i></a>--%>
                </h3>
                <div class="container-fluid">
                <ul>
                    <li>
                        <a href="#" id="information">
                            <i class="fa fa-newspaper-o"></i>
                            基本信息
                        </a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="/setting/columns.html" id="column">
                            <i class="fa fa-sitemap"></i>
                            配置栏目
                        </a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <%--<li>
                        <a href="http://localhost:88/metinfo/admin/index.php?n=theme&c=theme&a=doindex&anyid=18&lang=cn" target="_blank">
                            <i class="fa fa-tachometer"></i>
                            调试外观
                        </a>
                        <i class="fa fa-angle-right"></i>
                    </li>--%>
                    <li>
                        <a href="#" id="fubu">
                            <i class="fa fa-plus"></i>
                            发布内容
                        </a>
                        <%--<i class="fa fa-angle-right"></i>--%>
                    </li>
                    <%--<li>
                        <div class="bdsharebuttonbox"
                             data-bdUrl="http://localhost:88/metinfo/"
                             data-bdText="我用 MetInfo 搭建的新网站 http://localhost:88/metinfo/ 上线了，大家来看看！"
                             data-bdPic="http://localhost:88/metinfo/templates/metx5/view.jpg"
                             data-bdCustomStyle="http://localhost:88/metinfo/app/system/admin/templates/web/index/css/metinfox.css"
                             data-tag="share_1">
                            <a href="#" class="bds_more" data-cmd="more">
                                <i class="fa fa-share-alt"></i>分享心情
                            </a>
                        </div>
                    </li>--%>
                </ul>
            </section>
            <%--<section class="index_stat">
                <h3>访问概况</h3>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-7 index_stat_chart">
                            <div class="index_stat_chart_tips">
                                <ul>
                                    <li><i class="ip"></i>IP</li>
                                    <li><i class="uv"></i>独立访客</li>
                                    <li><i class="pv"></i>浏览次数（PV）</li>
                                </ul>
                                近8小时流量趋势
                            </div>
                            <canvas id="myChart" height="188"></canvas>
                        </div>
                        <div class="col-md-5 index_stat_table">
                            <table cellpadding="0" cellspacing="1" class="stat_table">
                                <tr>
                                    <th width="25%">日期</th>
                                    <th width="25%">PV</th>
                                    <th width="25%">独立访客</th>
                                    <th width="25%">IP</th>
                                </tr>

                                <tr>
                                    <td>今天</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>

                                <tr>
                                    <td>昨天</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>

                                <tr>
                                    <td>2017-09-25</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>

                                <tr>
                                    <td>2017-09-24</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>

                                <tr>
                                    <td>2017-09-23</td>
                                    <td>0</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </section>--%>
        </div>
        <%--<script src="/js/app/system/include/public/js/sea.js"></script>--%>
    </div>
</div>
<div class="footer">Powered by <b><a href="#" target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWeb Inc.</a></div>
</div>
</div>
<div class="clear"></div>
</div>
</div>
</body>
</html>