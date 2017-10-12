<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="http://localhost:88/metinfo/app/system/include/public/bootstrap/css/bootstrap.min.css?20171004" />
    <link rel="stylesheet" type="text/css" href="../templates/met/images/css/metinfo.css?20171004" />
    <link rel="stylesheet" type="text/css" href="../templates/met/images/css/newstyle.css?20171004" />
    <link rel="stylesheet" href="http://localhost:88/metinfo/app/system/include/public/font-awesome/css/font-awesome.min.css?20171004" />
    <script type="text/javascript">var basepath='../templates/met/images?20171004',lang = 'cn',adminurl='http://localhost:88/metinfo/admin/';</script>
    <script type="text/javascript" src="../../public/js/jQuery1.7.2.js?20171004"></script>
    <script type="text/javascript"src="../include/metvar.js?20171004"></script>
    <script type="text/javascript" src="../templates/met/images/js/uploadify/jquery.uploadify.v2.1.4.min.js?20171004"></script>
    <script type="text/javascript" src="../templates/met/images/js/iframes.js?20171004"></script>
    <script type="text/javascript" src="../templates/met/images/js/cookie.js?20171004"></script>
    <script type="text/javascript">
        /*ajax执行*/
        var metimgurl='../templates/met/images/';
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
    <script src="http://localhost:88/metinfo/app/system/include/public/js/seajs.js"></script>
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

    <div class="metcms_top_right">
        <div class="metcms_top_right_box">
            <div class="metcms_top_right_box_div clearfix">
                <ol class="breadcrumb position hidden-xs">
                    <li>简体中文</li>
                    <li>设置</li>
                    <li><a href="http://localhost:88/metinfo/admin/column/index.php?anyid=25&lang=cn">栏目</a></li>
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
                <div class="btn-group pull-right met-tool met-msecount-tool">
                    <button class="btn btn-default text-center dropdown-toggle msecount" type="button" onclick="location.href = 'http://localhost:88/metinfo/admin/index.php?n=system&c=news&a=doindex&lang=cn';">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-danger">0</span>
                    </button>
                </div>

                <div class="btn-group pull-right met-tool">
                    <button class="btn btn-default dropdown-toggle" type="button" id="langlistbox" data-toggle="dropdown" aria-expanded="true">
                        <i class="fa fa-globe"></i><span class="hidden-xs">简体中文</span>
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu" aria-labelledby="langlistbox">

                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/column/index.php?anyid=25&lang=cn&switch=1">简体中文</a></li>

                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/column/index.php?anyid=25&lang=en&switch=1">English</a></li>

                        <li class="met-tool-list"><a href="http://localhost:88/metinfo/admin/column/index.php?anyid=25&lang=tc&switch=1">繁体中文</a></li>


                        <li class="met-tool-list">
                            <button class="btn btn-success" type="submit" onclick="location.href = 'http://localhost:88/metinfo/admin/system/lang/lang.php?anyid=10&langaction=add&lang=cn&cs=1';"><i class="fa fa-plus"></i>新增网站语言</button>
                        </li>
                    </ul>
                </div>

                <div class="btn-group pull-right met-tool" >
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
                </div>
                <div class="btn-group pull-right met-tool supportbox" >
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

    <div class="position">简体中文 > 设置 > <a href="../column/index.php?anyid=25&lang=cn">栏目</a></div>


</div>
<div class="clear"></div>

<script type="text/javascript">
    $("html",parent.document).find('.returnover').remove();
</script>


</div>

