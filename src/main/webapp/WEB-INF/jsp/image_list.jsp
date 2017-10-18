<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/newstyle.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css" />
    <script type="text/javascript">
        var basepath='/js/admin/templates/templates/met/images',
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
    <script src="/js/app/system/include/public/js/seajs.js"></script>
    <script>
        var pub = '/js/app/system/include/public/',
                siteurl='/',
                basepath='/',
                apppath='/',
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
                    <li>内容</li>
                    <li>
                        <a href="/content/manage.html">管理</a>
                    </li>

                </ol>
                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="adminuser" data-toggle="dropdown" aria-expanded="true">
                        admin
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="adminuser">
                        <li class="met-tool-list">
                            <a href="#">修改个人资料</a></li>
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
<%--<div class="metinfotop">
    <div class="position">简体中文 > 内容 > <a href="/content/manage.html">管理</a> > <a href='index.php?anyid=29&lang=cn&class1=33'>客户案例</a></div>
    <div class="return"><a href="javascript:metreturn('../content.php?anyid=29&lang=cn');">&lt;&lt;返回</a></div>

</div>--%>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>


</div>


<div class="stat_list">
    <ul>
        <li class="now">
            <a href="/content/modultList.html?module=3" title="内容管理">内容管理</a>
        </li>
        <%--<li>
            <a href="#" title="模板管理">参数设置</a>
        </li>--%>
    </ul>
</div>
<div style="clear:both;"></div>

