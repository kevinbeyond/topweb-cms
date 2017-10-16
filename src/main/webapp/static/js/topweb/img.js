/**
 * Created by Leo on 2017/10/8.
 */
$(function () {

    $(document).on('submit',".imgForm", function(){
        var _title = $('input[name="title"]');
        if(!_title.val()){
            alert("请输入标题");
            _title.focus();
            return false;
        }
        var imgObject = new Object();
        $('.imgForm').find("input, select, textarea").each(function () {
            if ($(this).attr('name')) {
                imgObject[$(this).attr('name')] = $(this).val();
            }
        });
        console.log(JSON.stringify(imgObject));

        jQuery.ajax({
            url: "/content/saveOrUpdateImage/",
            type: "POST",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            async: false,//明确是异步提交数据
            data: JSON.stringify(imgObject), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
            success: function(data){
                if (data.code==0) {
                    alert('操作成功');//提示操作成功
                    //document.location.reload();//当前页面
                    //window.history.back();//返回列表页
                    // window.location.href = document.referrer;//返回上一页并刷新
                }
            },
            error: function(data){
                alert(data.responseText);
            }
        });
    });
    
   // $('#per-image-submit').on('click', function () {
   //     
   // });

    $('#images-form-submit').on('click', function () {
        if($('#images-form').find("input[type='checkbox']:checked").length < 1) {
            alert("请选择要保存的记录");
            return false;
        }

        var imgArray = new Array();
        $('#images-form').find('tr').each(function () {
            if($(this).find("input[type='checkbox']").attr('checked') && $(this).find("input[type='checkbox']").val()){
                var imgObject = new Object();
                $(this).find("input, select").each(function () {
                    if ($(this).attr('name')) {
                        imgObject[$(this).attr('name')] = $(this).val();
                    }
                });
                imgArray.push(imgObject);
            }
        });

        $.ajax({
            url: "/content/imagesForm/",
            type: "POST",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            data: JSON.stringify(imgArray), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
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
    $('#images-form-del').on('click', function () {
        if($('#images-form').find("input[type='checkbox']:checked").length < 1) {
            alert("请选择要删除的记录");
            return false;
        }

        var _ids = new Array();
        $('#images-form').find("input[type='checkbox']:checked").each(function (index) {
            _ids[index] = $(this).val();
        });

        $.ajax({
            url: "/content/imagesForm/",
            type: "DELETE",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            data: _ids.join(), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
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
});