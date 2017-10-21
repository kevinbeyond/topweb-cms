<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg" %>
<%@ taglib prefix="pa" uri="http://java.sun.com/jsp/jstl/core" %>

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
                anyid="29",
                tem="/js/app/system/admin/templates/web/content/",
                adminurl="#",
                apppath="http://app.metinfo.cn/index.php?lang=cn&",
                jsrand="2222",
                editorname="ueditor"
                ;
    </script>
    <script type="text/javascript" src="/js/public/js/jQuery1.7.2.js"></script>
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
                    <li><a href="/content/manage.html">管理</a></li>
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
        <link rel="stylesheet" href="/css/app/system/admin/templates/web/content/css/metinfo.css" />

            <div class="v52fmbx product_index">
                <div class="v52fmbx-table-top">
                    <div class="ui-float-left">
                        <a class="btn btn-danger" href="/content/publishArticle.html" role="button">发布文章</a>
                    </div>
                    <%--<div class="ui-float-right">
                        <div class="ui-table-search">
                            <i class="fa fa-search"></i>
                            <input name="keyword" data-table-search="1" type="text" value="" class="ui-input" placeholder="搜索">
                        </div>
                    </div>--%>
                    <div class="ui-float-right">
                        <div class="ftype_select-linkage" id="articles-column-change">
                            <div class="fbox" data-selectdburl="/setting/cascadeColumns?module=2&classtype=1">
                                <select name="class1_select" class="prov" data-checked="${param.class1}"></select>
                                <select name="class2_select" class="city" data-checked="${param.class2}"></select>
                                <select name="class3_select" class="dist" data-checked=""></select>
                            </div>
                        </div>
                    </div>
                </div>
            <form method="POST" class="ui-from" id="articles-form" name="myform" target="_self">
                    <input id="class1id" name="class1" data-table-search="1" value="" class="ui-input" type="hidden" />
                    <input id="class2id" name="class2" data-table-search="1" value="" class="ui-input" type="hidden" />
                    <input id="class3id" name="class3" data-table-search="1" value="" class="ui-input" type="hidden" />
                <div class="dataTables_wrapper">
                <table class="display dataTable ui-table"  data-table-pageLength="20">
                    <thead>
                        <tr>
                            <th width="20" data-table-columnclass="met-center">
                                <input name="id" data-table-chckall="id" type="checkbox" value="" />
                            </th>
                            <th width="300">
                                标题
                            </th>
                            <th data-table-columnclass="met-center" width="70">
                                访问量
                                <%--<a href="javascript:;" class="orderby-link">访问量</a>
                                <input name="orderby_hits" data-table-search="1" type="hidden">--%>
                            </th>
                            <th data-table-columnclass="met-center" width="160">
                                更新日期
                                <%--<a href="javascript:;" class="orderby-link">更新日期</a>
                                <input name="orderby_updatetime" data-table-search="1" type="hidden">--%>
                            </th>
                            <th width="120">
                                状态
                                <%--<select name="search-type" id="status-change">
                                    <option value="">状态</option>
                                    <option value="1">前台隐藏</option>
                                    <option value="2">推荐</option>
                                </select>--%>
                            </th>
                            <th data-table-columnclass="met-center" width="40"><abbr title="越大越靠前">排序</abbr></th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${articleList}" var="article" varStatus="status">
                            <tr role="row" class="odd">
                                <td class=" met-center">
                                    <input name="id" type="checkbox" value="${article.id}" />
                                </td>
                                <td>
                                    <div class="ui-table-a">
                                        <a title="${article.title}" href="#" target="_blank">${article.title}</a>
                                    </div>
                                </td>
                                <td class=" met-center">${article.hits}</td>
                                <td class=" met-center"><fmt:formatDate value="${article.updatetime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
                                <td>
                                    <c:if test="${article.recommend==1}">
                                        <span class="label label-info" style="margin-left:8px;">推荐</span>
                                    </c:if>
                                    <c:if test="${article.top == 1}">
                                        <span class="label label-success" style="margin-left:8px;">置顶</span>
                                    </c:if>
                                </td>
                                <td class=" met-center">
                                    <input name="noOrder" type="text" class="ui-input text-center" value="${article.noOrder}">
                                </td>
                                <td>
                                    <a href="/content/publishArticle.html?id=${article.id}" class="edit">编辑</a>
                                    <span class="line">-</span>
                                    <a href="/content/delPerArticle.html?id=${article.id}" class="delet">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th><input name="id" type="checkbox" data-table-chckall="id" value=""></th>
                            <th colspan="6" class="formsubmit" style="text-align:left!important;">
                                <%--<div class="dropup pull-left" style="margin-left:5px;">
                                    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true">
                                        状态修改
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu list-type-update" role="menu">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:;" data-value="comok">推荐</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:;" data-value="comno">取消推荐</a></li>
                                        <li role="presentation" class="divider"></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:;" data-value="topok">置顶</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:;" data-value="topno">取消置顶</a></li>
                                        <li role="presentation" class="divider"></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:;" data-value="displayok">前台显示</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:;" data-value="displayno">前台隐藏</a></li>
                                    </ul>
                                </div>--%>
                                <%--<div class="dropup pull-left" style="margin-left:5px;">
                                    <button class="btn btn-default dropdown-toggle" type="button" name="move" data-toggle="dropdown" aria-expanded="true">
                                        移动
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu list-type-update" data-type="move" role="menu" >
                                        <li role="presentation" class="dropdown-header">移动到指定栏目</li>
                                        <li role="presentation" class="divider"></li>
                                        <li role="presentation" class="dropdown-submenu">
                                            <a role="menuitem" data-toggle="dropdown" class="dropdown-toggle" tabindex="-1" href="javascript:;">新闻资讯</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="javascript:;" data-value="2-4-0">公司动态</a></li>
                                                <li><a href="javascript:;" data-value="2-5-0">业界资讯</a></li>
                                            </ul>
                                        </li>
                                        <li role="presentation" class="divider"></li>
                                    </ul>
                                </div>--%>
                                <%--<div class="dropup pull-left" style="margin-left:5px;">
                                    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="true">
                                        复制
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu list-type-update" data-type="copy" role="menu" >
                                        <li role="presentation" class="dropdown-header">复制到指定栏目</li>
                                        <li role="presentation" class="divider"></li>
                                        <li role="presentation" class="dropdown-submenu">
                                            <a role="menuitem" data-toggle="dropdown" class="dropdown-toggle" tabindex="-1" href="javascript:;">新闻资讯</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="javascript:;" data-value="2-4-0">公司动态</a></li>
                                                <li><a href="javascript:;" data-value="2-5-0">业界资讯</a></li>
                                            </ul>
                                        </li>
                                        <li role="presentation" class="divider"></li>
                                    </ul>
                                    <input type="hidden" name="columnid" value="" />
                                    <input type="hidden" name="recycle" value="" />
                                </div>--%>
                                <button type="submit" name="save" id="article-form-save" class="btn btn-default" style="margin-left:5px;">保存排序</button>
                                <button type="submit" name="del" id="article-form-del" class="btn btn-default" style="margin-left:2px;">删除</button>
                            </th>
                        </tr>
                    </tfoot>
                </table>

                <div class="dataTables_info" id="DataTables_Table_0_info" role="status" aria-live="polite">显示第 ${empty param['pager.offset']?1:param['pager.offset']+1} 至 ${(param['pager.offset']+pageSize)>articleCnt?articleCnt:(param['pager.offset']+pageSize)} 项结果，共 ${articleCnt} 项</div>

                <%--
                    url:分页的链接根地址，pager标签会在这个链接的基础上附加分页参数，但不允许像给页面跳转的url那样，在后面直接添加参数，而参数的传递时需要使用pg:param来指定。
                    items:总记录数，pager标签正是根据这个值来计算分页参数，很重要。
                    maxPageItems:每页显示的行数，默认为10
                    maxIndexPages:在循环输出页码的时候，最大输出多少个页码，默认是10
                --%>
                <pg:pager url="/content/modultList.html" maxIndexPages="5" maxPageItems="${pageSize}"  items="${articleCnt}" export="currentPageNumber=pageNumber">
                    <pg:param name="module" value="${param.module}"></pg:param>
                    <c:if test="${param.class1>0}">
                        <pg:param name="class1" value="${param.class1}"></pg:param>
                    </c:if>
                    <c:if test="${param.class2>0}">
                        <pg:param name="class2" value="${param.class2}"></pg:param>
                    </c:if>

                    <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">

                        <c:if test="${articleCnt > pageSize}">
                            <pg:first>
                                <a class="paginate_button previous disabled" href="${pageUrl}">首页</a>
                            </pg:first>
                        </c:if>
                        <pg:prev>
                            <a class="paginate_button previous disabled" href="${pageUrl}">上页</a>
                        </pg:prev>

                        <span>
                            <pg:pages>
                                <c:choose>
                                    <c:when test="${currentPageNumber eq pageNumber }">
                                        <a class="paginate_button current" tabindex="0">${pageNumber}</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="paginate_button " tabindex="0" href="${pageUrl}">${pageNumber}</a>
                                    </c:otherwise>
                                </c:choose>
                            </pg:pages>

                            <%--<a class="paginate_button current" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">1</a>
                            <a class="paginate_button " aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0">2</a>--%>
                        </span>

                        <pg:next>
                            <a class="paginate_button next" href="${pageUrl}">下页</a>
                        </pg:next>
                        <c:if test="${articleCnt > pageSize}">
                            <pg:last>
                                <a class="paginate_button next" href="${pageUrl}">尾页</a>
                            </pg:last>
                        </c:if>
                    </div>
                </pg:pager>
            </div>
            </form>
            </div>

        <script src="/js/app/system/include/public/js/sea.js?v111"></script>
    </div>
</div>
<div class="footer">Powered by <b><a href="#" target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWeb CMS</a></div>
</div>
</div>
<div class="clear"></div>
</div>
</div>
</body>
<script src="/js/topweb/article.js?v17"></script>
</html>
