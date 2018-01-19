<%@ page import="com.hzvtc.bl.entity.Teacher" %><%--
  Created by IntelliJ IDEA.
  User: 鲍磊的学习机
  Date: 2017/12/4
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
             + "/";
    Teacher teacher=(Teacher)request.getAttribute("teacher");
    if (null==teacher){
        response.sendRedirect("/");
    }
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>学生信息管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
</head>
<link rel="stylesheet" href="<%=basePath%>static/css/layui.css" media="all"/>
<script src="<%=basePath%>static/js/jquery.js"></script>
<script src="<%=basePath%>static/layui.all.js"></script>
<script src="<%=basePath%>static/layui.js"></script>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">学生管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <!--<ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">学生管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
        </ul>-->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="#"><img src="<%=basePath%>static/images/timg.jpg" class="layui-nav-img">${teacher.TName}</a>
                <dl class="layui-nav-child">
                    <dd><a href="#">修改信息</a></dd>
                    <dd><a href="#">安全管理</a></dd>
                    <dd><a href="/teacher/logout.do">退了</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="left_url">
                <!-- <li class="layui-nav-item layui-nav-itemed">
                         <a class="" href="javascript:;">所有商品</a>
                         <dl class="layui-nav-child">
                             <dd><a href="javascript:;">列表一</a></dd>
                             <dd><a href="javascript:;">列表二</a></dd>
                             <dd><a href="javascript:;">列表三</a></dd>
                             <dd><a href="">超链接</a></dd>
                         </dl>
                     </li>
                     <li class="layui-nav-item">
                         <a href="javascript:;">解决方案</a>
                         <dl class="layui-nav-child">
                             <dd><a href="javascript:;">列表一</a></dd>
                             <dd><a href="javascript:;">列表二</a></dd>
                             <dd><a href="">超链接</a></dd>
                         </dl>
                     </li>-->
                <%--<li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">行为管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:void(0);" class="" onclick="aaa('<%=basePath%>static/teacher/add_student.jsp')">教师页面</a></dd>
                        <dd></dd>
                        <dd></dd>
                        <dd></dd>
                    </dl>
                </li>--%>
                 <li class="layui-nav-item layui-this"><a href="javascript:void(0);" class="" onclick="location.reload()">教师页面</a></li>
                  <li class="layui-nav-item" ><a href="javascript:void(0);" class="" onclick="aaa('<%=basePath%>teacher/stuManagement.jsp')">学生管理</a></li>
                  <li class="layui-nav-item"><a href="javascript:void(0)" onclick="aaa('<%=basePath%>teacher/add_student.jsp')" class="">学生入录</a></li>
                  <li class="layui-nav-item"><a href="javascript:void(0);" class="" onclick="aaa('<%=basePath%>teacher/student_attendance.jsp')">学生考勤</a></li>
                  <li class="layui-nav-item"><a href="javascript:void(0);" class="" onclick="aaa('<%=basePath%>teacher/studentHonor.jsp')">学生荣誉管理</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body"  id="neirong" >
          <%@include file="teacherDetails.jsp"%>
    </div>

    <div class="layui-footer">
        <input type="hidden" value="${teacher.TId}" id="tid"/>
        <!-- 底部固定区域 -->
        © baolei.com - 学生管理系统
    </div>

</div>
<script>
    $(document).ready(function () {
        // $("#neirong").load("/teacher/add_student.jsp");
    });
     function aaa(biaoqian) {
    /* $(this).parent().remove("layui-this");*/
     $(".layui-this").remove("layui-this");
     $(this).parent().addClass("layui-this");
    /* $('.layui-form')[0].reset();*/
     $("#neirong").empty();
     $("#neirong").load(biaoqian);

     }

</script>

</body>
</html>