<div class="v52fmbx_tbmax">
    <div class="v52fmbx_tbbox">
        <table cellpadding="0" cellspacing="0" class="table">
            <tr>

                <td colspan="3" class="centle" style="font-weight:normal;">
                    <a href="index.php?anyid=25&lang=cn&action=modify&met_columnshow=" onclick="return columnshow($(this),'展开所有子栏目','隐藏所有子栏目');" style="float:right; font-weight:normal; padding-right:10px;">展开所有子栏目</a>
                    &nbsp;&nbsp;<a href="add.php?lang=cn&type=1&action=add" onclick="return addcolumn($(this),'',1);">添加一级栏目</a>&nbsp;&nbsp;
                    <font style=' color:#999;'>排序越小越靠前</font>
                    <span id="loadtxt"></span>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="padding:0px!important;border:0px">
                    <form name="del" method="Post" action="delete.php?anyid=25&lang=cn">
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

                            <tr class="mouse click column_1">
                                <td class="list-text">
                                    <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='1' />
                                </td>
                                <td class="list-text">
                                    <input type="text" class="text no_order" value="0" name="no_order_1" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="0" name="bigclass_1" />
                                        <input type="hidden" value="about" name="foldername_1" />
                                        <input type="hidden" value="1" name="module_1" />
                                        <input type="hidden" value="1" name="classtype_1" />
                                        <input type="hidden" value="" name="out_url_1" />
                                        <input type="hidden" value="0" name="if_in_1" />
                                        <input type="hidden" value="0" name="access_1" />
                                    </div>
                                </td>
                                <td class="list-text blues" style="text-align:left;">

                                    <img src='../templates/met/images/colum1nx.gif' class='columnimg' id='img_1' onclick="oncolumn($(this),'1');" /><input type="text" class="text nonull" value="关于我们" name="name_1" />
                                </td>
                                <td class="list-text">
                                    <select name="nav_1"><option value='0' >不显示</option><option value='1' selected='selected'><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text color999">简介模块</td>
                                <td class="list-text color999" title="about">about</td>
                                <td class="list-text"><input type="text" class="text no_order" value="2" name="index_num_1" /></td>
                                <td width="100" class="list-text">
                                    <div style=" position:relative; z-index:1;">
                                        <a href="editor.php?anyid=25&lang=cn&id=1" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=1&type=2&action=add' onclick="return addcolumn($(this),'1',2);">添加子栏目</a></div>


                                                <div><a href="delete.php?anyid=25&lang=cn&module=1&id=1" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_19" class="none mouse click columnz_1 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_19');" id="id" value='19' bgid_1" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="1" name="no_order_19" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="1" name="bigclass_19" />
                                        <input type="hidden" value="about" name="foldername_19" />
                                        <input type="hidden" value="1" name="module_19" />
                                        <input type="hidden" value="2" name="classtype_19" />
                                        <input type="hidden" value="" name="out_url_19" />
                                        <input type="hidden" value="0" name="if_in_19" />
                                        <input type="hidden" value="0" name="access_19" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr19" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

                                    <input type="text" class="text nonull" value="公司简介" name="name_19" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_19"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">简介模块</td>
                                <td class="list-text2 color999" title="about">about</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_19" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=19" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=19&type=3&action=add' onclick="return addcolumn($(this),'19',3);">添加三级栏目</a></div>
                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=19&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=19" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_25" class="none mouse click columnz_1 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_25');" id="id" value='25' bgid_1" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="2" name="no_order_25" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="1" name="bigclass_25" />
                                        <input type="hidden" value="message" name="foldername_25" />
                                        <input type="hidden" value="7" name="module_25" />
                                        <input type="hidden" value="2" name="classtype_25" />
                                        <input type="hidden" value="" name="out_url_25" />
                                        <input type="hidden" value="0" name="if_in_25" />
                                        <input type="hidden" value="0" name="access_25" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr25" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

                                    <input type="text" class="text nonull" value="在线留言" name="name_25" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_25"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">留言系统</td>
                                <td class="list-text2 color999" title="message">message</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_25" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=25" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">

                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=25&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=25" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_31" class="none mouse click columnz_1 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_31');" id="id" value='31' bgid_1" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="3" name="no_order_31" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="1" name="bigclass_31" />
                                        <input type="hidden" value="feedback" name="foldername_31" />
                                        <input type="hidden" value="8" name="module_31" />
                                        <input type="hidden" value="2" name="classtype_31" />
                                        <input type="hidden" value="" name="out_url_31" />
                                        <input type="hidden" value="0" name="if_in_31" />
                                        <input type="hidden" value="0" name="access_31" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr31" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

                                    <input type="text" class="text nonull" value="在线反馈" name="name_31" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_31"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">反馈系统</td>
                                <td class="list-text2 color999" title="feedback">feedback</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_31" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=31" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">

                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=31&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="parameter/parameter.php?anyid=31&lang=cn&module=8&class1=31&cs=2">设置反馈表单</a></div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=31" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_98" class="none mouse click columnz_1 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_98');" id="id" value='98' bgid_1" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="4" name="no_order_98" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="1" name="bigclass_98" />
                                        <input type="hidden" value="about" name="foldername_98" />
                                        <input type="hidden" value="1" name="module_98" />
                                        <input type="hidden" value="2" name="classtype_98" />
                                        <input type="hidden" value="" name="out_url_98" />
                                        <input type="hidden" value="0" name="if_in_98" />
                                        <input type="hidden" value="0" name="access_98" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr98" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

                                    <input type="text" class="text nonull" value="联系我们" name="name_98" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_98"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">简介模块</td>
                                <td class="list-text2 color999" title="about">about</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_98" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=98" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=98&type=3&action=add' onclick="return addcolumn($(this),'98',3);">添加三级栏目</a></div>
                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=98&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=98" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr class="mouse click column_1">
                                <td class="list-text">
                                    <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='2' />
                                </td>
                                <td class="list-text">
                                    <input type="text" class="text no_order" value="1" name="no_order_2" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="0" name="bigclass_2" />
                                        <input type="hidden" value="news" name="foldername_2" />
                                        <input type="hidden" value="2" name="module_2" />
                                        <input type="hidden" value="1" name="classtype_2" />
                                        <input type="hidden" value="" name="out_url_2" />
                                        <input type="hidden" value="0" name="if_in_2" />
                                        <input type="hidden" value="0" name="access_2" />
                                    </div>
                                </td>
                                <td class="list-text blues" style="text-align:left;">

                                    <img src='../templates/met/images/colum1nx.gif' class='columnimg' id='img_2' onclick="oncolumn($(this),'2');" /><input type="text" class="text nonull" value="新闻资讯" name="name_2" />
                                </td>
                                <td class="list-text">
                                    <select name="nav_2"><option value='0' >不显示</option><option value='1' selected='selected'><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text color999">文章模块</td>
                                <td class="list-text color999" title="news">news</td>
                                <td class="list-text"><input type="text" class="text no_order" value="0" name="index_num_2" /></td>
                                <td width="100" class="list-text">
                                    <div style=" position:relative; z-index:1;">
                                        <a href="editor.php?anyid=25&lang=cn&id=2" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=2&type=2&action=add' onclick="return addcolumn($(this),'2',2);">添加子栏目</a></div>

                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=2&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                                                    <div class="moveb1"></div>
                                                </div>


                                                <div><a href="delete.php?anyid=25&lang=cn&module=2&id=2" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_4" class="none mouse click columnz_2 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_4');" id="id" value='4' bgid_2" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="1" name="no_order_4" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="2" name="bigclass_4" />
                                        <input type="hidden" value="news" name="foldername_4" />
                                        <input type="hidden" value="2" name="module_4" />
                                        <input type="hidden" value="2" name="classtype_4" />
                                        <input type="hidden" value="" name="out_url_4" />
                                        <input type="hidden" value="0" name="if_in_4" />
                                        <input type="hidden" value="0" name="access_4" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr4" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

                                    <input type="text" class="text nonull" value="公司动态" name="name_4" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_4"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">文章模块</td>
                                <td class="list-text2 color999" title="news">news</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="3" name="index_num_4" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=4" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=4&type=3&action=add' onclick="return addcolumn($(this),'4',3);">添加三级栏目</a></div>
                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=4&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=4" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_5" class="none mouse click columnz_2 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_5');" id="id" value='5' bgid_2" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="2" name="no_order_5" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="2" name="bigclass_5" />
                                        <input type="hidden" value="news" name="foldername_5" />
                                        <input type="hidden" value="2" name="module_5" />
                                        <input type="hidden" value="2" name="classtype_5" />
                                        <input type="hidden" value="" name="out_url_5" />
                                        <input type="hidden" value="0" name="if_in_5" />
                                        <input type="hidden" value="0" name="access_5" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr5" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

                                    <input type="text" class="text nonull" value="业界资讯" name="name_5" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_5"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">文章模块</td>
                                <td class="list-text2 color999" title="news">news</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="4" name="index_num_5" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=5" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=5&type=3&action=add' onclick="return addcolumn($(this),'5',3);">添加三级栏目</a></div>
                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=5&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=5" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr class="mouse click column_1">
                                <td class="list-text">
                                    <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='3' />
                                </td>
                                <td class="list-text">
                                    <input type="text" class="text no_order" value="2" name="no_order_3" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="0" name="bigclass_3" />
                                        <input type="hidden" value="product" name="foldername_3" />
                                        <input type="hidden" value="3" name="module_3" />
                                        <input type="hidden" value="1" name="classtype_3" />
                                        <input type="hidden" value="" name="out_url_3" />
                                        <input type="hidden" value="0" name="if_in_3" />
                                        <input type="hidden" value="0" name="access_3" />
                                    </div>
                                </td>
                                <td class="list-text blues" style="text-align:left;">

                                    <img src='../templates/met/images/colum1nx.gif' class='columnimg' id='img_3' onclick="oncolumn($(this),'3');" /><input type="text" class="text nonull" value="产品展示" name="name_3" />
                                </td>
                                <td class="list-text">
                                    <select name="nav_3"><option value='0' >不显示</option><option value='1' selected='selected'><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text color999">产品模块</td>
                                <td class="list-text color999" title="product">product</td>
                                <td class="list-text"><input type="text" class="text no_order" value="1" name="index_num_3" /></td>
                                <td width="100" class="list-text">
                                    <div style=" position:relative; z-index:1;">
                                        <a href="editor.php?anyid=25&lang=cn&id=3" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=3&type=2&action=add' onclick="return addcolumn($(this),'3',2);">添加子栏目</a></div>


                                                <div><a href="delete.php?anyid=25&lang=cn&module=3&id=3" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_6" class="none mouse click columnz_3 column_2">
                                <td class="list-text2">
                                    <input name='id' type='checkbox' onClick="linkage($(this),'bgid_6');" id="id" value='6' bgid_3" />
                                </td>
                                <td class="list-text2">
                                    <input type="text" class="text no_order" value="1" name="no_order_6" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="3" name="bigclass_6" />
                                        <input type="hidden" value="product" name="foldername_6" />
                                        <input type="hidden" value="3" name="module_6" />
                                        <input type="hidden" value="2" name="classtype_6" />
                                        <input type="hidden" value="" name="out_url_6" />
                                        <input type="hidden" value="0" name="if_in_6" />
                                        <input type="hidden" value="0" name="access_6" />
                                    </div>
                                </td>
                                <td class="list-text2" id="tr6" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_columnx.gif' style="position:relative; top:6px;" />
                                    <img src='../templates/met/images/colum1nx.gif' class='columnimg' id='img_6' style='margin:0px;' onclick="oncolumn($(this),'6');" />
                                    <input type="text" class="text nonull" value="饰品珠宝" name="name_6" style=" width:141px;" />
                                </td>
                                <td class="list-text2">
                                    <select name="nav_6"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text2 color999">产品模块</td>
                                <td class="list-text2 color999" title="product">product</td>
                                <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_6" /></td>
                                <td class="list-text2" style="text-align:center;">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=6" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div><a href='add.php?anyid=25&lang=cn&id=6&type=3&action=add' onclick="return addcolumn($(this),'6',3);">添加三级栏目</a></div>
                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=6&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>

                                                <div><a href="delete.php?anyid=25&lang=cn&id=6" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                            <tr id="class_14" class="none mouse click columnz_6 column_3">
                                <td class="list-text3"><input name='id' type='checkbox' onClick="unselectall()" id="id" value='14' class="bgid_6"></td>
                                <td class="list-text3">
                                    <input type="text" class="text no_order" value="0" name="no_order_14" />
                                    <div style='display:none;'>
                                        <input type="hidden" value="6" name="bigclass_14" />
                                        <input type="hidden" value="product" name="foldername_14" />
                                        <input type="hidden" value="3" name="module_14" />
                                        <input type="hidden" value="3" name="classtype_14" />
                                        <input type="hidden" value="" name="out_url_14" />
                                        <input type="hidden" value="0" name="if_in_14" />
                                        <input type="hidden" value="0" name="access_14" />
                                    </div>
                                </td>
                                <td class="list-text3" style="text-align:left; padding-left:10px;">
                                    <img src='../templates/met/images/bg_column1.gif' style="float:left; margin-right:3px;" />
                                    <input type="text" class="text nonull" value="流行饰品" name="name_14" style="float:left; width:121px;" />
                                </td>
                                <td class="list-text3">
                                    <select name="nav_14"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
                                </td>
                                <td class="list-text3 color999">产品模块</td>
                                <td class="list-text3 color999" title="product">product</td>
                                <td class="list-text3"><input type="text" class="text no_order" value="0" name="index_num_14" /></td>
                                <td class="list-text3">
                                    <div style=" position:relative;">
                                        <a href="editor.php?anyid=25&lang=cn&id=14" style="float:left; margin-left:10px;">设置</a>
                                        <div class="columnmore">
                                            <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                                            <div class="none columnmorediv">
                                                <div class="move">
                                                    <a href="move.php?anyid=25&lang=cn&id=14&action=b1" onClick="return columnMove($(this))">
                                                        移动栏目至
                                                        &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                                                    </a>
                                                    <div class="moveb1"></div>
                                                </div>
                                                <div><a href="delete.php?anyid=25&lang=cn&id=14" onClick="return linkSmit($(this),1);" >删除</a></div>
                                            </div>
                                        </div>
                                    </div>
    </div>
    </td>
    </tr>

    <tr id="class_15" class="none mouse click columnz_6 column_3">
        <td class="list-text3"><input name='id' type='checkbox' onClick="unselectall()" id="id" value='15' class="bgid_6"></td>
        <td class="list-text3">
            <input type="text" class="text no_order" value="0" name="no_order_15" />
            <div style='display:none;'>
                <input type="hidden" value="6" name="bigclass_15" />
                <input type="hidden" value="product" name="foldername_15" />
                <input type="hidden" value="3" name="module_15" />
                <input type="hidden" value="3" name="classtype_15" />
                <input type="hidden" value="" name="out_url_15" />
                <input type="hidden" value="0" name="if_in_15" />
                <input type="hidden" value="0" name="access_15" />
            </div>
        </td>
        <td class="list-text3" style="text-align:left; padding-left:10px;">
            <img src='../templates/met/images/bg_column1.gif' style="float:left; margin-right:3px;" />
            <input type="text" class="text nonull" value="太阳镜" name="name_15" style="float:left; width:121px;" />
        </td>
        <td class="list-text3">
            <select name="nav_15"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
        </td>
        <td class="list-text3 color999">产品模块</td>
        <td class="list-text3 color999" title="product">product</td>
        <td class="list-text3"><input type="text" class="text no_order" value="0" name="index_num_15" /></td>
        <td class="list-text3">
            <div style=" position:relative;">
                <a href="editor.php?anyid=25&lang=cn&id=15" style="float:left; margin-left:10px;">设置</a>
                <div class="columnmore">
                    <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                    <div class="none columnmorediv">
                        <div class="move">
                            <a href="move.php?anyid=25&lang=cn&id=15&action=b1" onClick="return columnMove($(this))">
                                移动栏目至
                                &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                            </a>
                            <div class="moveb1"></div>
                        </div>
                        <div><a href="delete.php?anyid=25&lang=cn&id=15" onClick="return linkSmit($(this),1);" >删除</a></div>
                    </div>
                </div>
            </div>
