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

    <script type="text/javascript" src="/js/public/js/jQuery1.7.2.js"></script>

    <script type="text/javascript"src="/js/admin/include/metvar.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/iframes.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/cookie.js"></script>
    <script type="text/javascript">
        var basepath='/images?53185',
                lang = 'cn',
                adminurl='http://localhost:88/metinfo/admin/';
    </script>
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
                    <li>设置</li>
                    <li>
                        <a href="/setting/columns.html">栏目</a>
                    </li>
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
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/column/editor.php?anyid=25&lang=cn&id=1&switch=1">简体中文</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/column/editor.php?anyid=25&lang=en&id=1&switch=1">English</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/column/editor.php?anyid=25&lang=tc&id=1&switch=1">繁体中文</a></li>
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
</head>
<script language='javascript'>var metadminpagename=1;</script>
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
    <div class="position">简体中文 > 设置 > <a href="/setting/columns.html">栏目</a> > 编辑栏目(关于我们)</div>
    <div class="return"><a href="javascript:metreturn('');">&lt;&lt;返回</a></div>
</div>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>
</div>

<form method="POST" id="perColumnForm" name="myform" target="_self">
    <input name="id" type="hidden" value="${column.id}" />
    <input name="bigclass" type="hidden" value="${column.bigclass}" /><%--上级栏目id--%>
    <input name="module" type="hidden" value="${column.module}" />
    <input name="classtype" type="hidden" value="${column.classtype}" /><%--栏目级别--%>

    <div class="v52fmbx_tbmax">
        <div class="v52fmbx_tbbox">
            <div class="v52fmbx">
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>栏目名称：</dt>
                        <dd>
                            <input name="name" type="text" class="text nonull" value="${column.name}" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>同级栏目排序：</dt>
                        <dd>
                            <input name="noOrder" type="text" class="text small" value="${column.noOrder}" />
                            <span class="tips">排序越小越靠前</span>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>导航栏显示：</dt>
                        <dd>
                            <c:forEach items="${navConfig}" var="nav">
                                <label>
                                    <input name="nav" type="radio" value="${nav.key}" class="radio" <c:if test="${column.nav==nav.key}">checked='checked'</c:if>/>${nav.value}
                                </label>
                            </c:forEach>
                        </dd>
                    </dl>
                </div>
                <%--<div class="v52fmbx_dlbox">
                    <dl>
                        <dt>新窗口打开：</dt>
                        <dd>
                            <label>
                                <input name="new_windows" type="radio" class="radio"  value="1" />是</label>
                            <label><input name="new_windows" type="radio" class="radio" checked value="0" />否</label>
                            <span class="tips">设置栏目链接是否在新窗口打开</span>
                        </dd>
                    </dl>
                </div>--%>

                <%--<div class="v52fmbx_dlbox" id="list_order" style="display:none">
                    <dl>
                        <dt>列表页排序方式：</dt>
                        <dd>
                            <label><input name="list_order" type="radio" class="radio" value="1" checked='checked' />更新时间</label>
                            <label><input name="list_order" type="radio" class="radio" value="2" >发布时间</label>
                            <label><input name="list_order" type="radio" class="radio" value="3" >点击次数</label>
                            <label><input name="list_order" type="radio" class="radio" value="4" >ID倒序 </label>
                            <label><input name="list_order" type="radio" class="radio" value="5" >ID顺序</label>
                        </dd>
                    </dl>
                </div>--%>
                <%--<div class="v52fmbx_dlbox" id="static2" style="display:">
                    <dl>
                        <dt>添加内容：</dt>
                        <dd>
                            <label><input name="isshow" type="radio" class="radio" value="1"  />允许</label>
                            <label><input name="isshow" type="radio" class="radio" value="0" checked />不允许</label>
                            <span class="tips">设置为不允许后栏目链接将跳转到第一个子级栏目</span>
                        </dd>
                    </dl>
                </div>--%>

                <%--<label><input name="wap_ok" type="hidden" value="0"></label>--%>

                <h3 class="v52fmbx_hr metsliding">
                    搜索引擎优化设置(seo)
                </h3>

                <div class="v52fmbx_dlbox on_dlbox">
                    <dl>
                        <dt style='width:96px;'>栏目标题(title)：</dt>
                        <dd>
                            <input name="ctitle" type="text" class="text" maxlength="200" value="${column.ctitle}" />
                            <span class="tips">为空则使用SEO参数设置中设置的title构成方式</span>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>关键词：</dt>
                        <dd>
                            <input name="keywords" type="text" class="text" maxlength="200" value="${column.keywords}" />
                            <span class="tips">多个关键词请用","隔开</span>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>简短描述：</dt>
                        <dd>
                            <textarea name="description" class="textarea keytext" cols="50" rows="4" >${column.description}</textarea>
                        </dd>
                    </dl>
                </div>

                <%--<div class="v52fmbx_dlbox" id="static1" style="display:">
                    <dl>
                        <dt>静态页面名称：</dt>
                        <dd>
                            <input name="filename" type="text" class="text med" value="444"  />
                            <span class="tips">为空则使用静态页面设置中设置的URL构成方式，不要加html后缀，不支持特殊字符</span>
                        </dd>
                    </dl>
                </div>--%>

                <%--<h3 class="v52fmbx_hr metsliding">其它设置（根据模板配置说明设置）</h3>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>栏目标识：</dt>
                        <dd>
                            <input name="index_num" type="text" class="text small" value="2" />
                            <span class="tips">作用于该栏目在前台对应位置的显示</span>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>栏目修饰名称：</dt>
                        <dd>
                            <input name="namemark" type="text" class="text" value="" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>栏目图片：</dt>
                        <dd>
                            <input name="columnimg" type="text" class="text" value="" />
                            <input name="met_upsql" type="file" id="file_upload1" />
                            <script type="text/javascript">
                                $(document).ready(function(){
                                    metuploadify('#file_upload1','upimage','columnimg');
                                });
                            </script>
                        </dd>
                    </dl>
                </div>--%>

                <h3 class="v52fmbx_hr metsliding">权限设置</h3>
                <%--<div class="v52fmbx_dlbox">
                    <dl>
                        <dt>访问权限：</dt>
                        <dd>
                            <select name="access" id="access" >
                                <option value='0'>不限</option>
                                <option value='1' >普通会员</option>
                                <option value='2' >代理商</option>
                                <option value='3'>管理员</option>
                            </select>
                        </dd>
                    </dl>
                </div>--%>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>前台显示：</dt>
                        <dd>
                            <label><input name="display" type="radio" class="radio" <c:if test="${column.display==0}">checked</c:if>  value="0" />是</label>
                            <label><input name="display" type="radio" class="radio" <c:if test="${column.display==1}">checked</c:if> value="1" />否</label>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_submit">
                    <input type="button" id="perColumnSubmit" name="Submit" value="保存" class="submit" />
                </div>
            </div>
        </div>
    </div>
</form>
<div class="footer">Powered by <b><a href="#" target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWeb CMS</a></div>
</body>
<script src="/js/topweb/column.js?v0.11"></script>
</html>