<div class="v52fmbx_tbmax">
    <div class="v52fmbx_tbbox">
        <div class="contc3 classlist1">
            <span class="color999 left classlist2">一级栏目：</span>
            <a href="#" title="所有栏目" >所有栏目</a>-
            <a href="#" title="客户案例" style='color:#f00'>客户案例</a>
        </div>
        <div class="clear"></div>

        <script type="text/javascript">
            function metHeight(group) {
                tallest = 0;
                group.each(function() {
                    thisHeight = $(this).height();
                    if(thisHeight > tallest) {
                        tallest = thisHeight;
                    }
                });
                group.height(tallest);
            }
            metHeight($('.classlist2'));
            metHeight($('.classlist3'));
        </script>
        <form name="del" id="images-form" method="Post" style="display:inline;">
        <table cellpadding="2" cellspacing="1" class="table">
            <tr>
                <td colspan="9" class="centle" style=" height:20px; line-height:30px; font-weight:normal; padding-left:10px;">
                    <div style="float:left;">
                        <a href="/content/perImgEdit.html">+添加内容</a>
                        <span style="font-weight:normal; color:#999; padding-left:10px;">排序数值越大越靠前</span>
                    </div>
                    <%--<div class="formright">
                        <form method="POST" style="position:relative; top:2px;" name="filterform" action="index.php?anyid=29&lang=cn&search=detail_search" target="_self">
                            <input name="class1" type="hidden" value="33">
                            <input name="class2" type="hidden" value="">
                            <input name="class3" type="hidden" value="">
                            <input name="cengci" type="hidden" value="1">
                            &nbsp;前台显示
                            <select name="displaytype" id="displaytype" onChange="handle_form('filterform')">
                                <option value="all" selected='selected'>选择</option>
                                <option value="1" >是</option>
                                <option value="0" >否</option>
                            </select>

                            &nbsp;推荐
                            <select name="recommend" id="recommend" onChange="handle_form('filterform')">
                                <option value="all" selected='selected'>选择</option>
                                <option value="1" >是</option>
                                <option value="0" >否</option>
                            </select>

                            &nbsp;置顶
                            <select name="top" id="shaix-top" onChange="handle_form('filterform')">
                                <option value="all" selected='selected'>选择</option>
                                <option value="1" >是</option>
                                <option value="0" >否</option>
                            </select>
                        </form>
                        <form method="POST" name="search" action="index.php?anyid=29&lang=cn&search=detail_search&class1=33&class2=&class3=" target="_self">
                            <input name="title" type="text" class="text" id="searchtext" value="请输入信息标题关键字" />
                            <input type="submit" name="searchsubmit" value="搜索" class="submitmi" />
                            <input name="top" type="hidden" id="se-top" value="">
                            <input name="recommend" type="hidden" id="se-recommend" value="">
                        </form>
                    </div>--%>
                </td>
            </tr>
            <tr id="list-top">
                <td width="30" class="list">选择</td>
                <td width="30" class="list">排序</td>
                <td class="list list_left">标题</td>
                <td width="60" class="list" >前台显示</td>
                <td width="30" class="list" >推荐</td>
                <td width="30" class="list" >置顶</td>
                <td width="60"  class="list" >更新时间</td>
                <td width="60" class="list" >访问权限</td>
                <td class="list list_left">操作</td>
            </tr>

                <c:forEach items="${imageList}" var="img" varStatus="status">
                    <tr class="mouse click">
                        <td class="list-text">
                            <input name='id' type='checkbox' id="id" value='${img.id}' />
                        </td>
                        <td class="list-text">
                            <input type="text" name="noOrder" class="text no_order" value="${img.noOrder}" />
                        </td>
                        <td class="list-text list_left">
                            ${img.title}
                            <%--<a href="#" title="预览图：示例案例六" target="_blank" >示例案例六</a>--%>
                        </td>
                        <td class="list-text">
                            ${img.access==1?'是':'否'}
                            <%--<a href="changeState.php?" onClick="return linkSmit($(this));" displaytype="5" com_ok_val="1">是</a>--%>
                        </td>
                        <td class="list-text">
                            ${img.recommend==1?'是':'否'}
                            <%--<a href="changeState.php?anyid=29&lang=cn&com_ok=1&id=5&class1=33&class2=&class3=&page=0" onClick="return linkSmit($(this));" com_ok="5" com_ok_val="1">是</a>--%>
                        </td>
                        <td class="list-text">
                            ${img.top==1?'是':'否'}
                            <%--<a href="changeState.php?anyid=29&lang=cn&top_ok=0&id=5&class1=33&class2=&class3=&page=0" onClick="return linkSmit($(this));" top_ok="5" top_ok_val="0">否</a>--%>
                        </td>
                        <td class="list-text color999"><fmt:formatDate value="${img.updatetime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td class="list-text color999">不限</td><%--访问权限--%>
                        <td class="list-text list_left">
                            <a href="/content/perImgEdit.html?id=${img.id}" >编辑</a>&nbsp;&nbsp;<a href="/content/delPerImage.html?id=${img.id}" onClick="return linkSmit('',1,'是否把选定内容放入回收站？');" >删除</a>
                        </td>
                    </tr>
                </c:forEach>
                <%--<input name="action" type="hidden" id="action" value="del">
                <input name="allid" type="hidden" id="allid" value="">--%>
            <tr>
                <td class="all">
                    <input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAllx($(this),'del')" value="checkbox">
                </td>
                <td class="all-submit" colspan="8" style="padding:5px 10px;">
                    <input name="recycle" type="hidden" value="1" />
                    <input id="images-form-del" name="submit" type='submit' value='删除' class="submit li-submit" />
                    <input id="images-form-submit" name="saveorder" type='submit' value='保存排序' class="submit li-submit" />
                    <%--<div class="li-submit">
                        <select name="lisdisplaytype" ltype="displaytype">
                            <option value="">前台显示</option>
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <select name="liscom" ltype="com_ok">
                            <option value="">推荐</option>
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                        <select name="listop" ltype="top_ok">
                            <option value="">置顶</option>
                            <option value="1">是</option>
                            <option value="0">否</option>
                        </select>

                    </div>--%>
                    <%--<div class="li-submit">
                        <form method="POST" name="mycopy" target="_self">
                            <input name="allid" type="hidden" value="" />
                            <input name="access" type="hidden" value="" />
                            <input name="class1" type="hidden" value="33" />
                            <input name="class2" type="hidden" value="" />
                            <input name="class3" type="hidden" value="" />
                            <select name="copylang">
                                <option value="">复制至...</option>
                                <option value="cn">简体中文</option>
                                <option value="en">English</option>
                                <option value="tc">繁体中文</option>
                            </select>
                            <select name="copyclass1" style="display:none;">
                                <option value="">一级栏目</option>
                            </select>
                            <select name="copyclass2" style="display:none;">
                                <option value="">二级栏目</option>
                            </select>
                            <select name="copyclass3" style="display:none;">
                                <option value="">三级栏目</option>
                            </select>
                        </form>
                    </div>--%>
                    <%--<div class="li-submit">
                        <form method="POST" name="mymove" action="changeState.php?anyid=29&lang=cn&action=moveto" target="_self">
                            <input name="allid" type="hidden" value="" />
                            <input name="access" type="hidden" value="" />
                            <input name="class1" type="hidden" value="33" />
                            <input name="class2" type="hidden" value="" />
                            <input name="class3" type="hidden" value="" />
                            <select name="movelang">
                                <option value="">移动至...</option>
                                <option value="cn">简体中文</option>
                                <option value="en">English</option>
                                <option value="tc">繁体中文</option>
                            </select>
                            <select name="moveclass1" style="display:none;">
                                <option value="">一级栏目</option>
                            </select>
                            <select name="moveclass2" style="display:none;">
                                <option value="">二级栏目</option>
                            </select>
                            <select name="moveclass3" style="display:none;">
                                <option value="">三级栏目</option>
                            </select>
                        </form>
                    </div>--%>
                </td>
            </tr>
            <%--<tr><td colspan="9" class="page_list"><form method='POST' name='page1'  action='index.php?anyid=29&lang=cn&class1=33&class2=&class3=&search=&title=&page=' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
            .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
            .digg4 a:active {border:1px solid #000099; color:#000000;}
            .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
            .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
            </style><div class='digg4'><span class='disabled' style='font-family: Tahoma, Verdana;'><b>«</b></span><span class='disabled' style='font-family: Tahoma, Verdana;'>‹</span><span class='current'>1</span><span class='disabled' style='font-family: Tahoma, Verdana;'>›</span><span class='disabled' style='font-family: Tahoma, Verdana;'><b>»</b></span> 转到<input name='page_input' class='page_input' />页 <input type='submit' name='Submit3' value=' go ' class='submit' /></form></div></td></tr>--%>
    </table>
    </form>
</div>
</div>
<div class="footer">Powered by <b><a href="#" target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWeb CMS</a></div>
<script type="text/javascript">
    var cplang = new Array();
    var cpar   = new Array('copylang','copyclass1','copyclass2','copyclass3');
    var mvar   = new Array('movelang','moveclass1','moveclass2','moveclass3');
    $(document).ready(function(){
        cplang[0]=new Array('客户案例','cn','33','0');
        cplang[1]=new Array('Case','en','46','0');
        cplang[2]=new Array('客戶案例','tc','88','0');
        for(i=0;i<cpar.length;i++){ $("select[name='"+cpar[i]+"']").change(function(){ cparinc($(this),$("form[name='mycopy']"),'您确定要复制所选吗？'); }); }
        for(i=0;i<mvar.length;i++){ $("select[name='"+mvar[i]+"']").change(function(){ cparinc($(this),$("form[name='mymove']"),'您确定要移动所选吗？'); }); }
        modifyview('');
        seachinput($('#searchtext'),'请输入信息标题关键字');
    });
</script>
</body>
<script src="/js/topweb/img.js?v0.0020"></script>
</html>