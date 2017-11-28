<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>
  home 耶耶耶页面
  <div id="myDiv"><h2>通过 AJAX 改变文本</h2></div>
  <button id="testAjax" type="button">Ajax改变内容</button>
<script src="http://code.jquery.com/jquery-latest.js"></script>
  <script>
    $(function(){
        //按钮单击时执行
        $("#testAjax").click(function(){
           var html= $.ajax({
                type: "POST",
                url: "index.html",
               /* success: function(){
                    $("#myDiv").html('<h2>'+"aaaaa"+'</h2>');
                }*/
            });

            $("#myDiv").html('<h2>'+html+'</h2>');

        });
    });
</script>
</body>
</html>
