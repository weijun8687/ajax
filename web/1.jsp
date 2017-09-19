<%--
  Created by IntelliJ IDEA.
  User: wj
  Date: 2017/9/19
  Time: 下午7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试异步交互的可行性</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <script type="text/javascript" src="util.js"></script>
    <script type="text/javascript">
        window.onload = function () {

            document.getElementById("bt1").onclick=function () {
                // 获取 xmlHttpRequest 对象
                var xhr = getXHR();
                xhr.onreadystatechange=function () {
                    if (xhr.readyState == 4){
                        if(xhr.status == 200){
                            alert("服务器响应结束");
                        }
                    }
                }
                // 建立与服务器的连接
                // 如果访问的地址相同, 浏览器不会真正的发出请求
                <%--xhr.open("GET","${pageContext.request.contextPath}/servlet/ServletDemo1?time="+new Date().getTime());--%>
                xhr.open("GET","${pageContext.request.contextPath}/servlet/ServletDemo1?time="+new Date().getTime());
                xhr.send(null);

            }
        }
    </script>


</head>
<body>
<input type="button" id="bt1" value="按钮">

</body>


</html>
