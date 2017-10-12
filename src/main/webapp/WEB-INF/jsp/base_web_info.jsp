<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.topweb.common.WebBaseConfig" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <%--<link href="http://localhost:88/metinfo/favicon.ico" rel="shortcut icon" type="image/x-icon" />--%>
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/ui/admin/css/metinfo.css" />
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
                anyid="57",
                own_form="",
                own_name="",
                tem="/js/app/system/admin/templates/web/webset/",
                adminurl="",
                apppath="",
                jsrand="201710120226",
                editorname="ueditor"
                ;
    </script>
    <!--[if IE]><script src="/js/public/js/html5.js" type="text/javascript"></script><![endif]-->
</head>
<body>
<div id="metcmsbox">
    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">
                <ol class="breadcrumb position hidden-xs">
                    <li>设置</li>
                    <li><a href="/setting/baseWebInfo.html">基本信息</a></li>
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
            > 网站信息
        </div>
        <div class="clear"></div>
        <div class="stat_list">
            <a class='now' title="网站信息" href="/setting/baseWebInfo.html">网站信息</a>
            <%--<a  title="邮件发送设置" href="http://localhost:88/metinfo/admin/index.php?lang=cn&anyid=57&n=webset&c=webset&&a=doemailset">邮件发送设置</a>--%>
            <%--<a title="第三方代码" href="/setting/base3rdInfo.html">第三方代码</a>--%>
        </div>
        <div class="clear"></div>

        <form method="POST" class="ui-from" id="myform" name="myform"  target="_self">
            <div class="v52fmbx" data-gent="" data-webset-record="">
                <h3 class="v52fmbx_hr">网站基本信息设置</h3>
                <dl>
                    <dt>网站名称</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.webName%>" type="text" value="${topweb_webname}" />
                        </div>
                    </dd>
                </dl>

                <dl>
                    <dt>网站LOGO</dt>
                    <dd class="ftype_upload">
                        <div class="fbox">
                            <%--<input name="<%=WebBaseConfig.logo%>" type="text" data-upload-type="doupimg" class="text" value="${topweb_logo}">--%>
                            <input name="met_logo" type="text" data-upload-type="doupimg" class="text" value="..${topweb_logo}">
                        </div>
                        <span class="tips">建议尺寸 180 * 60 (像素)</span>
                    </dd>
                </dl>

                <dl>
                    <dt>地址栏图标</dt>
                    <dd class="ftype_upload">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.icon%>" type="text" data-upload-key="98f1186331177ab93815c253ada6a011" data-upload-type="doupico" class="text" value="">
                        </div>
			<span class="tips">建议尺寸 32 * 32 (像素)的.ico文件。<a href="https://www.baidu.com/s?wd=ico%E5%9B%BE%E6%A0%87%E5%88%B6%E4%BD%9C" target="_blank">点击制作ICO</a>
			<br />
			如果无法正常显示新上传图标，清空浏览器缓存后访问。
			</span>
                    </dd>
                </dl>

                <%--<dl>
                    <dt>网站网址</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.url%>" type="text" value="${topweb_url}"  />
                        </div>
                        <span class="tips">建议填写检测到的网址：http://localhost:88/metinfo/</span>
                    </dd>
                </dl>--%>

                <dl>
                    <dt>网站关键词</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.keywords%>" type="text" value="${topweb_keywords}" />
                        </div>
                        <span class="tips">多个关键词请用竖线|隔开，建议3到4个关键词。</span>
                    </dd>
                </dl>

                <dl>
                    <dt>网站描述</dt>
                    <dd class="ftype_textarea">
                        <div class="fbox">
                            <c:choose>
                                <c:when test="${not empty topweb_description}">
                                    <textarea name="<%=WebBaseConfig.description%>">${topweb_description}</textarea>
                                </c:when>
                                <c:otherwise>
                                    <textarea name="<%=WebBaseConfig.description%>">网站描述，一般显示在搜索引擎搜索结果中的描述文字，用于介绍网站，吸引浏览者点击。</textarea>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <span class="tips">100字以内（（当前已输入 <span class="met_description_tips"></span> 个字符））</span>

                    </dd>
                </dl>

                <h3 class="v52fmbx_hr">底部信息设置（显示在网站前台底部）</h3>
                <dl>
                    <dt>版权信息</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.footright%>" type="text" value="${topweb_footright}" />
                        </div>
                    </dd>
                </dl>

                <dl>
                    <dt>地址邮编</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.footaddress%>" type="text" value="${topweb_footaddress}" />
                        </div>
                    </dd>
                </dl>

                <dl>
                    <dt>联系方式</dt>
                    <dd class="ftype_input">
                        <div class="fbox">
                            <input name="<%=WebBaseConfig.foottel%>" type="text" value="${topweb_foottel}" />
                        </div>
                    </dd>
                </dl>

                <dl>
                    <dt>其他信息</dt>
                    <dd class="ftype_ckeditor">
                        <div class="fbox">
                            <textarea name="<%=WebBaseConfig.footother%>" data-ckeditor-type="2" data-ckeditor-y="100">${topweb_footother}</textarea>
                        </div>
                    </dd>
                </dl>

                <dl class="noborder">
                    <dt> </dt>
                    <dd>
                        <input type="submit" name="submit" value="保存" class="submit" onclick="submitConfigInfos();">
                    </dd>
                </dl>

            </div>
        </form>

        <script src="/js/app/system/include/public/js/sea.js?201710120152"></script>

    </div>
</div>
<div class="footer">Powered by <b><a href="#" target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href=“# target=_blank>TopWeb CMS</a></div>
</div>
</div>
<div class="clear"></div>
</div>
</div>
</body>
<script>
function submitConfigInfos() {
    var jsonArray = new Array();
    $('.fbox').find('input, textarea').each(function () {
        var _obj = new Object();
        _obj.name = $(this).attr('name');
        _obj.value = $(this).val();
        jsonArray.push(_obj);
    });
    console.log(JSON.stringify(jsonArray));

    $.ajax({
        url: "/setting/submitBaseSetting.html",
        type: "POST",
        contentType : 'application/json;charset=utf-8', //设置请求头信息
        dataType:"json",
        data: JSON.stringify(jsonArray), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
//        data: $.toJSON(customerArray), //将Json对象序列化成Json字符串，toJSON()需要引用jquery.json.min.js
        success: function(data){
            if (data.code==0) {
                alert('操作成功');//提示操作成功
            }

        },
        error: function(res){
            alert(res.responseText);
        }
    });
}
</script>
</html>