</div>
</td>
</tr>

<tr id="class_16" class="none mouse click columnz_6 column_3">
    <td class="list-text3"><input name='id' type='checkbox' onClick="unselectall()" id="id" value='16' class="bgid_6"></td>
    <td class="list-text3">
        <input type="text" class="text no_order" value="0" name="no_order_16" />
        <div style='display:none;'>
            <input type="hidden" value="6" name="bigclass_16" />
            <input type="hidden" value="product" name="foldername_16" />
            <input type="hidden" value="3" name="module_16" />
            <input type="hidden" value="3" name="classtype_16" />
            <input type="hidden" value="" name="out_url_16" />
            <input type="hidden" value="0" name="if_in_16" />
            <input type="hidden" value="0" name="access_16" />
        </div>
    </td>
    <td class="list-text3" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column1.gif' style="float:left; margin-right:3px;" />
        <input type="text" class="text nonull" value="品牌手表" name="name_16" style="float:left; width:121px;" />
    </td>
    <td class="list-text3">
        <select name="nav_16"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text3 color999">产品模块</td>
    <td class="list-text3 color999" title="product">product</td>
    <td class="list-text3"><input type="text" class="text no_order" value="0" name="index_num_16" /></td>
    <td class="list-text3">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=16" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=16&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>
                    <div><a href="delete.php?anyid=25&lang=cn&id=16" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
        </div>
    </td>
