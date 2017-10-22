<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        var basepath='/',
                lang = 'cn',
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
                siteurl='http://demo.metinfo.cn/',
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
                    <li><a href="#">友情链接</a></li>

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

    <div class="position">简体中文 > 营销 > <a href="#">友情链接</a> > 添加(友情链接)</div>


    <div class="return"><a href="javascript:metreturn('index.php?anyid=39&lang=cn');">&lt;&lt;返回</a></div>

</div>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>


</div>

<c:if test="${school.id!=0}">
<form  method="POST" name="myform" enctype="multipart/form-data" action="/um/upinfo.html" target="_self">
</c:if>
<c:if test="${school.id==0}">
<form  method="POST" name="myform" enctype="multipart/form-data" action="/um/addinfo.html?" target="_self">

</c:if>

    <input name="lang" type="hidden"  value="cn">
    <input name="id" type="hidden"  value="">
    <div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
        <div class="v52fmbx_tbbox">
            <div class="v52fmbx">
                <c:if test="${school.id!=0}">
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>学校id:</dt>
                        <dd>
                                <input name="schoolid"  type="text" STYLE="width: 20px;height: 20px; position: absolute ;top: 8px;" readonly="readonly" class="radio" value="${school.id}"   checked="checked" />
                        </dd>
                    </dl>
                </div>
                </c:if>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>学校名字(中文)：</dt>
                        <dd>
                            <input name="cname" type="text" required="required" class="text nonull" value="${school.uname}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>学校名字(日本)：</dt>
                        <dd>
                            <input name="jpname" type="text" required="required" class="text nonull" value="${school.jpname}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>学校地址：</dt>
                        <dd>
                            <input name="schooladress" required="required" type="text" class="text nonull" value="${school.schooladress}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>学校性质：</dt>
                        <dd>
                            <select name="schoolnature" >
                                 <c:forEach items="${nature}" var="namenode">
                                     <c:choose>
                                         <c:when test="${namenode.id==school.schoolnature}">
                                             <option value="${namenode.id}" selected="selected">${namenode.nature}</option>
                                         </c:when>

                                     <c:otherwise>
                                         <option value="${namenode.id}">${namenode.nature}</option>
                                     </c:otherwise>
                                     </c:choose>

                                 </c:forEach>
                            </select>

                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>建造时间(年)：</dt>
                        <dd>
                            <input name="buldingyear" type="text" class="text" value="${school.buldingschooltime}" />
                        </dd>
                    </dl>
                </div>


                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>国家教育认证：</dt>
                        <dd>
                            <c:choose>
                                <c:when test="${school.authentication==1}">
                                    <label><input name="authentication" type="radio" class="radio" value="1"   checked="checked" />被认证</label>
                                    <label><input name="authentication" type="radio" class="radio" value="2"   />没被认证</label>
                                </c:when>
                                <c:otherwise>
                                    <label><input name="authentication" type="radio" class="radio" value="1"    />被认证</label>
                                    <label><input name="authentication" type="radio" class="radio" value="2"  checked="checked" />没被认证</label>
                                </c:otherwise>
                            </c:choose>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>人数：</dt>
                        <dd>
                            <input name="peopleconut" required="required" type="number" min="0"  class="text mid" value="${school.peoplecount}" />
                            <span class="tips">人数越多人气越高</span>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>人气：</dt>
                        <dd>
                            <input name="popularity" required="required" type="number" min="0"  class="text mid" value="${school.popularity}" />
                            <span class="tips">人气越高排序越靠前</span>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>电话：</dt>
                        <dd>
                            <input name="phone" required="required" type="text" min="0"  class="text mid" value="${school.phone}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>简介：</dt>
                        <dd>
                            <textarea name="synopsis" required="required" cols="60" rows="5" class="textarea gen">
                                ${school.synopsis}
                            </textarea>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>校训：</dt>
                        <dd>
                            <textarea name="motto" required="required" cols="60" rows="5" class="textarea gen">
                                ${school.motto}
                            </textarea>
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>博士专业数量：</dt>
                        <dd>
                            <input name="phd" required="required" type="number" min="0"  class="text mid" value="${school.phd}" />
                        </dd>
                        <dt>博士费用：</dt>
                        <dd>
                            <input name="ptuition" required="required" step="0.01" type="number" min="0"  class="text mid" value="${tuition.ptuition}" />
                        </dd>

                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>研究生专业数量：</dt>
                        <dd>
                            <input name="graduate" required="required" type="number" min="0"  class="text mid" value="${school.graduate}" />
                        </dd>
                        <dt>研究生费用：</dt>
                        <dd >
                            <input name="gtuition" required="required" step="0.01"  type="number" min="0"  class="text mid" value="${tuition.gtuition}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>本科专业数量：</dt>
                        <dd>
                            <input name="undergraduate" required="required" type="number" min="0"  class="text mid" value="${school.undergraduate}" />
                        </dd>
                        <dt>本科费用：</dt>
                        <dd>
                            <input name="utuition" required="required" step="0.01" type="number" min="0"  class="text mid" value="${tuition.utuition}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>语言中心专业数量：</dt>
                        <dd>
                            <input name="speechcenter" required="required" type="number" min="0"  class="text mid" value="${school.speechcenter}" />
                        </dd>
                        <dt>语言中心费用：</dt>
                        <dd>
                            <input name="stuition" required="required" step="0.01" type="number" min="0"  class="text mid" value="${tuition.stuition}" />
                        </dd>
                    </dl>
                </div>

                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>图片：</dt>
                        <dd>
                            <input name="met_upsql1" type="file" id="file_upload" />
                           <%-- <script type="text/javascript">
                                $(document).ready(function(){
                                    metuploadify('#file_upload','upimage','weblogo');
                                });
                            </script>--%>
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
    <div class="footer">Powered by <b><a href="#" target=_blank>TopWebS CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWebS CMS</a></div>
</>
</body>
</html>