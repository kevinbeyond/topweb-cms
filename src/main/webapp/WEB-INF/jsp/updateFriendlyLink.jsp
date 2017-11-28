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

<form  method="POST" name="myform" enctype="multipart/form-data" action="/market/saveFriendlyLink.html?updateid=${fl.id}" target="_self">
    <input name="lang" type="hidden"  value="cn">
    <input name="id" type="hidden"  value="">
    <div class="v52fmbx_tbmax v52fmbx_tbmaxmt">
        <div class="v52fmbx_tbbox">
            <div class="v52fmbx">
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>链接类型：</dt>
                        <dd>
                            <c:choose>
                                <c:when test="${fl.linkType==1}">
                                    <label><input name="link_type" type="radio" class="radio" value="1"   checked="checked" />文字链接</label>
                                    <label><input name="link_type" type="radio" class="radio" value="2"   />LOGO链接</label>
                                </c:when>
                                <c:when test="${fl.linkType==2}">
                                    <label><input name="link_type" type="radio" class="radio" value="1"    />文字链接</label>
                                    <label><input name="link_type" type="radio" class="radio" value="2"   checked="checked"/>LOGO链接</label>
                                </c:when>
                            </c:choose>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>机构或媒体：</dt>
                        <dd> <c:choose>
                            <c:when test="${fl.mediaOrInstitutions==1}">
                            <label><input name="jiormei" type="radio" class="radio" value="1"  checked="checked" />合作媒体</label>
                            <label><input name="jiormei" type="radio" class="radio" value="2"  />合作机构</label>
                                <input name="jiormei" type="hidden" value="0"/>
                            </c:when>
                            <c:when test="${fl.mediaOrInstitutions==2}">
                                <label><input name="jiormei" type="radio" class="radio" value="1"    />合作媒体</label>
                                <label><input name="jiormei" type="radio" class="radio" value="2"  checked="checked"/>合作机构</label>
                                <input name="jiormei" type="hidden" value="0"/>
                            </c:when>
                            <c:otherwise>
                                <label><input name="jiormei" type="radio" class="radio" value="1"    />合作媒体</label>
                                <label><input name="jiormei" type="radio" class="radio" value="2"    />合作机构</label>
                                <input name="jiormei" type="hidden" value="0"/>
                            </c:otherwise>
                        </c:choose>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站地址：</dt>
                        <dd>
                            <input name="weburl" type="text" class="text nonull" value="${fl.webAddress}" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站LOGO：</dt>
                        <dd>
                            <input name="met_upsql1" type="file" id="file_upload" />
                          <%--  <script type="text/javascript">
                                $(document).ready(function(){
                                    metuploadify('#file_upload','upimage','weblogo');
                                });
                            </script>--%>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站标题：</dt>
                        <dd>
                            <input name="webname" type="text" class="text nonull" value="${fl.webTitle}" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>网站关键词：</dt>
                        <dd>
                            <input name="info" type="text" class="text" value="${fl.webKeyWords}" />
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>排序：</dt>
                        <dd>
                            <input name="orderno" type="text" class="text mid" value="${fl.sort}" />
                            <span class="tips">数字越大排序越靠前</span>
                        </dd>
                    </dl>
                </div>
                
            <%--    <script type="text/javascript">
              /*  function egis() {
                alert("egis");

                var egis=$('#egis');
                if (egis.is(':checked')){
                egis.val(1)
                alert("被选中"+egis.val());
                }else {
                egis.val(2)
                alert("没被选中"+egis.val());
                }
                return true;
                }*/
              var arrs = document.getElementsByName("show_ok");
              for(var a in arrs){
                  if(arrs[a].checked){
                      alert("第" + (a+1) + "个被选中了");
                  }
              }


                </script>--%>
                
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>可选属性：</dt>
                        <dd>
                            <c:choose>
                                <c:when test="${fl.egis==1}">
                                    <label><input  name="show_ok" type="checkbox" class="checkbox" value="1"checked="checked">审核通过</label>
                                    <input name="show_ok" type="hidden" value="2"/>
                                </c:when>
                                <c:when test="${fl.egis==2}">
                                    <label><input name="show_ok" type="checkbox" class="checkbox" value="1" >审核通过</label>
                                    <input name="show_ok" type="hidden" value="2"/>
                                </c:when>
                            </c:choose>

                            <c:choose>
                                <c:when test="${fl.recommend==1}">
                                    <label><input name="com_ok" type="checkbox" class="checkbox" value="1"  checked="checked">推荐站点</label>
                                    <input name="com_ok" type="hidden" value="2"/>
                                </c:when>
                                <c:when test="${fl.recommend==2}">
                                    <label><input name="com_ok" type="checkbox" class="checkbox" value="1" >推荐站点</label>
                                    <input name="com_ok" type="hidden" value="2"/>
                                </c:when>
                            </c:choose>

                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_dlbox">
                    <dl>
                        <dt>联系方式：</dt>
                        <dd>
                            <textarea name="contact" cols="60" rows="5" class="textarea gen">
                                ${fl.contactWay}
                            </textarea>
                        </dd>
                    </dl>
                </div>
                <div class="v52fmbx_submit">
                    <input type="submit" name="Submit" value="保存" class="submit"/>
                    <input name="id" type="hidden" value="" />
                </div>
            </div>
        </div>
    </div>
    <div class="footer">Powered by <b><a href="#" target=_blank>TopWebS CMS</a></b> &copy;2008-2017 &nbsp;<a href="#" target=_blank>TopWebS CMS</a></div>
</form>
</body>
</html>