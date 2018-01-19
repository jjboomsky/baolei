<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>错误</title>
    <link href="${ctx}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${ctx}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<br>
<br>
<br>
<br>
<br><br><br>
<br>
<br>


<h1><span class="label label-default col-md-4 col-md-offset-4 text-center">用户名或密码错误,3秒后<a href="${ctx}/teacher/logout.do">返回</a></span>
</h1>
</body>
<script>
    setTimeout(function () {
        window.history.back();
    }, 3000);
</script>
</html>
