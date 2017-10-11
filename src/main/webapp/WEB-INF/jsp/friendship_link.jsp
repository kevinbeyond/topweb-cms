<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css?20171004" />
    <link rel="stylesheet" type="text/css" href="/css/images/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/newstyle.css" />
    <link rel="stylesheet" type="text/css" href="/css/font-awesome/font-awesome.min.css" />
    <script type="text/javascript">var basepath='../../templates/met/images?20171004',lang = 'cn',adminurl='http://localhost:88/metinfo/admin/';</script>
    <script type="text/javascript" src="/js/jQuery1.7.2.js"></script>
    <script type="text/javascript"src="/js/metvar.js?20171004"></script>
    <script type="text/javascript" src="/js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/iframes.js"></script>
    <script type="text/javascript" src="/js/cookie.js"></script>
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
        var pub = '/js/app/system/include/public/',siteurl='http://localhost:88/metinfo/',basepath='http://localhost:88/metinfo/admin/',apppath='http://app.metinfo.cn/index.php?lang=cn&',editorname='ueditor';
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
                    <li><a href="/market/friendshiplink.html">友情链接</a></li>
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
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/seo/link/index.php?anyid=39&lang=cn&switch=1">简体中文</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/seo/link/index.php?anyid=39&lang=en&switch=1">English</a></li>
                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/seo/link/index.php?anyid=39&lang=tc&switch=1">繁体中文</a></li>
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

    <div class="position">简体中文 > 营销 > <a href="../../seo/link/index.php?anyid=39&lang=cn">友情链接</a></div>


</div>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>


</div>