</tr>

<tr id="class_17" class="none mouse click columnz_6 column_3">
    <td class="list-text3"><input name='id' type='checkbox' onClick="unselectall()" id="id" value='17' class="bgid_6"></td>
    <td class="list-text3">
        <input type="text" class="text no_order" value="0" name="no_order_17" />
        <div style='display:none;'>
            <input type="hidden" value="6" name="bigclass_17" />
            <input type="hidden" value="product" name="foldername_17" />
            <input type="hidden" value="3" name="module_17" />
            <input type="hidden" value="3" name="classtype_17" />
            <input type="hidden" value="" name="out_url_17" />
            <input type="hidden" value="0" name="if_in_17" />
            <input type="hidden" value="0" name="access_17" />
        </div>
    </td>
    <td class="list-text3" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column1.gif' style="float:left; margin-right:3px;" />
        <input type="text" class="text nonull" value="太阳镜" name="name_17" style="float:left; width:121px;" />
    </td>
    <td class="list-text3">
        <select name="nav_17"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text3 color999">产品模块</td>
    <td class="list-text3 color999" title="product">product</td>
    <td class="list-text3"><input type="text" class="text no_order" value="0" name="index_num_17" /></td>
    <td class="list-text3">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=17" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=17&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>
                    <div><a href="delete.php?anyid=25&lang=cn&id=17" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
        </div>
    </td>
