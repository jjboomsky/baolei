<%--
  Created by IntelliJ IDEA.
  User: 鲍磊的学习机
  Date: 2017/12/4
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="static/css/layui.css" media="all"/>
<script src="static/js/jquery.js"></script>
<script src="static/layui.all.js"></script>
<body>
<div class="layui-row">
    <ul class="layui-nav" lay-filter="">
        <li class="layui-nav-item"><a onclick="aaa()" name="">教师页面</a></li>
        <li class="layui-nav-item layui-this" ><a  onclick="aaa()">学生管理</a></li>
        <li class="layui-nav-item "><a name="static/student_attendance.html"  onclick="aaa()">学生入录</a></li>
        <li class="layui-nav-item"><a name="static/add_student.html" onclick="aaa()">学生考勤</a></li>
        <li class="layui-nav-item">
        <li class="layui-nav-item layui-col-md-offset7">
            <a href="#"><img src="static/images/timg.jpg" class="layui-nav-img">我</a>
            <dl class="layui-nav-child">
                <dd><a href="#">修改信息</a></dd>
                <dd><a href="#">安全管理</a></dd>
                <dd><a href="#">退了</a></dd>
            </dl>
        </li>
    </ul>
</div>
<hr class="layui-bg-gray">
<div class="layui-row" id="neirong">

</div>
</div>
</body>
<script type="text/javascript">
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;
    });
    $(document).ready(function () {
        $("#neirong").load("static/student_attendance.html");
    });
    function aaa(biaoqian) {
        /*$(this).parent().remove("layui-this");*/
        $(".layui-this").remove("layui-this");
        $(this).parent().addClass("layui-this");
        $("#neirong").load(this.name);
    }
</script>
</html>