<div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
    <div class="v52fmbx_tbbox">
        <h3 class="v52fmbx_hr">
            <div class="formleft">
                <a href="/market/addFriendshiplink.html" title="添加友情链接">+添加友情链接</a>
            </div>
            <div class="formright">

                链接类型

                <select name="pnow" id="new" onChange="changes($(this));" style="position:relative; top:2px;">
                    <c:forEach items="${linknames}" var="namenode">
                        <c:choose>

                            <c:when test="${namenode.id==linktype}">
                                <option value="/market/friendshiplink.html?pnow=1&linktype=${namenode.id}" style='color:#FF0000' selected='selected' >${namenode.linkName}</option>
                            </c:when>

                            <c:otherwise>  <option value="/market/friendshiplink.html?pnow=1&linktype=${namenode.id}" >${namenode.linkName}</option></c:otherwise>
                        </c:choose>

                    </c:forEach>
                  <%--  <option value="/market/nocheckedLink.html" >未审核链接</option>
                    <option value="/market/recommendLink.html" >推荐链接</option>
                    <option value="index.php?lang=cn&anyid=39" style='color:#FF0000' selected='selected'>全部链接</option>
                    <option value="index.php?lang=cn&anyid=39&link_type=0" >文字链接</option>
                    <option value="index.php?lang=cn&anyid=39&link_type=1" >LOGO链接</option>--%>
                </select>

                <form method="POST" name="myform" action="/market/friendshiplink.html?pnow=1&linktype=6" target="_self">
                    <input name="guan" type="text" value="请输入网站标题关键字" class="text" style="width:150px!important;" id="searchtext" />
                    <input type="submit" name="Submit2" value="搜索" class="submitmi" />
                    <input name="show_ok" type="hidden" id="show_ok" value="">
                    <input name="com_ok" type="hidden" id="com_ok" value="">
                    <input name="link_type" type="hidden" id="link_type" value="">
                </form>
            </div>
            <div class="clear"></div>
        </h3>
        <table cellpadding="0" cellspacing="1" class="table">
            <tr>
                <td colspan="3" style="padding:0px!important;border:0px">
                    <form name="del" method="Post" action="/market/alldeleteinfo.html">
                        <table cellpadding="0" cellspacing="1" class="table neitable">
                            <tr>
                                <td width="40" class="list" style="padding:0px; text-align:center;">选择</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">ID</td>
                                <td width="80" class="list" style="padding:0px; text-align:center;">链接类型</td>
                                <td class="list" >网站标题</td>
                                <td class="list" >网站地址</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">排序</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">审核</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">推荐</td>
                                <td width="10%" class="list" >操作</td>
                            </tr>

                                <!-- 输出Map -->
                            <c:forEach items="${fdl}" var="node">
                                <tr class="mouse click">
                                    <td class="list-text"><input name='id' type='checkbox' id="id" value='${node.id}' /></td>
                                    <td class="list-text">${node.id}</td>
                                    <c:choose>
                                        <c:when test="${node.linkType== 1}">
                                            <td class="list-text">文字链接</td>
                                        </c:when>
                                        <c:when test="${node.linkType== 2}">
                                            <td class="list-text">LOGO链接</td>
                                        </c:when>
                                    </c:choose>

                                    <td class="list-text alignleft">&nbsp;&nbsp;${node.webTitle}</td>
                                    <td class="list-text alignleft">&nbsp;&nbsp;${node.webAddress}</td>
                                    <td class="list-text">${node.sort}</td>

                                    <c:choose>
                                        <c:when test="${node.egis== 1}">
                                            <td class="list-text">是</td>
                                        </c:when>
                                        <c:when test="${node.egis== 2}">
                                            <td class="list-text">否</td>
                                        </c:when>
                                    </c:choose>


                                    <c:choose>
                                        <c:when test="${node.recommend== 1}">
                                            <td class="list-text">是</td>
                                        </c:when>
                                        <c:when test="${node.recommend== 2}">
                                            <td class="list-text">否</td>
                                        </c:when>
                                    </c:choose>

                                    <td class="list-text"><a href="/market/updateinfo.html?updateid=${node.id}" >编辑</a>&nbsp;&nbsp;<a href="/market/deletelink.html?deleteid=${node.id}" onClick="return linkSmit($(this),1);" >删除</a></td>
                                </tr>
                            </c:forEach>

                   <%--         <tr class="mouse click">
                                <td class="list-text"><input name='id' type='checkbox' id="id" value='1' /></td>
                                <td class="list-text">1</td>
                                <td class="list-text">文字链接</td>
                                <td class="list-text alignleft">&nbsp;&nbsp;企业网站建设</td>
                                <td class="list-text alignleft">&nbsp;&nbsp;http://www.metinfo.cn</td>
                                <td class="list-text">1000</td>
                                <td class="list-text">是</td>
                                <td class="list-text">是</td>
                                <td class="list-text"><a href="content.php?action=editor&lang=cn&anyid=39&id=1" >编辑</a>&nbsp;&nbsp;<a href="delete.php?lang=cn&anyid=39&id=1" onClick="return linkSmit($(this),1);" >删除</a></td>
                            </tr>

                            <tr class="mouse click">
                                <td class="list-text"><input name='id' type='checkbox' id="id" value='2' /></td>
                                <td class="list-text">2</td>
                                <td class="list-text">文字链接</td>
                                <td class="list-text alignleft">&nbsp;&nbsp;CMS</td>
                                <td class="list-text alignleft">&nbsp;&nbsp;http://www.metinfo.cn</td>
                                <td class="list-text">99</td>
                                <td class="list-text">是</td>
                                <td class="list-text">是</td>
                                <td class="list-text"><a href="content.php?action=editor&lang=cn&anyid=39&id=2" >编辑</a>&nbsp;&nbsp;<a href="delete.php?lang=cn&anyid=39&id=2" onClick="return linkSmit($(this),1);" >删除</a></td>
                            </tr>--%>




                        </table>
                        <input name="action" type="hidden" id="action" value="del">
                        <input name="allid" type="hidden" id="allid" value="">
                    </form>
                </td>
            </tr>
            <tr>
                <td class="all" width="53" style="border-top:0px"><input name="chkAll" type="checkbox" id="chkAll" onclick="CheckAllx($(this),'del')" value="checkbox"/></td>
                <td class="all-submit" align="left" style="padding:5px 10px;border-top:0px;" >
                    <input name="submit" type='submit' value='删除' class="submit li-submit" onclick="return met_modify($(this),'del','del');" />
                    <div class="page_list">
                        <form name="delform" method="Post" action="delete.php?anyid=39&lang=cn">
                            <select name="action" id="deltype">
                                <option value="delno" selected>未审核链接</option>
                                <option value="delall">全部链接</option>
                            </select>
                            <input name="submit" type='submit' value='清空' class="submitmi" onclick="return linkSmit('',1,safesq());" />
                        </form>
                    </div>
                </td>
            </tr>

           <c:choose>
                <c:when test="${page.pageCount== 1}">
                    <tr><td colspan="7" class="page_list"><form method='POST' name='page1'  action='index.php?lang=cn&anyid=39&link_type=&com_ok=&show_ok=&link_lang=&search=&webname=&page=' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                    .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                    .digg4 a:active {border:1px solid #000099; color:#000000;}
                    .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                    .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                    </style><div class='digg4'><span class='current'>${page.pageNow}</span>     共${page.pageCount} 页</div></form></td></tr>
                </c:when>
               <c:when test="${page.pageNow== 1}">
                   <tr><td colspan="7" class="page_list">
                       <form method='POST' name='page1'  action='/market/friendshiplink.html?linktype=3&guan=0' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                   .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                   .digg4 a:active {border:1px solid #000099; color:#000000;}
                   .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                   .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                   </style><div class='digg4'><span class='current'>${page.pageNow}</span><a  HREF="/market/friendshiplink.html?pnow=${page.pageNow+1}&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>›</span></a><a HREF="/market/friendshiplink.html?pnow=${page.pageCount}&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'><b>»</b></span></a> 转到

                       <select name="pnow" id="pageX"  style="margin-bottom: 3px; padding: 0px; height: 25px ;font-size: 14px;">
                           <c:forEach  var="node" begin="1" end="${page.pageCount}">
                               <c:choose>
                                  <c:when test="${page.pageNow==node}">
                                      <option value="${node}" style='color:#FF0000' selected='selected'>${node}</option>
                                  </c:when>
                                   <c:otherwise> <option value="${node}" >${node}</option></c:otherwise>
                               </c:choose>
                           </c:forEach>
                       </select>页

                       页 <input type='submit' name='Submit3' value=' go ' class='submit' /></div></form></td></tr>
               </c:when>

               <c:when test="${page.pageNow== page.pageCount}">
                   <tr><td colspan="7" class="page_list">
                       <form method='POST' name='page1'  action='/market/friendshiplink.html?linktype=3&guan=0' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                   .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                   .digg4 a:active {border:1px solid #000099; color:#000000;}
                   .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                   .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                   </style><div class='digg4'><a HREF="/market/friendshiplink.html?pnow=1&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span  class='disabled' style='font-family: Tahoma, Verdana;'><b>«</b></span></a><a HREF="/market/friendshiplink.html?pnow=${page.pageNow-1}&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>‹</span></a><span class='current'>${page.pageNow}</span>转到

                       <select name="pnow" id="pageX"  style="margin-bottom: 3px; padding: 0px; height: 25px ;font-size: 14px;">
                           <c:forEach  var="node" begin="1" end="${page.pageCount}">
                               <c:choose>
                                   <c:when test="${page.pageNow==node}">
                                       <option value="${node}" style='color:#FF0000' selected='selected'>${node}</option>
                                   </c:when>
                                   <c:otherwise> <option value="${node}" >${node}</option></c:otherwise>
                               </c:choose>
                           </c:forEach>
                       </select>页

                   页 <input type='submit' name='Submit3' value=' go ' class='submit' /></div></form>     </td></tr>
               </c:when>

                <c:otherwise>
          <tr><td colspan="7" class="page_list">
                <form method='POST' name='page1'  action='/market/friendshiplink.html?linktype=3&guan=z 0' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
            .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
            .digg4 a:active {border:1px solid #000099; color:#000000;}
            .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
            .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
            </style><div class='digg4'><a HREF="/market/friendshiplink.html?pnow=1&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span  class='disabled' style='font-family: Tahoma, Verdana;'><b>«</b></span></a><a HREF="/market/friendshiplink.html?pnow=${page.pageNow-1}&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>‹</span></a><span class='current'>${page.pageNow}</span><a  HREF="/market/friendshiplink.html?pnow=${page.pageNow+1}&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>›</span></a><a HREF="/market/friendshiplink.html?pnow=${page.pageCount}&linktype=${linktype}&guan=${guan}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'><b>»</b></span></a> 转到

                <select name="pnow" id="pageX"  style="margin-bottom: 3px; padding: 0px; height: 25px ;font-size: 14px;">
                    <c:forEach  var="node" begin="1" end="${page.pageCount}">
                        <c:choose>
                            <c:when test="${page.pageNow==node}">
                                <option value="${node}" style='color:#FF0000' selected='selected'>${node}</option>
                            </c:when>
                            <c:otherwise> <option value="${node}" >${node}</option></c:otherwise>
                        </c:choose>
                    </c:forEach>
            </select>页

                <input type='submit' name='Submit3' value=' go ' class='submit' /></div></form></td></tr>
                </c:otherwise>
            </c:choose>


    </table>
</div>
</div>
<div class="footer">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.18</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></div>
<script type="text/javascript">
    function safesq(){
        var vl = $("#deltype").val();
        var vp = $("option[value='"+vl+"']").text();
        vp = '确定清空'+vp+'？';
        return vp;
    }
    seachinput($('#searchtext'),'请输入网站标题关键字');
</script>
</body>
</html>