</tr>

<tr id="class_18" class="none mouse click columnz_6 column_3">
    <td class="list-text3"><input name='id' type='checkbox' onClick="unselectall()" id="id" value='18' class="bgid_6"></td>
    <td class="list-text3">
        <input type="text" class="text no_order" value="0" name="no_order_18" />
        <div style='display:none;'>
            <input type="hidden" value="6" name="bigclass_18" />
            <input type="hidden" value="product" name="foldername_18" />
            <input type="hidden" value="3" name="module_18" />
            <input type="hidden" value="3" name="classtype_18" />
            <input type="hidden" value="" name="out_url_18" />
            <input type="hidden" value="0" name="if_in_18" />
            <input type="hidden" value="0" name="access_18" />
        </div>
    </td>
    <td class="list-text3" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column1.gif' style="float:left; margin-right:3px;" />
        <input type="text" class="text nonull" value="Zippo/烟具" name="name_18" style="float:left; width:121px;" />
    </td>
    <td class="list-text3">
        <select name="nav_18"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text3 color999">产品模块</td>
    <td class="list-text3 color999" title="product">product</td>
    <td class="list-text3"><input type="text" class="text no_order" value="0" name="index_num_18" /></td>
    <td class="list-text3">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=18" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=18&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>
                    <div><a href="delete.php?anyid=25&lang=cn&id=18" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
        </div>
    </td>
</tr>

