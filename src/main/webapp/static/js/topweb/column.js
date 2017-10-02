/**
 * Created by Leo on 2017/10/2.
 */
$(function () {
    //点击保存按钮
    $('#saveColumns').on('click', function () {

        var columnArray = new Array();
        $('#columnForm').find('tr').each(function () {
            console.log($(this).find("input[type='checkbox']").attr('checked'));
            if($(this).find("input[type='checkbox']").attr('checked')){
                var columnObject = new Object();
                $(this).find("input, select").each(function () {
                    if ($(this).attr('name')) {
                        columnObject[$(this).attr('name')] = $(this).val();
                    }
                });
                columnArray.push(columnObject);
            }
        });

        $.ajax({
            url: "/setting/cmsColumns/",
            type: "POST",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            dataType:"json",
            data: JSON.stringify(columnArray), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
            success: function(data){
                if (data.code==0) {
                    alert('操作成功');//提示操作成功
                    document.location.reload();//当前页面
                }
            },
            error: function(res){
                alert(res.responseText);
            }
        })
    });

    //点击删除按钮
    $('#delColumns').on('click', function () {

        if($("input[type='checkbox']:checked").length < 1) {
            alert("请选择要删除的栏目");
            return false;
        }

        var _ids = new Array();
        $("input[type='checkbox']:checked").each(function (index) {
            if($(this).val() != 'checkbox'){
                _ids[index] = $(this).val();
            }
        });

        $.ajax({
            url: "/setting/cmsColumns/",
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
        })
    });
})