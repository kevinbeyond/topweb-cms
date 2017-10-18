<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>托普威CMS</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/newstyle.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css" />
    <style type="text/css">
        /*上传组件*/
        .ftype_upload .fbox{ position:relative; }
        .ftype_upload .fbox input.text{ display:none; }
        .ftype_upload .fbox input.text{ background:#fff; color:#000; border:1px solid #ccc; padding:2px 8px; vertical-align:middle;height:32px; line-height:32px; width:220px; }
        .ftype_upload .fbox input.text{
            padding: 2px 5px;
            border: 1px solid #dcdfe0;
            background-color: #fff;
            color: #333;
            outline: 0;
            -webkit-transition: .05s border-color ease-in-out;
            transition: .05s border-color ease-in-out;
        }
        .ftype_upload .tips{ display:block; padding-top:5px; }
        .ftype_upload .app-image-list li{ float:left;margin-right:10px; }
        .ftype_upload .app-image-list li.sort{ border:1px solid #ddd; position:relative; margin-bottom:10px; }
        .ftype_upload .app-image-list li.sort img{ max-height:80px; max-width: 100%}
        .ftype_upload .app-image-list li.sort span.close{ position:absolute; right:-8px; top:-8px; width:18px; height:18px; line-height:18px; text-align:center; background:#666; border-radius:9px; font-size:16px; color:#fff; font-weight:normal; opacity:0.8; }
        .ftype_upload .app-image-list li.sort:hover span.close{display:block!important;}
        .ftype_upload .app-image-list li button{ border-radius:0;}
        .ftype_upload .app-image-list li.upnow div{ width:100%!important; height:34px!important; }
        .ftype_upload .app-image-list li.upnow div.webuploader-pick{ width:auto!important; height:auto!important; }
        #upimglist li{ float:left; position:relative; width:100px; height:100px; background-size: contain; background-repeat: no-repeat; background-position: 50% 50%; background-color:#d7d7d7; margin:5px; cursor:pointer; opacity: 0;}
        #UploadModal .modal-body{ height:500px; overflow:hidden; }
        #UploadModal .modal-body li .check{ border:2px solid #09F; position:absolute; left:0px; top:0px; width:100%; height:100%; }
        #UploadModal .modal-body li .check:after {
            position: absolute;
            display: block;
            content: ' ';
            right: 0px;
            bottom: 0px;
            border: 14px solid #09f;
            border-left-color: transparent;
            border-top-color: transparent;
        }
        #UploadModal .modal-body li .check i{ position:absolute; right:0px; bottom:0px; color:#fff; z-index:2;}
        #UploadModal .modal-body li .widget-image-meta{ position:absolute; bottom:0px; left:0px; height:20px; line-height:20px; background:#000; opacity: 0.5; color:#fff; width:100%; font-size:12px; text-align:center;}
        #UploadModal .modal-header h4{ float:left; margin-top:8px; padding-right:20px; border-right:2px solid #ddd; }
        #UploadModal .modal-header #filePicker div{ height:35px!important; width:100%!important; }
        #UploadModal .modal-header #filePicker{ margin-left:20px;float:left; height:35px; width:auto!important; overflow:hidden;}
        .webuploader-container {
            position: relative;
        }
        .webuploader-element-invisible {
            position: absolute !important;
            clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
            clip: rect(1px,1px,1px,1px);
        }

        .webuploader-pick-disable {
            opacity: 0.6;
            pointer-events:none;
        }
    </style>
    <script type="text/javascript">
        var basepath='/js/admin/templates/templates/met/images',
                lang = 'cn',
                adminurl='';
    </script>

    <script type="text/javascript" src="/js/public/js/jQuery1.7.2.js"></script>
    <%--<script type="text/javascript"src="/js/admin/include/metvar.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/cookie.js"></script>--%>
    <script type="text/javascript" src="/js/admin/templates/met/images/js/iframes.js"></script>
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
                apppath="",
                jsrand="201710181832",
                editorname="ueditor";
    </script>
    <script src="/js/app/system/include/public/js/sea.js"></script>
    <%--<script src="/js/app/system/include/public/js/seajs.js"></script>--%>
    <%--<script>
        var pub = '/js/app/system/include/public/',
                siteurl='/',
                basepath='',
                tem="/js/app/system/admin/templates/web/content/",
                apppath='',editorname='ueditor';
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
    </script>--%>

    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">

                <ol class="breadcrumb position hidden-xs">
                    <li>简体中文</li>
                    <li>内容</li>
                    <li>
                        <a href="/content/manage.html">管理</a></li>

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

    <script type="text/javascript" src="/js/app/system/include/public/js/examples/ckeditor/ckeditor.js"></script>
</head>
<script language = 'JavaScript'>
    var onecount;
    lev = new Array();
    lev[0] = new Array('客户案例','0','33','0');
    lev[1] = new Array('二级栏目','0','','0');
    lev[2] = new Array('三级栏目','0','','0');
    lev[3] = new Array('----------','0','0','-1');
    onecount=1;
</script>
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
    <div class="position">简体中文 > 内容 > <a href="/content/manage.html">管理</a> > <a href='index.php?anyid=29&lang=cn&class1=33'>客户案例</a> > 添加内容</div>
    <div class="return"><a href="javascript:metreturn('index.php?anyid=29&lang=cn&class1=33');">&lt;&lt;返回</a></div>
</div>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>
</div>

<form class="imgForm" method="post">
    <c:if test="${not empty image}">
        <input name="id" type="hidden" value="${image.id}">
    </c:if>
    <%--<input name="reclass1" type="hidden" value="33">
    <input name="reclass2" type="hidden" value="">
    <input name="reclass3" type="hidden" value="">
    <input name="lang" type="hidden" value="cn">
    <input name="module" type="hidden" value="5">
    <input id="acesss_contents" type="hidden"   value="0">
    <input name="filenameold" type="hidden"  value="">
    <input name="updatetimeold" type="hidden"  value="">
    <input name="page" type="hidden"  value="">
    <input type="hidden" name="no_order" value="0" />
    <input type="hidden" name="cengci" value="" />--%>
    <div class="v52fmbx_tbmax">
        <div class="v52fmbx_tbbox">
            <div class="v52fmbx">
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>所属栏目：</dt>
                        <dd class="ftype_select-linkage">
                            <div class="fbox pull-left" data-selectdburl="/setting/cascadeColumns?module=2&classtype=1">
                                <select name="class1" class="prov" data-required="1" data-checked="${image.class1>0?image.class1:''}"></select>
                                <select name="class2" class="city" data-checked="${image.class2>0?image.class2:''}"></select>
                                <select name="class3" class="dist" data-checked=""></select>
                            </div>

                            <span class="tips pull-left" style="margin-left:20px;">
                                <a href="/setting/columns.html">栏目管理</a>
                            </span>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>标题：</dt>
                        <dd>
                            <input name="title" type="text" class="text nonull" value="${image.title}" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>发布人：</dt>
                        <dd>
                            <input name="issue" type="text" class="text mid" value="admin" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>点击次数：</dt>
                        <dd>
                            <input name="hits" type="text" class="text mid" value="${image.hits}" />
                            <span class="tips">点击次数越多，热门信息中排名越靠前</span>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox v52fmbx_inline">
                    <dl>
                        <dt>可选属性：</dt>
                        <dd class="selected-var">
                            <label>
                                <input name="recommend" type="checkbox" class="checkbox" ${image.recommend==1?'checked':''} value="${image.recommend}" >推荐</label>
                            <label>
                                <input name="top" type="checkbox" class="checkbox" ${image.top==1?'checked':''} value="${image.top}" >置顶</label>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>外部链接：</dt>
                        <dd>
                            <input name="links" type="text" class="text" value="${image.links}" />
                            <span class="tips">点击跳转到指定链接</span>
                        </dd>
                    </dl>
                </div>
                <h3 class="v52fmbx_hr metsliding" sliding="1">展示图片</h3>
                <div class="metsliding_box metsliding_box_1">
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>图片地址：</dt>
                            <dd class="ftype_upload">
                                <div class="fbox">
                                    <input name="imgurl" type="text" data-upload-type="doupimg" value="${image.imgurl}"/>
                                </div>
                                <%--<span class="tips">当没有手动上传图片时候，会自动提取您内容第一张图片作为封面（此功能需要模板支持）</span>--%>
                            </dd>
                        </dl>
                    </div>
                </div>
                <%--<div class="metsliding_box metsliding_box_1">
                    <div class="fbox">
                        <input name="imgurl" type="text" data-upload-type="doupimg" value="${article.imgurl}"/>
                    </div>
                    &lt;%&ndash;<span class="tips">当没有手动上传图片时候，会自动提取您内容第一张图片作为封面（此功能需要模板支持）</span>&ndash;%&gt;
                </div>--%>
                <%--<div class="metsliding_box metsliding_box_1">
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>图片地址：</dt>
                            <dd>
                                <input name="imgurl" type="text" class="text" value="">
                                <span class="tips" >自动生成缩略图</span>
                                <input name="met_upsql" type="file" id="file_upload" />
                            </dd>
                        </dl>
                    </div>

                    <div class="v52fmbx_dlbox none hidebox1">
                        <dl>
                            <dt>缩略图：</dt>
                            <dd>
                                <input name="imgurls" type="text" class="text" value="">
                                <input name="met_upsql1" type="file" id="file_upload1" />
                            </dd>
                        </dl>
                    </div>

                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt></dt>
                            <dd>
                                <a href="javascript:;" onclick="openhidebox($(this),$('.hidebox1'),'隐藏缩略图','显示缩略图')">显示缩略图</a>
                            </dd>
                        </dl>
                    </div>

                    <script type="text/javascript">
                        $(document).ready(function(){
                            metuploadify('#file_upload','big_wate_img','imgurl-imgurls',5,5);
                            metuploadify('#file_upload1','small','imgurls');
                        });
                    </script>
                    <div id="list-top"><input name="imgnum" type="hidden" value="0" /></div>

                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt></dt>
                            <dd>
                                <a href="addimg.php?lang=cn&action=add" onclick="return adddisplayimg($(this));">+添加展示图片</a>
                                <span id="loadtxt"></span>
                            </dd>
                        </dl>
                    </div>
                </div>--%>

                <%--<h3 class="v52fmbx_hr metsliding" sliding="0">详细内容</h3>
                <div class="metsliding_box metsliding_box_0">
                    <div class="v52fmbx_dlbox_content">
                        <div class="ckeditormetbox">
                            <textarea class="ckeditor" name="content"></textarea>
                            <script type="text/javascript">
                                met_ckeditor('../','content');
                            </script>
                        </div>
                    </div>
                </div>--%>
                <%--<h3 class="v52fmbx_hr metsliding" sliding="3">搜索引擎优化设置(seo)</h3>
                <div class="metsliding_box metsliding_box_3">
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>页面Title：</dt>
                            <dd>
                                <input name="ctitle" type="text" class="text" value="" />
                                <span class="tips">为空则使用SEO参数设置中设置的title构成方式</span>
                            </dd>
                        </dl>
                    </div>
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>关键词：</dt>
                            <dd>
                                <input name="keywords" type="text" class="text" value="">
                                <span class="tips">用于搜索引擎优化,多个关键词请用","隔开</span>
                            </dd>
                        </dl>
                    </div>
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>简短描述：</dt>
                            <dd>
                                <textarea name="description" cols="60" class="textarea gen" rows="5" ></textarea>
                            </dd>
                        </dl>
                    </div>
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>静态页面名称：</dt>
                            <dd>
                                <input name="filename" type="text" class="text med" value="">
                                <span class="tips">为空则使用静态页面设置中设置的URL构成方式，不要加html后缀，不支持特殊字符</span>
                            </dd>
                        </dl>
                    </div>
                    &lt;%&ndash;<div class="v52fmbx_dlbox">
                        <dl>
                            <dt>Tag标签：</dt>
                            <dd>
                                <input name="tag" type="text" class="text" value="">
                                <span class="tips">多个Tag标签请用“|”隔开</span>
                            </dd>
                        </dl>
                    </div>&ndash;%&gt;
                </div>--%>
                <%--<h3 class="v52fmbx_hr metsliding" sliding="12">自定义时间参数</h3>
                <div class="metsliding_box metsliding_box_12">
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>定时发布：</dt>
                            <dd>
				            <span class="tips">把发布时间设置为未来时间，即可在指定时间发布。</span>
                            </dd>
                        </dl>
                    </div>
                    <div class="v52fmbx_dlbox">
                        <div class="v52fmbx_dlbox">
                            <dl>
                                <dt>发布时间：</dt>
                                <dd>
                                    <input name="addtime" type="text" class="text" value="2017-10-07 22:09:14">
                                    <span class="tips">当前时间为：2017-10-07 22:09:14 注意不要改变格式。</span>
                                </dd>
                            </dl>
                        </div>
                        <div class="v52fmbx_dlbox">
                            <dl>
                                <dt>更新时间：</dt>
                                <dd>
                                    <input name="updatetime" type="text" class="text" value="2017-10-07 22:09:14">
                                    <span class="tips">当前时间为：2017-10-07 22:09:14 注意不要改变格式。</span>
                                </dd>
                            </dl>
                        </div>
                    </div>--%>

                    <h3 class="v52fmbx_hr metsliding" sliding="14">权限设置</h3>
                    <%--<div class="metsliding_box metsliding_box_14">
                        <div class="v52fmbx_dlbox">
                            <dl>
                                <dt>访问权限：</dt>
                                <dd>
                                    <select name="access" id="access" >
                                        <option value='0'>不限</option><option value='1' >普通会员</option><option value='2' >代理商</option><option value='3'>管理员</option>
                                    </select>
                                </dd>
                            </dl>
                        </div>
                    </div>--%>
                    <div class="v52fmbx_dlbox">
                        <dl>
                            <dt>前台显示：</dt>
                            <dd>
                                <c:choose>
                                    <c:when test="${image.access==1}">
                                        <label><input name="access" type="radio" class="radio" checked value="1" />是</label>
                                        <label><input name="access" type="radio" class="radio"  value="0" />否</label>
                                    </c:when>
                                    <c:otherwise>
                                        <label><input name="access" type="radio" class="radio" value="1" />是</label>
                                        <label><input name="access" type="radio" class="radio" checked value="0" />否</label>
                                    </c:otherwise>
                                </c:choose>
                            </dd>
                        </dl>
                    </div>
                    <div class="v52fmbx_submit">
                        <input type="submit" value="保存" class="submit"/>
                    </div>
                </div>
            </div>
        </div>
</form>
<div class="footer">Powered by <b><a href=# target=_blank>TopWeb CMS</a></b> &copy;2008-2017 &nbsp;<a href=# target=_blank>TopWeb CMS</a></div>
<script type="text/javascript">
    $(document).ready(function(){
        var list = $("#metinfocms li");
        var text = $(".ckeditormetbox");
        list.each(function(i){
            var my = $(this);
            my.click(
                    function () {
                        text.each(function(d){
                            var o = $(this);
                            if(i==d){ o.css("display","block"); }else{ o.css('display','none'); }
                        });
                        list.each(function(t){
                            var o = $(this);
                            if(i==t){ o.addClass("hover"); }else{ $(this).removeClass("hover"); }
                        });
                    });
        });
    });
</script>
</body>
<script src="/js/topweb/img.js?v0.11200"></script>
</html>