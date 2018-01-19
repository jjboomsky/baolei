<%--
  Created by IntelliJ IDEA.
  User: 鲍磊的学习机
  Date: 2017/12/4
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + "/";
%>
<html>
<head>
    <title>学生编辑</title>
</head>
<%--<script src="static/js/jquery.js"></script>
<script src="static/layui.js"></script>
<script src="static/layui.all.js"></script>--%>
<script src="<%=basePath%>static/js/jquery.js"></script>


<body>
<div class="layui-row layui-timeline">
    &nbsp;<br/>
    <h2 align="center">学生编辑</h2>
    &nbsp;<br/>
</div>
<form id="form1" class="layui-form" action="<%=basePath%>student/studentedit.do" method="post">
    <input id="sId" name="sId" value="${student.SId}" hidden>
    <input id="sSex" name="sSex" value="${student.SSex}" hidden>
    <input id="sClass" name="sClass" value="${student.SClass}" hidden>
    <input id="sSchoolid" name="sSchoolid" value="${student.SSchoolid}" hidden>
    <div class="layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="sName" required lay-verify="required" autocomplete="off"
                   class="layui-input" value="${student.SName}">
        </div>
    </div>
    <div class="layui-inline layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">入学日期</label>
        <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
            <input type="text" class="layui-input" id="test1" name="sFirsttime" value="${student.SFirsttime}">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="text" name="sPassword" required lay-verify="required" value="${student.SPassword}"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">身份证号码</label>
        <div class="layui-input-block">
            <input type="text" name="sIdnumber" required lay-verify="required" autocomplete="off"
                   value="${student.SIdnumber}"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">电话</label>
        <div class="layui-input-block">
            <input type="text" name="sPhone" required lay-verify="required" value="${student.SPhone}" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">家庭电话</label>
        <div class="layui-input-block">
            <input type="text" name="sHomephone" required lay-verify="required" value="${student.SHomephone}"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">寝室</label>
        <div class="layui-input-block">
            <input type="text" name="sBedroom" required lay-verify="required" value="${student.SBedroom}"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">家庭住址</label>
        <div class="layui-input-block">
            <input name="sAddress" name="sAddress" value="${student.SAddress}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <div class="layui-input-block">
            <button type="button" onclick="save()" class="layui-btn">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>


</body>
<script>
    //Demo
  layui.use('form', function () {
        var form = layui.form;
        //监听提交
      /* form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });*/
    });
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //年月选择器
        laydate.render({
            elem: '#test1' //指定元素
            , type: 'month'
        });
    });
    function save() {
        $.ajax({
            type: 'POST',
            url: '<%=basePath%>student/studentedit.do',
            data: $('.layui-form').serialize(),
            dataType: 'json',
            success: function (data) {
                alert(data.msg);
                if (data.success) {
                    aaa('<%=basePath%>teacher/stuManagement.jsp');
                    layui.use('layer', function () {
                        var layer = layui.layer; //弹层
                        layer.closeAll();
                    });
                }
            },
            error: function () {
                alert("成功了!");
                aaa('<%=basePath%>teacher/stuManagement.jsp');
                layui.use('layer', function () {
                    var layer = layui.layer; //弹层
                    layer.closeAll();
                });
            }
        });
    }
    $(document).ready(function () {
        // $("#neirong").load("/teacher/add_student.jsp");
        $('.layui-form')[0].reset();
    });

</script>
</html>