<tr id="class_7" class="none mouse click columnz_3 column_2">
    <td class="list-text2">
        <input name='id' type='checkbox' onClick="linkage($(this),'bgid_7');" id="id" value='7' bgid_3" />
    </td>
    <td class="list-text2">
        <input type="text" class="text no_order" value="2" name="no_order_7" />
        <div style='display:none;'>
            <input type="hidden" value="3" name="bigclass_7" />
            <input type="hidden" value="product" name="foldername_7" />
            <input type="hidden" value="3" name="module_7" />
            <input type="hidden" value="2" name="classtype_7" />
            <input type="hidden" value="" name="out_url_7" />
            <input type="hidden" value="0" name="if_in_7" />
            <input type="hidden" value="0" name="access_7" />
        </div>
    </td>
    <td class="list-text2" id="tr7" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

        <input type="text" class="text nonull" value="数码家电" name="name_7" style=" width:141px;" />
    </td>
    <td class="list-text2">
        <select name="nav_7"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text2 color999">产品模块</td>
    <td class="list-text2 color999" title="product">product</td>
    <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_7" /></td>
    <td class="list-text2" style="text-align:center;">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=7" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=7&type=3&action=add' onclick="return addcolumn($(this),'7',3);">添加三级栏目</a></div>
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=7&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>

                    <div><a href="delete.php?anyid=25&lang=cn&id=7" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr id="class_8" class="none mouse click columnz_3 column_2">
    <td class="list-text2">
        <input name='id' type='checkbox' onClick="linkage($(this),'bgid_8');" id="id" value='8' bgid_3" />
    </td>
    <td class="list-text2">
        <input type="text" class="text no_order" value="3" name="no_order_8" />
        <div style='display:none;'>
            <input type="hidden" value="3" name="bigclass_8" />
            <input type="hidden" value="product" name="foldername_8" />
            <input type="hidden" value="3" name="module_8" />
            <input type="hidden" value="2" name="classtype_8" />
            <input type="hidden" value="" name="out_url_8" />
            <input type="hidden" value="0" name="if_in_8" />
            <input type="hidden" value="0" name="access_8" />
        </div>
    </td>
    <td class="list-text2" id="tr8" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

        <input type="text" class="text nonull" value="家具建材" name="name_8" style=" width:141px;" />
    </td>
    <td class="list-text2">
        <select name="nav_8"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text2 color999">产品模块</td>
    <td class="list-text2 color999" title="product">product</td>
    <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_8" /></td>
    <td class="list-text2" style="text-align:center;">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=8" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=8&type=3&action=add' onclick="return addcolumn($(this),'8',3);">添加三级栏目</a></div>
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=8&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>

                    <div><a href="delete.php?anyid=25&lang=cn&id=8" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr id="class_9" class="none mouse click columnz_3 column_2">
    <td class="list-text2">
        <input name='id' type='checkbox' onClick="linkage($(this),'bgid_9');" id="id" value='9' bgid_3" />
    </td>
    <td class="list-text2">
        <input type="text" class="text no_order" value="4" name="no_order_9" />
        <div style='display:none;'>
            <input type="hidden" value="3" name="bigclass_9" />
            <input type="hidden" value="product" name="foldername_9" />
            <input type="hidden" value="3" name="module_9" />
            <input type="hidden" value="2" name="classtype_9" />
            <input type="hidden" value="" name="out_url_9" />
            <input type="hidden" value="0" name="if_in_9" />
            <input type="hidden" value="0" name="access_9" />
        </div>
    </td>
    <td class="list-text2" id="tr9" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

        <input type="text" class="text nonull" value="交通工具" name="name_9" style=" width:141px;" />
    </td>
    <td class="list-text2">
        <select name="nav_9"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text2 color999">产品模块</td>
    <td class="list-text2 color999" title="product">product</td>
    <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_9" /></td>
    <td class="list-text2" style="text-align:center;">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=9" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=9&type=3&action=add' onclick="return addcolumn($(this),'9',3);">添加三级栏目</a></div>
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=9&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>

                    <div><a href="delete.php?anyid=25&lang=cn&id=9" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr id="class_12" class="none mouse click columnz_3 column_2">
    <td class="list-text2">
        <input name='id' type='checkbox' onClick="linkage($(this),'bgid_12');" id="id" value='12' bgid_3" />
    </td>
    <td class="list-text2">
        <input type="text" class="text no_order" value="7" name="no_order_12" />
        <div style='display:none;'>
            <input type="hidden" value="3" name="bigclass_12" />
            <input type="hidden" value="product" name="foldername_12" />
            <input type="hidden" value="3" name="module_12" />
            <input type="hidden" value="2" name="classtype_12" />
            <input type="hidden" value="" name="out_url_12" />
            <input type="hidden" value="0" name="if_in_12" />
            <input type="hidden" value="0" name="access_12" />
        </div>
    </td>
    <td class="list-text2" id="tr12" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

        <input type="text" class="text nonull" value="图书音像" name="name_12" style=" width:141px;" />
    </td>
    <td class="list-text2">
        <select name="nav_12"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text2 color999">产品模块</td>
    <td class="list-text2 color999" title="product">product</td>
    <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_12" /></td>
    <td class="list-text2" style="text-align:center;">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=12" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=12&type=3&action=add' onclick="return addcolumn($(this),'12',3);">添加三级栏目</a></div>
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=12&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>

                    <div><a href="delete.php?anyid=25&lang=cn&id=12" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='32' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="3" name="no_order_32" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_32" />
            <input type="hidden" value="download" name="foldername_32" />
            <input type="hidden" value="4" name="module_32" />
            <input type="hidden" value="1" name="classtype_32" />
            <input type="hidden" value="" name="out_url_32" />
            <input type="hidden" value="0" name="if_in_32" />
            <input type="hidden" value="0" name="access_32" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">

        <img src='../templates/met/images/colum1nx.gif' class='columnimg' id='img_32' onclick="oncolumn($(this),'32');" /><input type="text" class="text nonull" value="下载中心" name="name_32" />
    </td>
    <td class="list-text">
        <select name="nav_32"><option value='0' >不显示</option><option value='1' selected='selected'><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">下载模块</td>
    <td class="list-text color999" title="download">download</td>
    <td class="list-text"><input type="text" class="text no_order" value="0" name="index_num_32" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=32" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=32&type=2&action=add' onclick="return addcolumn($(this),'32',2);">添加子栏目</a></div>

                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=32&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=4&id=32" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr id="class_34" class="none mouse click columnz_32 column_2">
    <td class="list-text2">
        <input name='id' type='checkbox' onClick="linkage($(this),'bgid_34');" id="id" value='34' bgid_32" />
    </td>
    <td class="list-text2">
        <input type="text" class="text no_order" value="0" name="no_order_34" />
        <div style='display:none;'>
            <input type="hidden" value="32" name="bigclass_34" />
            <input type="hidden" value="download" name="foldername_34" />
            <input type="hidden" value="4" name="module_34" />
            <input type="hidden" value="2" name="classtype_34" />
            <input type="hidden" value="" name="out_url_34" />
            <input type="hidden" value="0" name="if_in_34" />
            <input type="hidden" value="0" name="access_34" />
        </div>
    </td>
    <td class="list-text2" id="tr34" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

        <input type="text" class="text nonull" value="软件下载" name="name_34" style=" width:141px;" />
    </td>
    <td class="list-text2">
        <select name="nav_34"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text2 color999">下载模块</td>
    <td class="list-text2 color999" title="download">download</td>
    <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_34" /></td>
    <td class="list-text2" style="text-align:center;">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=34" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=34&type=3&action=add' onclick="return addcolumn($(this),'34',3);">添加三级栏目</a></div>
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=34&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>

                    <div><a href="delete.php?anyid=25&lang=cn&id=34" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr id="class_35" class="none mouse click columnz_32 column_2">
    <td class="list-text2">
        <input name='id' type='checkbox' onClick="linkage($(this),'bgid_35');" id="id" value='35' bgid_32" />
    </td>
    <td class="list-text2">
        <input type="text" class="text no_order" value="0" name="no_order_35" />
        <div style='display:none;'>
            <input type="hidden" value="32" name="bigclass_35" />
            <input type="hidden" value="download" name="foldername_35" />
            <input type="hidden" value="4" name="module_35" />
            <input type="hidden" value="2" name="classtype_35" />
            <input type="hidden" value="" name="out_url_35" />
            <input type="hidden" value="0" name="if_in_35" />
            <input type="hidden" value="0" name="access_35" />
        </div>
    </td>
    <td class="list-text2" id="tr35" style="text-align:left; padding-left:10px;">
        <img src='../templates/met/images/bg_column.gif' style="position:relative; top:6px;" />

        <input type="text" class="text nonull" value="文件下载" name="name_35" style=" width:141px;" />
    </td>
    <td class="list-text2">
        <select name="nav_35"><option value='0' selected='selected'>不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text2 color999">下载模块</td>
    <td class="list-text2 color999" title="download">download</td>
    <td class="list-text2"><input type="text" class="text no_order" value="0" name="index_num_35" /></td>
    <td class="list-text2" style="text-align:center;">
        <div style=" position:relative;">
            <a href="editor.php?anyid=25&lang=cn&id=35" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=35&type=3&action=add' onclick="return addcolumn($(this),'35',3);">添加三级栏目</a></div>
                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=35&action=b1" onClick="return columnMove($(this))">
                            移动栏目至
                            &nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" />
                        </a>
                        <div class="moveb1"></div>
                    </div>

                    <div><a href="delete.php?anyid=25&lang=cn&id=35" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='33' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="4" name="no_order_33" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_33" />
            <input type="hidden" value="case" name="foldername_33" />
            <input type="hidden" value="5" name="module_33" />
            <input type="hidden" value="1" name="classtype_33" />
            <input type="hidden" value="" name="out_url_33" />
            <input type="hidden" value="0" name="if_in_33" />
            <input type="hidden" value="0" name="access_33" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="客户案例" name="name_33" />
    </td>
    <td class="list-text">
        <select name="nav_33"><option value='0' >不显示</option><option value='1' selected='selected'><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">图片模块</td>
    <td class="list-text color999" title="case">case</td>
    <td class="list-text"><input type="text" class="text no_order" value="6" name="index_num_33" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=33" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">
                    <div><a href='add.php?anyid=25&lang=cn&id=33&type=2&action=add' onclick="return addcolumn($(this),'33',2);">添加子栏目</a></div>

                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=33&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=5&id=33" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='36' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="5" name="no_order_36" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_36" />
            <input type="hidden" value="job" name="foldername_36" />
            <input type="hidden" value="6" name="module_36" />
            <input type="hidden" value="1" name="classtype_36" />
            <input type="hidden" value="" name="out_url_36" />
            <input type="hidden" value="0" name="if_in_36" />
            <input type="hidden" value="0" name="access_36" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="招贤纳士" name="name_36" />
    </td>
    <td class="list-text">
        <select name="nav_36"><option value='0' >不显示</option><option value='1' selected='selected'><font class='red'>头部主导航条</font></option><option value='2' ><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">招聘模块</td>
    <td class="list-text color999" title="job">job</td>
    <td class="list-text"><input type="text" class="text no_order" value="5" name="index_num_36" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=36" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">


                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=36&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=6&id=36" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='37' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="6" name="no_order_37" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_37" />
            <input type="hidden" value="link" name="foldername_37" />
            <input type="hidden" value="9" name="module_37" />
            <input type="hidden" value="1" name="classtype_37" />
            <input type="hidden" value="" name="out_url_37" />
            <input type="hidden" value="0" name="if_in_37" />
            <input type="hidden" value="0" name="access_37" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="友情链接" name="name_37" />
    </td>
    <td class="list-text">
        <select name="nav_37"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">友情链接</td>
    <td class="list-text color999" title="link">link</td>
    <td class="list-text"><input type="text" class="text no_order" value="7" name="index_num_37" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=37" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">


                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=37&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=9&id=37" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='38' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="7" name="no_order_38" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_38" />
            <input type="hidden" value="member" name="foldername_38" />
            <input type="hidden" value="10" name="module_38" />
            <input type="hidden" value="1" name="classtype_38" />
            <input type="hidden" value="" name="out_url_38" />
            <input type="hidden" value="0" name="if_in_38" />
            <input type="hidden" value="0" name="access_38" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="会员中心" name="name_38" />
    </td>
    <td class="list-text">
        <select name="nav_38"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">会员中心</td>
    <td class="list-text color999" title="member">member</td>
    <td class="list-text"><input type="text" class="text no_order" value="0" name="index_num_38" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=38" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">


                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=38&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=10&id=38" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='39' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="8" name="no_order_39" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_39" />
            <input type="hidden" value="search" name="foldername_39" />
            <input type="hidden" value="11" name="module_39" />
            <input type="hidden" value="1" name="classtype_39" />
            <input type="hidden" value="" name="out_url_39" />
            <input type="hidden" value="0" name="if_in_39" />
            <input type="hidden" value="0" name="access_39" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="站内搜索" name="name_39" />
    </td>
    <td class="list-text">
        <select name="nav_39"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">全站搜索</td>
    <td class="list-text color999" title="search">search</td>
    <td class="list-text"><input type="text" class="text no_order" value="0" name="index_num_39" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=39" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">


                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=39&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=11&id=39" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='40' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="9" name="no_order_40" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_40" />
            <input type="hidden" value="sitemap" name="foldername_40" />
            <input type="hidden" value="12" name="module_40" />
            <input type="hidden" value="1" name="classtype_40" />
            <input type="hidden" value="" name="out_url_40" />
            <input type="hidden" value="0" name="if_in_40" />
            <input type="hidden" value="0" name="access_40" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="网站地图" name="name_40" />
    </td>
    <td class="list-text">
        <select name="nav_40"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999">网站地图</td>
    <td class="list-text color999" title="sitemap">sitemap</td>
    <td class="list-text"><input type="text" class="text no_order" value="0" name="index_num_40" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=40" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">


                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=40&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=12&id=40" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr class="mouse click column_1">
    <td class="list-text">
        <input name='id' type='checkbox' onClick="list_all($(this),1);" id="id" value='41' />
    </td>
    <td class="list-text">
        <input type="text" class="text no_order" value="10" name="no_order_41" />
        <div style='display:none;'>
            <input type="hidden" value="0" name="bigclass_41" />
            <input type="hidden" value="http://localhost:88/metinfo/admin/" name="foldername_41" />
            <input type="hidden" value="0" name="module_41" />
            <input type="hidden" value="1" name="classtype_41" />
            <input type="hidden" value="http://localhost:88/metinfo/admin/" name="out_url_41" />
            <input type="hidden" value="1" name="if_in_41" />
            <input type="hidden" value="0" name="access_41" />
        </div>
    </td>
    <td class="list-text blues" style="text-align:left;">
        <div style='width:22px; height:10px; overflow:hidden; float:left;'></div><input type="text" class="text nonull" value="网站管理" name="name_41" />
    </td>
    <td class="list-text">
        <select name="nav_41"><option value='0' >不显示</option><option value='1' ><font class='red'>头部主导航条</font></option><option value='2' selected='selected'><font class='blue'>尾部导航条</font></option><option value='3' ><font class='green'>都显示</font></option></select>
    </td>
    <td class="list-text color999"><font color=red>外部模块</font></td>
    <td class="list-text color999" title="http://localhost:88/metinfo/admin/">http://localhost:88/meti..</td>
    <td class="list-text"><input type="text" class="text no_order" value="0" name="index_num_41" /></td>
    <td width="100" class="list-text">
        <div style=" position:relative; z-index:1;">
            <a href="editor.php?anyid=25&lang=cn&id=41" style="float:left; margin-left:10px;">设置</a>
            <div class="columnmore">
                <span class="text">更多&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></span>
                <div class="none columnmorediv">


                    <div class="move">
                        <a href="move.php?anyid=25&lang=cn&id=41&action=b1" onClick="return columnMove($(this))">移动栏目至&nbsp;<img src="../templates/met/images/metcolumn12.gif" style="position:relative; bottom:2px;" /></a>
                        <div class="moveb1"></div>
                    </div>


                    <div><a href="delete.php?anyid=25&lang=cn&module=0&id=41" onClick="return linkSmit($(this),1);" >删除</a></div>
                </div>
            </div>
        </div>
    </td>
