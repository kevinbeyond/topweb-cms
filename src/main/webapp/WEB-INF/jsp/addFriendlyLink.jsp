<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css?53185" />
    <link rel="stylesheet" type="text/css" href="/css/images/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/newstyle.css" />
    <link rel="stylesheet" type="text/css" href="/css/font-awesome/font-awesome.min.css" />
    <script type="text/javascript">var basepath='../../templates/met/images?53185',lang = 'cn',adminurl='http://demo.metinfo.cn/admin/';</script>

    <script type="text/javascript" src="../../../public/js/jQuery1.7.2.js?53185"></script>

    <script type="text/javascript"src="../../include/metvar.js?53185"></script>
    <script type="text/javascript" src="../../templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js?53185"></script>
    <script type="text/javascript" src="../../templates/met/images/js/iframes.js?53185"></script>
    <script type="text/javascript" src="../../templates/met/images/js/cookie.js?53185"></script>
    <script type="text/javascript">
        /*ajax执行*/
        var metimgurl='../../templates/met/images/';
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
    <script src="http://demo.metinfo.cn/app/system/include/public/js/seajs.js"></script>
    <script>
        var pub = 'http://demo.metinfo.cn/app/system/include/public/',siteurl='http://demo.metinfo.cn/',basepath='http://demo.metinfo.cn/admin/',apppath='http://app.metinfo.cn/index.php?lang=cn&',editorname='ueditor';
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

                    <li>营销</li>



                    <li><a href="http://demo.metinfo.cn/admin/seo/link/index.php?anyid=39&lang=cn">友情链接</a></li>

                </ol>
                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="adminuser" data-toggle="dropdown" aria-expanded="true">
                        admin
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="adminuser">
                        <li class="met-tool-list"><a href="http://demo.metinfo.cn/admin/admin/editor_pass.php?anyid=47&lang=cn">修改个人资料</a></li>
                        <li class="met-tool-list"><a target="_top" href="http://demo.metinfo.cn/admin/login/login_out.php">退出</a></li>
                    </ul>
                </div>
                <div class="btn-group pull-right met-tool met-msecount-tool">
                    <button class="btn btn-default text-center dropdown-toggle msecount" type="button" onclick="location.href = 'http://demo.metinfo.cn/admin/index.php?n=system&c=news&a=doindex&lang=cn';">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-danger">0</span>
                    </button>
                </div>

                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="langlistbox" data-toggle="dropdown" aria-expanded="true">
                        <i class="fa fa-globe"></i><span class="hidden-xs">简体中文</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="langlistbox">

                        <li class="met-tool-list"><a href="http://demo.metinfo.cn/admin/seo/link/content.php?action=add&lang=cn&anyid=39&switch=1">简体中文</a></li>

                        <li class="met-tool-list"><a href="http://demo.metinfo.cn/admin/seo/link/content.php?action=add&lang=en&anyid=39&switch=1">English</a></li>

                        <li class="met-tool-list"><a href="http://demo.metinfo.cn/admin/seo/link/content.php?action=add&lang=tc&anyid=39&switch=1">繁体中文</a></li>


                        <li class="met-tool-list">
                            <button class="btn btn-success" type="submit" onclick="location.href = 'http://demo.metinfo.cn/admin/system/lang/lang.php?anyid=10&langaction=add&lang=cn&cs=1';"><i class="fa fa-plus"></i>新增网站语言</button>
                        </li>
                    </ul>
                </div>

                <div class="btn-group pull-right met-tool" >
                    <button class="btn btn-default dropdown-toggle" type="button" id="shouquan" data-toggle="dropdown" aria-expanded="true">
                        <i class="fa fa-bookmark"></i><span class="hidden-xs">商业授权</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="shouquan">

                        <li class="met-tool-list text-center"><a target="_blank" class="liaojie" href="http://www.metinfo.cn/web/product.htm">了解商业授权</a></li>
                        <li class="met-tool-list text-center">
                            <button class="btn btn-primary" type="submit" onclick="location.href = 'http://demo.metinfo.cn/admin/index.php?lang=cn&&n=system&c=authcode&a=doindex';">录入商业授权</button>
                        </li>


                    </ul>
                </div>
                <div class="btn-group pull-right met-tool supportbox" >
                    <a href="http://www.metinfo.cn/bangzhu/index.php?ver=metcms" class="btn btn-success dropdown-toggle" target="_blank">技术支持<a>
                        <!--<button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                            <i class="fa fa-life-ring"></i><span class="hidden-xs">技术支持</span>
                            <span class="caret"></span>
                            <input name="supporturldata" type="hidden" value="user_key=&siteurl=http://demo.metinfo.cn/" />
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
                            <li class="met-tool-list text-center support_desc"><a href="http://demo.metinfo.cn/admin/index.php?lang=cn&n=appstore&c=support&a=doindex">续费服务</a></li>
                            <li class="met-tool-list text-center support_no"><span class="text-danger">尚未开通服务</span>
                                <a href="http://www.metinfo.cn/news/shownews1248.htm" target="_blank">什么是技术支持？</a>
                            </li>
                            <li class="met-tool-list text-center support_no">
                                <button class="btn btn-primary" type="submit" onclick="location.href = 'http://demo.metinfo.cn/admin/index.php?lang=cn&n=appstore&c=support&a=doindex';">开通服务</button>
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


<form  method="POST" name="myform" enctype="multipart/form-data" action="/market/addinfo.html" target="_self">
    <input name="lang" type="hidden"  value="cn">
    <input name="id" type="hidden"  value="">
    <div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
        <div class="v52fmbx_tbbox">
            <div class="v52fmbx">
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>链接类型：</dt>
                        <dd>
                            <label><input name="link_type" type="radio" class="radio" value="1"   checked />文字链接</label>
                            <label><input name="link_type" type="radio" class="radio" value="2"  />LOGO链接</label>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站地址：</dt>
                        <dd>
                            <input name="weburl" required="required" type="text" class="text nonull" value="" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站LOGO：</dt>
                        <dd>

                            <input name="met_upsql1" type="file" id="file_upload" />
                            <script type="text/javascript">
                                $(document).ready(function(){
                                    metuploadify('#file_upload','upimage','weblogo');
                                });
                            </script>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站标题：</dt>
                        <dd>
                            <input name="webname" required="required" type="text" class="text nonull" value="" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站关键词：</dt>
                        <dd>
                            <input name="info" required="required" type="text" class="text" value="" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>排序：</dt>
                        <dd>
                            <input name="orderno" required="required" type="number" min="0" max="1000" class="text mid" value="" />
                            <span class="tips">数字越大排序越靠前</span>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>可选属性：</dt>
                        <dd>
                            <label><input name="show_ok" type="checkbox" class="checkbox" value="1" checked>审核通过</label>
                            <input name="show_ok" type="hidden" value="2"/>
                            <label><input name="com_ok" type="checkbox" class="checkbox" value="1"  checked>推荐站点</label>
                            <input name="com_ok" type="hidden" value="2"/>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>联系方式：</dt>
                        <dd>
                            <textarea name="contact" cols="60" rows="5" class="textarea gen"></textarea>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_submit">
                    <input type="submit" name="Submit" value="保存" class="submit" onclick="return Smit($(this),'myform')" />
                    <input name="id" type="hidden" value="" />
                </div>
            </div>
        </div>
    </div>
    <div class="footer">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.18</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></div>
</form>
</body>
</html>