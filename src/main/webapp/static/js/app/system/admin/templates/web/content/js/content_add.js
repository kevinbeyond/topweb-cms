define(function(require, exports, module) {

	var $ = jQuery = require('jquery');
	var common = require('common');

	$(document).on('submit',".ui-from",function(){

		//暂时只检验一级栏目 20171007 wsl
		if(isNaN(jQuery('select[name="class1"]').val())){
			alert("请选择一个栏目");
			document.location.reload();//当前页面
			return false;
		}
		jQuery.ajax({
			url:$(".ui-from").attr("action"),
			data:$(".ui-from").serialize(),
			type:"POST",
			success:function(addurl){
				if(addurl && addurl!=''){
					window.location.href=addurl;
				}
			}
		});
		return false;

	});

});