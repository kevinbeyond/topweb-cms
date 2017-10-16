/**
 * Created by Leo on 2017/10/15.
 */
$(function () {

    $(document).on('submit',".ui-from",function(){

        //暂时只检验一级栏目 20171007 wsl
        // if(isNaN(jQuery('select[name="class1"]').val())){
        //     alert("请选择一个栏目");
        //     document.location.reload();//当前页面
        //     return false;
        // }

        var jsonArray = new Array();
        $('.fbox').find('input, textarea').each(function () {
            var _obj = new Object();
            _obj.name = $(this).attr('name');
            _obj.value = $(this).val();
            jsonArray.push(_obj);
        });
        
        jQuery.ajax({
            url:'/setting/submitBaseSetting/',
            data:JSON.stringify(jsonArray),
            dataType:"json",
            contentType : 'application/json;charset=utf-8', //设置请求头信息
            type:"POST",
            async: false,//明确是异步提交数据
            success: function(data){
                if (data.code==0) {
                    alert('操作成功');//提示操作成功
                    document.location.reload();//当前页面
                }
            },
            error: function(data){
                alert(data.responseText);
            }
        });
        return false;

    });
});