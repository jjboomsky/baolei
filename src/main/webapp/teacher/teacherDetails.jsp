<%--
  Created by IntelliJ IDEA.
  User: 鲍磊的学习机
  Date: 2017/12/13
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div class="row">
    <div class="text-center layui-col-md6 layui-col-md-offset3">
        <h2 class="text-center">个人信息</h2>
    </div>
</div>
<br>
<br><br>
<br><br><br><br>

<div class="layui-col-md6 layui-col-md-offset3">
    <table class="layui-table " id="tb" align="center">
        <tr>
            <td>ID</td>
            <td>${teacher.TId}</td>
        </tr>
        <tr>
            <td>姓名</td>
            <td>${teacher.TName}</td>
        </tr>
        <tr>
            <td>教工号</td>
            <td>${teacher.TTeacherid}</td>
        </tr>
        <tr>
            <td>参与工作时间</td>
            <td>${teacher.TFirsttime}</td>
        </tr>
        <tr>
            <td>手机</td>
            <td>${teacher.TPhone}</td>
        </tr>
        <tr>
            <td>家庭电话</td>
            <td>${teacher.THomephone}</td>
        </tr>
        <tr>
            <td>家庭地址</td>
            <td>${teacher.TAddress}</td>
        </tr>
        <tr>
            <td>身份证</td>
            <td>${teacher.TIdnumber}</td>
        </tr>
    </table>
</div>

</body>
<script>
    layui.use('element', function () {
        var element = layui.element;
    });
</script>
</html>
