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

            </div>
        </div>
    </div>

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
                        <a href="/setting/baseWebInfo.html" id="information">
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