</tr>

<tr id="bottom-id">
    <td class="list-text"></td>
    <td class="list-text alignleft" colspan='2'>&nbsp;&nbsp;<a href="add.php?anyid=25&lang=cn&type=1&action=add" onclick="return addcolumn($(this),'',1);">+添加一级栏目</a></div>
    <td class="list-text"></td>
    <td class="list-text"></td>
    <td class="list-text"></td>
    <td class="list-text"></td>
    <td class="list-text"></td>
</tr>
</table>
<input name="action" type="hidden" id="action" value="del">
<input name="allid" type="hidden" id="allid" value="">
</form>
<input name="anyid" type="hidden" id="anyid" value="25">
<input name="lang" type="hidden" id="lang" value="cn">
</td>
</tr>
<tr>
    <td class="all" width="53" style="border-top:0px"><input name="chkAll" type="checkbox" id="chkAll" title="全选" onclick="CheckAllx($(this),'del')" value="checkbox"/></td>
    <td class="all-submit" colspan="7" style="padding: 5px 10px;border-top:0px">
        <input name="saveorder" type='submit' value='保存' class="submit li-submit" onclick="return columneditoradd($(this));"/>
        <input name="submit" type='submit' value='删除' class="submit li-submit" style="margin-right:20px;" onclick="return met_modify($(this),'del','del');"/>
        <div style="margin-top:2px;float:right;">
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
        </div>
    </td>
