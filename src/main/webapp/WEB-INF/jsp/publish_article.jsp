<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
                jsrand="20171004",
                editorname="ueditor";
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
                <%--<div class="btn-group pull-right met-tool met-msecount-tool">
                    <button class="btn btn-default text-center dropdown-toggle msecount" type="button" onclick="location.href = 'http://localhost:88/metinfo/admin/index.php?n=system&c=news&a=doindex&lang=cn';">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-danger">0</span>
                    </button>
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
                </div>--%>
            </div>
        </div>
    </div>

    <div class="metappcontentbox">
        <div class="metinfotop">
        </div>
        <div class="clear"></div>
        <link rel="stylesheet" href="/css/app/system/admin/templates/web/content/css/metinfo.css" />
        <form method="POST" name="myform" id="articleForm" class="ui-from article_add" target="_self">
            <c:if test="${not empty article}">
                <input type="hidden" name='id' value="${article.id}" />
            </c:if>
            <%--<input type="hidden" name="imgurl_l" value="">
            <input type="hidden" name="imgurls_l" value="">
            <input type="hidden" name="no_order" value="">
            <input type="hidden" name="select_class1" value="">
            <input type="hidden" name="select_class2" value="">
            <input type="hidden" name="select_class3" value="">--%>
            <div class="v52fmbx">
                <dl>
                    <dt><em class="required">*</em>所属栏目</dt>
                    <dd class="ftype_select-linkage">
                        <div class="fbox pull-left" data-selectdburl="/setting/cascadeColumns?module=2&classtype=1">
                            <select name="class1" class="prov" data-required="1" data-checked="${article.class1>0?article.class1:''}"></select>
                            <select name="class2" class="city" data-checked="${article.class2>0?article.class2:''}"></select>
                            <select name="class3" class="dist" data-checked=""></select>
                        </div>
                        <span class="tips pull-left" style="margin-left:20px;">
                            <a href="/setting/columns.html">栏目管理</a>
                        </span>
                    </dd>
                </dl>
                <dl>
                    <dt><em class="required">*</em>文章标题</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="title" value="${article.title}" data-required="1" />
                        </div>
                    </dd>
                </dl>
                <h3 class="v52fmbx_hr">详细内容</h3>
                <dl>
                    <dd class="ftype_ckeditor">
                        <div class="fbox">
                            <textarea name="content" data-ckeditor-y="500">${article.content}</textarea>
                        </div>
                    </dd>
                </dl>
                <h3 class="v52fmbx_hr">SEO设置</h3>
                <dl>
                    <dt>自定义页面title</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="ctitle" value="${article.ctitle}" />
                        </div>
                        <span class="tips">为空则系统自动构成，可以到 营销-SEO 中设置构成规则。</span>
                    </dd>
                </dl>
                <dl>
                    <dt>关键词</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="keywords" value="${article.keywords}" />
                        </div>
                        <span class="tips">多个关键词请用 , 或 | 隔开</span>
                    </dd>
                </dl>
                <dl>
                    <dt>描述文字</dt>
                    <dd class="ftype_textarea">
                        <div class="fbox">
                            <textarea name="description">${article.description}</textarea>
                        </div>
                        <span class="tips">为空则系统自动抓取详情</span>
                    </dd>
                </dl>
                <%--<dl>
                    <dt><abbr title="显示在详情页底部，用于聚合内容">TAG标签</abbr></dt>
                    <dd class="ftype_tags">
                        <div class="fbox">
                            <input name="tag" type="hidden" data-label="|" value="">
                        </div>
                        <span class="tips">点击 + 号输入选项名，再点击 + 号或回车完成添加</span>
                    </dd>
                </dl>--%>
                <%--<dl>
                    <dt>静态页面名称</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="filename" style="width:200px;" value="" />
                        </div>
                        <span class="tips">支持中文、大小写字母、数字、下划线</span>
                    </dd>
                </dl>--%>
                <h3 class="v52fmbx_hr">其它设置</h3>
                <dl>
                    <dt>发布人</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="issue" style="width:100px;" value="admin" />
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt>访问量</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="hits" style="width:100px;" value="${article.hits}" />
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt>链接至</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input type="text" name="links" value="${article.links}" />
                        </div>
                        <span class="tips">请输入要链接到的网址，设置后访问该信息将直接跳转到设置的网址。</span>
                    </dd>
                </dl>
                <%--<dl>
                    <dt>访问权限</dt>
                    <dd class="ftype_select">
                        <div class="fbox">
                            <select name="access" data-checked="">
                                <option value="0">不限制</option>
                                <option value="1">普通会员</option>
                                <option value="2">代理商</option>
                                <option value="2">管理员</option>
                            </select>
                        </div>
                    </dd>
                </dl>--%>
                <dl>
                    <dt>状态</dt>
                    <dd class="ftype_checkbox ftype_transverse">
                        <div class="fbox">
                            <label><input name="display" type="checkbox" value="${article.display}" <c:if test="${article.display==1}">checked</c:if>>前台显示</label>
                            <label><input name="recommend" type="checkbox" value="${article.recommend}" <c:if test="${article.recommend==1}">checked</c:if>>推荐</label>
                            <label><input name="top" type="checkbox" value="${article.top}" <c:if test="${article.top==1}">checked</c:if>>置顶</label>
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt>更新时间</dt>
                    <dd class="ftype_day">
                        <div class="fbox">
                            <input type="input" name="updatetime" data-day-type = "2" value="<fmt:formatDate value="${article.updatetime}" pattern="yyyy-MM-dd HH:mm:ss" />">
                        </div>
                    </dd>
                </dl>

                <%--<dl>
                    <dt>发布时间</dt>
                    <dd class="ftype_day">
                        <div class="form-inline" style="margin-bottom:10px;">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="addtype" value="1" data-checked="1">
                                    立即发布
                                </label>
                            </div>
                        </div>
                        <div class="form-inline" style="margin-bottom:10px;">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="addtype" value="2"  >
                                    定时发布
                                </label>
                            </div>
                            <div class="form-group" style="margin-left:10px;">
                                <div class="fbox">
                                    <input type="input" name="addtime" data-day-type = "2"  value="">
                                </div>
                            </div>
                        </div>

                    </dd>
                </dl>--%>
                <%--<dl>
                    <dt>封面图片</dt>
                    <dd class="ftype_upload">
                        <div class="fbox">
                            <input
                                    name="imgurl"
                                    type="text"
                                    data-upload-type="doupimg"
                                    value=""
                            />
                        </div>
                        <span class="tips">当没有手动上传图片时候，会自动提取您内容第一张图片作为封面（此功能需要模板支持）</span>
                    </dd>
                </dl>--%>
            </div>
        </form>
        <div class="met_affix_save bg-success">
            <button type="submit" id="article-submit" class="btn btn-success">发布文章</button>
        </div>

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
<script src="/js/app/system/include/public/js/sea.js"></script>
</html>