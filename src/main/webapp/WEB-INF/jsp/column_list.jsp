<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/css/app/system/include/public/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/metinfo.css" />
    <link rel="stylesheet" type="text/css" href="/css/admin/templates/met/images/css/newstyle.css" />
    <link rel="stylesheet" href="/css/app/system/include/public/font-awesome/css/font-awesome.min.css" />
    <script type="text/javascript">
        var basepath='/images?20171004',
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
        var metimgurl='/images/';
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
        var pub = 'http://localhost:88/metinfo/app/system/include/public/',siteurl='http://localhost:88/metinfo/',basepath='http://localhost:88/metinfo/admin/',apppath='http://app.metinfo.cn/index.php?lang=cn&',editorname='ueditor';
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
<body id="column">

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
        <div class="position">简体中文 > 设置 > <a href="/setting/columns.html">栏目</a></div>
    </div>
    <div class="clear"></div>

    <script type="text/javascript">
        $("html",parent.document).find('.returnover').remove();
    </script>

<div class="v52fmbx_tbmax">
    <td class="v52fmbx_tbbox">
        <table cellpadding="0" cellspacing="0" class="table">
            <tr>
                <td colspan="3" class="centle" style="font-weight:normal;">
                    <%--<a href="index.php?anyid=25&lang=cn&action=modify&met_columnshow=" onclick="return columnshow($(this),'展开所有子栏目','隐藏所有子栏目');" style="float:right; font-weight:normal; padding-right:10px;">展开所有子栏目</a>--%>
                    &nbsp;&nbsp;<a href="/setting/addColumn.html?type=1" onclick="return addcolumn($(this),'',1);">添加一级栏目</a>&nbsp;&nbsp;
                    <font style=' color:#999;'>排序越小越靠前</font>
                    <span id="loadtxt"></span>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="padding:0px!important;border:0px">
                    <form name="del" id="columnForm" method="Post" action="delete.php?anyid=25&lang=cn">
                        <table cellpadding="0" cellspacing="1" class="table neitable columntables">
                            <tr id="list-top">
                                <td width="30" class="list">选择</td>
                                <td width="30" class="list">排序</td>
                                <td class="list">栏目名称</td>
                                <td class="list" width="110">导航栏显示</td>
                                <td class="list" width="60">所属模块</td>
                                <td class="list" width="60">目录名称</td>
                                <td class="list" width="30">标识</td>
                                <td class="list" width="130">操作</td>
                            </tr>

                            <%--已添加栏目 start--%>
                            <c:forEach items="${columnViewModelList}" var="column" varStatus="status">
                                <tr class="mouse click column_1">
                                    <td class="list-text">
                                        <input name="id" type="checkbox" onclick="list_all($(this),1);" id="id" value="${column.id}">
                                    </td>
                                    <td class="list-text">
                                        <input type="text" class="text no_order" value="${column.noOrder}" name="noOrder">
                                        <div style="display:none;">
                                            <input type="hidden" value="${column.bigclass}" name="bigclass" />
                                            <input type="hidden" value="${column.classtype}" name="classtype" />
                                            <input type="hidden" value="${column.module}" name="module" />
                                            <input type="hidden" value="${column.display}" name="display" />
                                            <%--<input type="hidden" value="about" name="foldername_1">
                                            <input type="hidden" value="1" name="module_1">
                                            <input type="hidden" value="1" name="classtype_1">
                                            <input type="hidden" value="" name="out_url_1">
                                            <input type="hidden" value="0" name="if_in_1">
                                            <input type="hidden" value="0" name="access_1">--%>
                                        </div>
                                    </td>
                                    <td class="list-text blues" style="text-align:left;">
                                        <c:if test="${fn:length(column.subColumnList)>0}">
                                            <img src="/images/colum1nx.gif" class="columnimg" id="img_1" onclick="oncolumn($(this),'1');">
                                        </c:if>
                                        <input type="text" class="text nonull" value="${column.name}" name="name">
                                    </td>
                                    <td class="list-text">
                                        <select name="nav">
                                            <c:forEach items="${navConfig}" var="nav">
                                                <option value="${nav.key}" <c:if test="${column.nav==nav.key}">selected="selected"</c:if>>${nav.value}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td class="list-text color999">
                                        <c:forEach items="${moduleConfig}" var="module">
                                            <c:if test="${module.key == column.module}">${module.value}</c:if>
                                        </c:forEach>
                                    </td>
                                    <td class="list-text color999" title="about">about</td>
                                    <td class="list-text">
                                        <input type="text" class="text no_order" value="2">
                                    </td>
                                    <td width="100" class="list-text">
                                        <div style=" position:relative; z-index:1;">
                                            <a href="/setting/perColumnSetting.html?id=${column.id}" style="float:left; margin-left:10px;">设置</a>
                                            <div class="columnmore">
                                                <span class="text">更多&nbsp;<img src="/images/metcolumn12.gif" style="position:relative; bottom:2px;"></span>
                                                <div class="none columnmorediv">
                                                    <div>
                                                        <a href="/setting/addColumn.html?type=2&bigclass=${column.id}" onclick="return addcolumn($(this),'1',2);">添加子栏目</a>
                                                    </div>
                                                    <div><a class="perColumnDel" data-id="${column.id}">删除</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <c:if test="${fn:length(column.subColumnList)>0}">
                                    <c:forEach items="${column.subColumnList}" var="subColumn">
                                        <tr id="class_${subColumn.id}" class="none mouse click columnz_1 column_2" style="display: none;">
                                            <td class="list-text2">
                                                <input name="id" type="checkbox" onclick="linkage($(this),'bgid_19');" id="id" value="${subColumn.id}" bgid_1"="">
                                            </td>
                                            <td class="list-text2">
                                                <input type="text" class="text no_order" value="${subColumn.noOrder}" name="noOrder">
                                                <div style="display:none;">
                                                    <input type="hidden" value="${subColumn.bigclass}" name="bigclass">
                                                    <%--<input type="hidden" value="about" name="foldername_19">--%>
                                                    <%--<input type="hidden" value="1" name="module_19">
                                                    <input type="hidden" value="2" name="classtype_19">
                                                    <input type="hidden" value="" name="out_url_19">
                                                    <input type="hidden" value="0" name="if_in_19">
                                                    <input type="hidden" value="0" name="access_19">--%>
                                                </div>
                                            </td>
                                            <td class="list-text2" id="tr19" style="text-align:left; padding-left:10px;">
                                                <img src="/images/bg_column.gif" style="position:relative; top:6px;">

                                                <input type="text" class="text nonull" value="${subColumn.name}" name="name" style=" width:141px;">
                                            </td>
                                            <td class="list-text2">
                                                <select name="nav">
                                                    <c:forEach items="${navConfig}" var="nav">
                                                        <option value="${nav.key}" <c:if test="${subColumn.nav==nav.key}">selected="selected"</c:if>>${nav.value}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>

                                            <td class="list-text2 color999">
                                                <c:forEach items="${moduleConfig}" var="module">
                                                    <c:if test="${module.key == subColumn.module}">${module.value}</c:if>
                                                </c:forEach>
                                            </td>
                                            <td class="list-text2 color999" title="about">about</td>
                                            <td class="list-text2">
                                                <input type="text" class="text no_order" value="0">
                                            </td>
                                            <td class="list-text2" style="text-align:center;">
                                                <div style=" position:relative;">
                                                    <a href="/setting/perColumnSetting.html?id=${subColumn.id}" style="float:left; margin-left:10px;">设置</a>
                                                    <div class="columnmore">
                                                        <span class="text">更多&nbsp;<img src="/images/metcolumn12.gif" style="position:relative; bottom:2px;"></span>
                                                        <div class="none columnmorediv">
                                                            <%--<div><a href="add.php?anyid=25&amp;lang=cn&amp;id=19&amp;type=3&amp;action=add" onclick="return addcolumn($(this),'19',3);">添加三级栏目</a></div>
                                                            <div class="move">
                                                                <a href="move.php?anyid=25&amp;lang=cn&amp;id=19&amp;action=b1" onclick="return columnMove($(this))">
                                                                    移动栏目至
                                                                    &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;">
                                                                </a>
                                                                <div class="moveb1"></div>
                                                            </div>--%>

                                                            <div><a class="perColumnDel" data-id="${subColumn.id}">删除</a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                            </c:forEach>
                            <%--已添加栏目 end--%>

                            <tr id="bottom-id">
                                <td class="list-text"></td>
                                <td class="list-text alignleft" colspan='2'>&nbsp;&nbsp;
                                    <a href="/setting/addColumn.html?type=1" onclick="return addcolumn($(this),'',1);">+添加一级栏目</a>
                                </td>
                                <td class="list-text"></td>
                                <td class="list-text"></td>
                                <td class="list-text"></td>
                                <td class="list-text"></td>
                                <td class="list-text"></td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr>
                <td class="all" width="53" style="border-top:0px">
                    <input name="chkAll" type="checkbox" id="chkAll" title="全选" onclick="CheckAllx($(this),'del')" value="checkbox"/>
                </td>
                <td class="all-submit" colspan="7" style="padding: 5px 10px;border-top:0px">
                    <input name="saveorder" id="saveColumns" type='submit' value='保存' class="submit li-submit" />
                    <input name="submit" id="delColumns" type='submit' value='删除' class="submit li-submit" style="margin-right:20px;" />
                    <%--<div style="margin-top:2px;float:right;">
                        <form method="POST" name="myform" action="./copycolumn.php?lang=cn&action=copy&table=1" target="_self">
                            <input name="allid" type="hidden" id="allid" value="" />
                            <select name="copylang">
                                <option value="">复制到其他语言</option>
                                <option value="en">English</option>
                                <option value="tc">繁体中文</option>
                            </select>
                            <label style="vertical-align:middle;font-weight:normal;height:28px;line-height:28px;"><input name="copycontent" type='checkbox' value='1' id="copycontent" class="checkbox">复制内容</label>
                        </form>
                        <input name="submit" type='submit' value='复制'  onclick="return met_modify($(this),'myform','editor','columncook');" class="submitmi"/>
                    </div>--%>
                </td>
            </tr>
            <tr>
                <td class="footer" colspan="3">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.18</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></td>
            </tr>
