/**
 * Created by Leo on 2017/10/15.
 */
$(function () {
    
//     $('#info-submit').on('click', function () {
//         var jsonArray = new Array();
//         $('.fbox').find('input, textarea').each(function () {
//             var _obj = new Object();
//             _obj.name = $(this).attr('name');
//             _obj.value = $(this).val();
//             jsonArray.push(_obj);
//         });
//         console.log(JSON.stringify(jsonArray));
//
//         $.ajax({
//             url: "/setting/submitBaseSetting/",
//             type: "POST",
//             contentType : 'application/json;charset=utf-8', //设置请求头信息
//             dataType:"json",
//             data: JSON.stringify(jsonArray), //将Json对象序列化成Json字符串，JSON.stringify()原生态方法
// //        data: $.toJSON(customerArray), //将Json对象序列化成Json字符串，toJSON()需要引用jquery.json.min.js
//             success: function(data){
//                 if (data.code==0) {
//                     alert('操作成功');//提示操作成功
//                 }
//             },
//             error: function(data){
//                 alert(data);
//                 //alert(data.responseText);
//             }
//         });
//     });

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