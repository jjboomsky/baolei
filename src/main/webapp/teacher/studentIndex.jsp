<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>学生个人页面</title>
    <link href="${ctx}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="${ctx}/static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<br>
<br>
<br>
<h1><span class="label label-default col-md-4 col-md-offset-4 text-center">个人信息</span>
</h1>

<table id="tb" style="width:50%;text-align:center" border="1px" align="center">
    <tr>
        <td>姓名</td>
        <td>${student.SName}</td>
    </tr>
    <tr>
        <td>学号</td>
        <td>${student.SSchoolid}</td>
    </tr>
    <tr>
        <td>班级</td>
        <td>${student.SClass}</td>
    </tr>
    <tr>
        <td>手机</td>
        <td>${student.SPhone}</td>
    </tr>
    <tr>
        <td>入学时间</td>
        <td>${student.SFirsttime}</td>
    </tr>
    <tr>
        <td>密码</td>
        <td>${student.SPassword}</td>
    </tr>
    <tr>
        <td>家庭电话</td>
        <td>${student.SHomephone}</td>
    </tr>
    <tr>
        <td>寝室</td>
        <td>${student.SBedroom}</td>
    </tr>
    <tr>
        <td>性别</td>
        <td>${student.SSex}</td>
    </tr>
    <tr>
        <td>身份证</td>
        <td>${student.SIdnumber}</td>
    </tr>
</table>


<h1>
    <c:forEach var="rech" items="${list}">
        <h3>
            <span class="label label-default col-md-4 col-md-offset-4 text-center">
                    注意!你在${rech.rNoreachtime}时被${rech.tName}老师记了${rech.rType}!
            </span>
        </h3>
    </c:forEach>
</h1>
</body>

</html>