</table>
</div>
</div>

<%--<div class="returnover none">操作成功</div>
<script type="text/javascript">
(function($){
    jQuery.fn.PositionFixed = function(options) {
        var defaults = {
            css:'',
            x:0,
            y:0
        };
        var o = jQuery.extend(defaults, options);
        var isIe6=false;
        if($.browser.msie && parseInt($.browser.version)==6)isIe6=true;
        var html= $('html');
        if (isIe6 && html.css('backgroundAttachment') !== 'fixed') {
            html.css('backgroundAttachment','fixed')
        };
        return this.each(function() {
            var domThis=$(this)[0];
            var objThis=$(this);
            if(isIe6){
                var left = parseInt(o.x) - html.scrollLeft(),
                        top = parseInt(o.y) - html.scrollTop();
                objThis.css('position' , 'absolute');
                domThis.style.setExpression('left', 'eval((document.documentElement).scrollLeft + ' + o.x + ') + "px"');
                domThis.style.setExpression('top', 'eval((document.documentElement).scrollTop + ' + o.y + ') + "px"');
            }else{
                objThis.css('position' , 'fixed').css('top',o.y).css('left',o.x);
            }
        });
    };
})(jQuery);
$(document).ready(function() {
    $('body', parent.document).append('<div class="returnover">操作成功</div>');//<div class="mangpingfugai"></div>
    $('.returnover').show();
    var tur_ml = $('.returnover').outerWidth();
    var tur_mt = $('.returnover').outerHeight();
    $('.returnover').hide();
    tur_ml = parseInt(($('html',parent.document)[0].clientWidth-tur_ml)/2);
    tur_mt = parseInt(($('html',parent.document)[0].clientHeight-tur_mt)/2);
    $("html",parent.document).find('.returnover').css({
        top:tur_mt+'px',
        left:tur_ml+'px'
    });
    $("html",parent.document).find('.returnover').PositionFixed({x:tur_ml,y:tur_mt});
    setTimeout(function(){ $("html",parent.document).find('.returnover').hide(); }, 5000 );
});
</script>--%>