</tr>
<tr>
    <td class="footer" colspan="3">Powered by <b><a href=http://www.metinfo.cn target=_blank>metinfo 5.3.18</a></b> &copy;2008-2017 &nbsp;<a href=http://www.metinfo.cn target=_blank>MetInfo Inc.</a></td>
</tr>
</table>
</div>
</div>
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
     $(this).attr('src','../templates/met/images/colum1nx2.gif');
     }else{
     $('.columnz_'+xp).hide();
     $(this).attr('src','../templates/met/images/colum1nx.gif');
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
                $(this).attr('src','../templates/met/images/colum1nx2.gif');
            }else{
                $('.columnz_'+xp).hide();
                $(this).attr('src','../templates/met/images/colum1nx.gif');
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
    function columneditoradd(my){
        var list = $("input[name='allid']").val();
        var id = $("input[name='id']");
        var all = $("input[name='allid']");
        var type='editor';
        allid(id,all);
        var form = $("form[name='del']");
        var aller = all.val();
        if(aller==''){
            Problem(user_msg['js23']);
        }else{
            var Ato = Atoform(form,1);
            if(Ato && type == 'editor'){
                Problem(Ato);
            }else{
                if(type)$("input[name='action']").val(type);
                var dataNum = columnFormNum(form);
                $.ajax({
                    type: "POST",
                    url: form.attr('action'),
                    data: "ajaxmetinfo=1"+dataNum,
                    success: function(data){
                        if(data==0){
                            var reurl='delete.php?anyid='+$("input[name='anyid']").val()+'&lang='+$("input[name='lang']").val()+'&action=editorok';
                            location.href=reurl;
                        }else{
                            var reg=/$/;
                            if(reg.test(data)){
                                alert('目录名称不能重名');
                                setTimeout(function (){ $("input").removeClass('focusred'); },3000);
                            }else{
                                alert('登录超时，请重新登录！');
                                var reurl='index.php?anyid='+$("input[name='anyid']").val()+'&lang='+$("input[name='lang']").val();
                                location.href=reurl;
                            }
                        }
                    }
                });
            }
        }
        return false;
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
                $(this).attr('src','../templates/met/images/colum1nx2.gif');
            });
        }

    });
</script>
</body>
</html>
