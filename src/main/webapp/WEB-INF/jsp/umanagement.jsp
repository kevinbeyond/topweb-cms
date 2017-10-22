<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/newstyle.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css" />
    <script type="text/javascript">
        var basepath='/',lang = 'cn',
                adminurl='/';
    </script>

    <script type="text/javascript" src="/js/public/js/jQuery1.7.2.js"></script>
    <script type="text/javascript"src="/js/admin/include/metvar.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/iframes.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/cookie.js"></script>

    <script type="text/javascript">
        /*ajax执行*/
        var metimgurl='/images/';
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
                siteurl='#',
                basepath='/',
                apppath='',
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
                    <li>营销</li>
                    <li><a href="/market/friendshiplink.html">友情链接</a></li>
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

    <div class="position">简体中文 > 营销 > <a href="#">友情链接</a></div>


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
                <a href="/um/addschool.html?addorup=1" title="添加学校">+添加学校</a>
            </div>
            <div class="formright">

                大学性质

                <select name="pnow" id="new" onChange="changes($(this));" style="position:relative; top:2px;">
                    <c:if test="${type==0}">
                        <option value="/um/uninersity.html?pnow=1&type=0&authentication=0" style='color:#FF0000' selected='selected' >全部大学</option>
                    </c:if>
                    <c:if test="${type!=0}">
                        <option value="/um/uninersity.html?pnow=1&type=0&authentication=0"   >全部大学</option>
                    </c:if>
                    <c:forEach items="${natures}" var="namenode">
                        <c:choose>

                            <c:when test="${namenode.id==type}">
                                <option value="/um/uninersity.html?pnow=1&type=${namenode.id}&authentication=0" style='color:#FF0000' selected='selected' >${namenode.nature}</option>
                            </c:when>

                            <c:otherwise>  <option value="/um/uninersity.html?pnow=1&type=${namenode.id}&authentication=0" >${namenode.nature}</option></c:otherwise>
                        </c:choose>

                    </c:forEach>

                </select>

              <%--  <form method="POST" name="myform" action="/market/friendshiplink.html?pnow=1&linktype=6" target="_self">
                    <input name="guan" type="text" value="请输入网站标题关键字" class="text" style="width:150px!important;" id="searchtext" />
                    <input type="submit" name="Submit2" value="搜索" class="submitmi" />
                    <input name="show_ok" type="hidden" id="show_ok" value="">
                    <input name="com_ok" type="hidden" id="com_ok" value="">
                    <input name="link_type" type="hidden" id="link_type" value="">
                </form>--%>

            </div>
            <div class="clear"></div>
        </h3>
        <table cellpadding="0" cellspacing="1" class="table">
            <tr>
                <td colspan="3" style="padding:0px!important;border:0px">
                    <form name="del" method="Post" action="/um/alldelete.html">
                        <table cellpadding="0" cellspacing="1" class="table neitable">
                            <tr>
                                <td width="40" class="list" style="padding:0px; text-align:center;">选择</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">ID</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">大学名字</td>
                                <td width="90" class="list" >日本名字</td>
                                <td width="140" class="list" >大学地址</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">性质</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">建校时间</td>
                                <td width="50" class="list" style="padding:0px; text-align:center;">认证</td>
                                <td width="80" class="list" >人数</td>
                                <td width="80" class="list" >人气</td>
                                <td width="80" class="list" >图片</td>
                                <td width="10%" class="list" >操作</td>
                            </tr>

                            <!-- 输出Map -->
                            <c:forEach items="${schools}" var="node">
                                <tr class="mouse click">
                                    <td class="list-text"><input name='id' type='checkbox' id="id" value='${node.id}' /></td>
                                    <td class="list-text">${node.id}</td>

                                    <td class="list-text">${node.uname}</td>


                                    <td class="list-text alignleft">&nbsp;&nbsp;${node.jpname}</td>
                                    <td class="list-text alignleft">&nbsp;&nbsp;${node.schooladress}</td>

                                    <c:choose>
                                        <c:when test="${node.schoolnature== 1}">
                                            <td class="list-text">国立大学</td>
                                        </c:when>
                                        <c:when test="${node.schoolnature== 2}">
                                        <td class="list-text">私立大学</td>
                                    </c:when>
                                        <c:when test="${node.schoolnature== 3}">
                                            <td class="list-text">公立大学</td>
                                        </c:when>
                                    </c:choose>



                                            <td class="list-text">${node.buldingschooltime}年</td>

                                    <c:choose>
                                    <c:when test="${node.authentication== 1}">
                                        <td class="list-text">是</td>
                                    </c:when>
                                        <c:when test="${node.authentication== 2}">
                                            <td class="list-text">否</td>
                                        </c:when>
                                    </c:choose>
                                    <td class="list-text">${node.peoplecount}</td>
                                    <td class="list-text">${node.popularity}</td>
                                    <td class="list-text">${node.img}</td>

                                    <td class="list-text"><a href="/um/addschool.html?addorup=2&updateid=${node.id}" >编辑</a>&nbsp;&nbsp;<a href="/um/deleteschool.html?deleteid=${node.id}" onClick="return linkSmit($(this),1);" >删除</a></td>
                                </tr>
                            </c:forEach>

                                   <%-- <tr class="mouse click">
                                         <td class="list-text"><input name='id' type='checkbox' id="id" value='1' /></td>
                                         <td class="list-text">1</td>
                                         <td class="list-text">文字链接</td>
                                         <td class="list-text alignleft">&nbsp;&nbsp;企业网站建设</td>
                                         <td class="list-text alignleft">&nbsp;&nbsp;http://www.metinfo.cn</td>
                                         <td class="list-text">1000</td>
                                         <td class="list-text">是</td>
                                         <td class="list-text">是</td>
                                         <td class="list-text"><a href="content.php?action=editor&lang=cn&anyid=39&id=1" >编辑</a>&nbsp;&nbsp;<a href="delete.php?lang=cn&anyid=39&id=1" onClick="return linkSmit($(this),1);" >删除</a></td>
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
                <c:when test="${page.pageCount==1}">
                    <tr><td colspan="7" class="page_list"><form method='POST' name='page1'  action='index.php?lang=cn&anyid=39&link_type=&com_ok=&show_ok=&link_lang=&search=&webname=&page=' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                    .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                    .digg4 a:active {border:1px solid #000099; color:#000000;}
                    .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                    .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                    </style><div class='digg4'><span class='current'>${page.pageNow}</span>     共${page.pageCount} 页</div></form></td></tr>
                </c:when>
                <c:when test="${page.pageNow== 1}">
                    <tr><td colspan="7" class="page_list">
                        <form method='POST' name='page1'  action='/um/uninersity.html?type=${type}&authentication=${authentication}' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                        .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                        .digg4 a:active {border:1px solid #000099; color:#000000;}
                        .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                        .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                        </style><div class='digg4'><span class='current'>${page.pageNow}</span><a  HREF="/um/uninersity.html?pnow=${page.pageNow+1}&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>›</span></a><a HREF="/um/uninersity.html?pnow=${page.pageCount}&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'><b>»</b></span></a> 转到

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
                        <form method='POST' name='page1'  action='/um/uninersity.html?type=${type}&authentication=${authentication}' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                        .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                        .digg4 a:active {border:1px solid #000099; color:#000000;}
                        .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                        .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                        </style><div class='digg4'><a HREF="/um/uninersity.html?pnow=1&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span  class='disabled' style='font-family: Tahoma, Verdana;'><b>«</b></span></a><a HREF="/um/uninersity.html?pnow=${page.pageNow-1}&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>‹</span></a><span class='current'>${page.pageNow}</span>转到

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
                        <form method='POST' name='page1'  action='/um/uninersity.html?type=${type}&authentication=${authentication}' target='_self'><style>.digg4 a{ border:1px solid #ccdbe4; padding:2px 8px 2px 8px; background:#fff; background-position:50%; margin:2px; color:#666; text-decoration:none;}
                        .digg4 a:hover { border:1px solid #999; color:#fff; background-color:#999;}
                        .digg4 a:active {border:1px solid #000099; color:#000000;}
                        .digg4 span.current { padding:2px 8px 2px 8px; margin:2px; text-decoration:none;}
                        .digg4 span.disabled { border:1px solid #ccc; background:#fff; padding:1px 8px 1px 8px; margin:2px; color:#999;}
                        </style><div class='digg4'><a HREF="/um/uninersity.html?pnow=1&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span  class='disabled' style='font-family: Tahoma, Verdana;'><b>«</b></span></a><a HREF="/um/uninersity.html?pnow=${page.pageNow-1}&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>‹</span></a><span class='current'>${page.pageNow}</span><a  HREF="/um/uninersity.html?pnow=${page.pageNow+1}&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'>›</span></a><a HREF="/um/uninersity.html?pnow=${page.pageCount}&type=${type}&authentication=${authentication}" style="cursor: pointer ;" onmouseover="this.style.backgroundColor='white'"><span class='disabled' style='font-family: Tahoma, Verdana;'><b>»</b></span></a> 转到

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
<div class="footer">Powered by <b><a href="#" target=_blank>TopWebS CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWebS CMS</a></div>
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
