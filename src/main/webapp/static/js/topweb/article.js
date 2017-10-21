/**
 * Created by Leo on 2017/10/4.
 */
$(function () {

    //更改文章状态
    $('.ftype_transverse').find('input').each(function () {
       $(this).on('click', function () {
           var _val = $(this).val()==0?1:0;
          $(this).val(_val);
       });
    });

    //编辑文章
    $('#article-submit').on('click', function () {

        if(isNaN($('select[name="class1"]').val()) || $('select[name="class1"]').val() <= 0){
            alert("请选择一个栏目");
            return false;
        }

        if (!$('input[name="title"]').val()){
            alert("请填写标题");
            $('input[name="title"]').focus();
            return false;
        }

        var articleObject = new Object();
        $('#articleForm').find("input, select, textarea").each(function () {
            if ($(this).attr('name')) {
                articleObject[$(this).attr('name')] = $(this).val();
            }
        });

        $.ajax({
            url: "/content/saveOrUpdateArticle/",
            type: "POST",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            async: false,//明确是异步提交数据
            data: JSON.stringify(articleObject), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
            success: function(data){
                if (data.code==0) {
                    alert('操作成功');//提示操作成功
                    //document.location.reload();//当前页面
                    //window.history.back();//返回列表页
                    window.location.href = document.referrer;//返回上一页并刷新
                }
            },
            error: function(res){
                alert(res.responseText);
            }
        });
    });

    //表单保存
    $('#article-form-save').on('click', function () {
        if($('#articles-form').find('tbody').find("input[type='checkbox']:checked").length < 1) {
            alert("请选择要保存的文章");
            return false;
        }

        var articleArray = new Array();
        $('#articles-form').find('tr').each(function () {
            if($(this).find("input[type='checkbox']").attr('checked') && $(this).find("input[type='checkbox']").val()){
                var articleObject = new Object();
                $(this).find("input, select").each(function () {
                    if ($(this).attr('name')) {
                        articleObject[$(this).attr('name')] = $(this).val();
                    }
                });
                articleArray.push(articleObject);
            }
        });

        $.ajax({
            url: "/content/articlesForm/",
            type: "POST",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            async: false,//明确是异步提交数据
            data: JSON.stringify(articleArray), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
            success: function(data){
                if (data.code==0) {
                    alert('操作成功');//提示操作成功
                    document.location.reload();//当前页面
                }
            },
            error: function(res){
                alert(res.responseText);
            }
        });
    });

    //表单删除
    $('#article-form-del').on('click', function () {
        if($('#articles-form').find('tbody').find("input[type='checkbox']:checked").length < 1) {
            alert("请选择要保存的文章");
            return false;
        }

        var _ids = new Array();
        $('#articles-form').find('tbody').find("input[type='checkbox']:checked").each(function (index) {
            _ids[index] = $(this).val();
        });

        $.ajax({
            url: "/content/articlesForm/",
            type: "DELETE",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            data: _ids.join(), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
            async: false,//明确是异步提交数据
            success: function(data){
                if (data.code==0) {
                    alert('操作成功');//提示操作成功
                    document.location.reload();//当前页面
                }
            },
            error: function(res){
                alert(res.responseText);
            }
        });
    });
    
    //栏目切换
    $('#articles-column-change').find('select').each(function () {
       $(this).on('change', function () {
           if($(this).attr('name')=='class1_select') {//一级栏目变更
               if (!$(this).val() || isNaN($(this).val())){
                   window.location.href = "/content/modultList.html?module=2";
               } else {
                   window.location.href = "/content/modultList.html?module=2&class1=" + $(this).val(); 
               }
               
           } else if($(this).attr('name')=='class2_select') {//二级栏目变更
               var _class1 = $(this).prev('select').val();

               if (!$(this).val() || isNaN($(this).val())){
                   window.location.href = "/content/modultList.html?module=2&class1=" + _class1;
               } else {
                   window.location.href = "/content/modultList.html?module=2&class1=" + _class1 + "&class2=" + $(this).val();
               }
           }
       });
    });
});