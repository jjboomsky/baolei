<%--
  Created by IntelliJ IDEA.
  User: 鲍磊的学习机
  Date: 2017/12/6
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情</title>
</head>
<body>

<table id="tb" style="width:50%;text-align:center" border="1px" align="center">
    <tr>
        <td>ID</td>
        <td>${student.SId}</td>
    </tr>
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


</body>
</html>