<script type="text/javascript">
    function newmodule(my,module,type){
        var mtd = my.parent('td').next();
        if(type>1)mtd.find("span").hide();

        if(my.val()==999){
            mtd.find("input").hide();
            mtd.find('font').empty();
            mtd.find("input[name*='out_url_new_']").show();
        }else if(my.val()>5 && my.val()!=8 ){
            mtd.find('input').hide();
            mtd.find('font').text(addmodulefold(my.val()));
        }else{
            mtd.find("input").hide();
            mtd.find('font').empty();
            if(type>1 && my.val()==module){
                mtd.find("span").show();
            }else{
                mtd.find("input.foldernonull").show();
            }
        }
        if(my.val()>1000){
            mtd.find("input").hide();
            mtd.find('font').empty();
            mtd.find("input[name*='foldername_new_']").show();
        }
    }
    function addmodulefold(module){
        var fname='';
        switch(module){
            case '6':fname = 'job';break;
            case '7':fname = 'message';break;
            case '9':fname = 'link';break;
            case '10':fname= 'member';break;
            case '11':fname= 'search';break;
            case '12':fname= 'sitemap';break;
            case '13':fname= '';break;
            case '100':fname= 'product';break;
            case '101':fname= 'img';break;

        }
        return fname;
    }
    /*
     function columnshow(my,t1,t2){
     var type = my instanceof jQuery?1:0;
     var text = my instanceof jQuery?my.text():my;
     t1   = my instanceof jQuery?t1:1;
     t2   = my instanceof jQuery?t2:0;
     $('img.columnimg').each(function(){
     var xp=$(this).attr('id');
     xp=xp.split('img_');
     xp=xp[1];
     if(text==t1){
     $('.columnz_'+xp).show();
     $(this).attr('src','/images/colum1nx2.gif');
     }else{
     $('.columnz_'+xp).hide();
     $(this).attr('src','/images/colum1nx.gif');
     }
     });
     if(my instanceof jQuery){
     text==t1?my.text(t2):my.text(t1);
     var num=text==t1?1:0;
     $.ajax({
     url : my.attr('href')+num,
     type: "POST"
     });
     }
     ifreme_methei();
     return false;
     }
     */
    function columnshow(my,t1,t2){
        var text = my.text();
        $('img.columnimg').each(function(){
            var xp=$(this).attr('id');
            xp=xp.split('img_');
            xp=xp[1];
            if(text==t1){
                $('.columnz_'+xp).show();
                $(this).attr('src','/images/colum1nx2.gif');
            }else{
                $('.columnz_'+xp).hide();
                $(this).attr('src','/images/colum1nx.gif');
            }
        });

        text==t1?my.text(t2):my.text(t1);
        var num=text==t1?1:0;
        $.ajax({
            url : my.attr('href')+num,
            type: "POST"
        });

        ifreme_methei();
        return false;
    }

    function columnFormNum(form){
        var list=$("input[name='allid']").val();
        var lists=list.split(',');
        var nlist = '';
        var i;
        reg=/^[0-9]+$/;
        for(i=0;i<lists.length-1;i++){
            var no_order='no_order_'+lists[i];
            nlist+='&'+no_order+'='+encodeURIComponent($("input[name='"+no_order+"']").val());
            var name='name_'+lists[i];
            nlist+='&'+name+'='+encodeURIComponent($("input[name='"+name+"']").val());
            var nav='nav_'+lists[i];
            nlist+='&'+nav+'='+encodeURIComponent($("select[name='"+nav+"']").val());
            var index_num='index_num_'+lists[i];
            nlist+='&'+index_num+'='+encodeURIComponent($("input[name='"+index_num+"']").val());
            if($("select[name='"+module+"']").val()=='1000'){
                var foldername='foldername_'+lists[i];
                nlist+='&'+foldername+'='+encodeURIComponent($("input[name='"+foldername+"']").val());
            }
            if(!reg.test(lists[i])){
                var bigclass='bigclass_'+lists[i];
                nlist+='&'+bigclass+'='+encodeURIComponent($("input[name='"+bigclass+"']").val());
                var foldername='foldername_'+lists[i];
                nlist+='&'+foldername+'='+encodeURIComponent($("input[name='"+foldername+"']").val());
                var module='module_'+lists[i];
                nlist+='&'+module+'='+encodeURIComponent($("select[name='"+module+"']").val());
                if($("select[name='"+module+"']").val()=='999' || $("select[name='"+module+"']").val()=='1000'){
                    var out_url='out_url_'+lists[i];
                    nlist+='&'+out_url+'='+encodeURIComponent($("input[name='"+out_url+"']").val());
                }
                var classtype='classtype_'+lists[i];
                nlist+='&'+classtype+'='+encodeURIComponent($("input[name='"+classtype+"']").val());
            }
        }
        nlist+='&action='+$("input[name='action']").val()+'&lang='+$("input[name='lang']").val()+'&anyid='+$("input[name='anyid']").val()+'&allid='+$("input[name='allid']").val()
        return nlist;
    }

    function columnMove(my){
        var w = my.parent('div').width();
        var mv = my.next('.moveb1');
        mv.css('right',w+'px');
        if(mv.html()!=''){
            mv.show();
        }else{
            $.ajax({
                type: "POST",
                url: my.attr('href'),
                data: '',
                success: function(data){
                    mv.append(data);
                    mv.show();
                    var dg = $(document.body).outerHeight(true) - my.offset().top;
                    if(dg<(mv.height()+100)){
                        mv.css('bottom','0px');
                    }else{
                        mv.css('top','0px');
                    }
                }
            });
        }
        return false;
    }
    function new1column(my){
        var nvlue = window.prompt("移动为一级栏目必须设置一个新的目录名称(目录名只能是数字或字母)","");
        if(nvlue && nvlue!=''){
            $.ajax({
                type: "POST",
                url: my.attr('href')+'&foldername='+nvlue+'&foldyanzheng=1',
                data: '',
                success: function(data){
                    if(data!=''){
                        alert(data);
                    }else{
                        nvlue = my.attr('href')+'&foldername='+nvlue;
                        if(linkSmit(my,1,"您确认要移动该栏目吗？")){
                            location.href=nvlue;
                        }
                    }
                }
            });
            return false;
        }else{
            alert('请填写目录名称');
            return false;
        }
    }
    function new2column(my){
        if(!confirm('是否合并栏目？合并后该目录名称将被修改,点取消则保持原目录名称并进入下一步')){
            nvlue = my.attr('href')+'&removeurl=1';
            my.attr('href',nvlue);
        }
        return linkSmit(my,1,"您确认要移动该栏目吗？");
    }
    $(document).ready(function(){
        $('.columnmore').hover(
                function () {
                    $(this).find('span.text').addClass("columnmore_hover");
                    $(this).find('div.columnmorediv').show();
                    $(this).parents('tr:first').addClass("ontr");;
                },
                function () {
                    $(this).find('span.text').removeClass("columnmore_hover");
                    $(this).find('div.columnmorediv').hide();
                    $(this).find('.moveb1').hide();
                    $(this).parents('tr:first').removeClass("ontr");;
                }
        );
        $('.moveb1 .b2box').live('mouseenter',function(){
            var w = $(this).width();
            var dg = $(document.body).outerHeight(true) - $(this).offset().top;
            var moveb = $(this).find('div.moveb2');
            if(dg<(moveb.height()+100)){
                moveb.css('bottom','0px');
            }else{
                moveb.css('top','0px');
            }
            moveb.css('right',w+'px');
            moveb.show();
        }).live('mouseleave',function(){
            $(this).find('div.moveb2').hide();
        });
        if(0){
            $('img.columnimg').each(function(){
                var xp=$(this).attr('id');
                xp=xp.split('img_');
                xp=xp[1];
                $('.columnz_'+xp).show();
                $(this).attr('src','/images/colum1nx2.gif');
            });
        }
    });
</script>
</body>
<script src="/js/topweb/column.js?v0.11"></script>
</html>