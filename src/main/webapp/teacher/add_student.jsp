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
<link href="<%=basePath%>static/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<script src="<%=basePath%>static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/js/jquery.js"></script>
<body>
<div class="layui-row layui-timeline">
    &nbsp;<br/>
    <h2 align="center">学生录入</h2>
    &nbsp;<br/>
</div>
<form id="form1" class="layui-form" action="<%=basePath%>student/addstudent.do" method="post">
    <div class="layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="sName" required lay-verify="required" placeholder="请输入姓名" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">班级</label>
        <div class="layui-input-block">
            <select name="sClass" lay-verify="required">
                <option value=""></option>
                <option value="01">一班</option>
                <option value="02">二班</option>
                <option value="03">三班</option>
                <option value="04">四班</option>
                <option value="05">五班</option>
            </select>
        </div>
    </div>
    <div class="layui-inline layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">入学日期</label>
        <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
            <input type="text" class="layui-input" id="test1" name="sFirsttime">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">身份证号码</label>
        <div class="layui-input-block">
            <input type="number" name="sIdnumber" required lay-verify="required" placeholder="请输入身份证号码"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">电话</label>
        <div class="layui-input-block">
            <input type="number" name="sPhone" required lay-verify="required" placeholder="请输入电话号码" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">家庭电话</label>
        <div class="layui-input-block">
            <input type="number" name="sHomephone" required lay-verify="required" placeholder="请输入电话号码"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <input type="radio" name="sSex" value="男" title="男">
            <input type="radio" name="sSex" value="女" title="女" checked>
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">寝室</label>
        <div class="layui-input-block">
            <input type="text" name="sBedroom" required lay-verify="required" placeholder="输入寝室" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text layui-form-item layui-col-md6 layui-col-md-offset3">
        <label class="layui-form-label">家庭住址</label>
        <div class="layui-input-block">
            <input name="sAddress" name="sAddress" placeholder="请输入地址" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item layui-form-item layui-col-md6 layui-col-md-offset3">
        <div class="layui-input-block">
            <button type="button" onclick="save()" class="layui-btn">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%--<form id="form" role="form">
    <input id="id" name="id" value="${honor.id}" hidden>
    <input id="sid" name="sid" value="${honor.sid}" hidden>
    <div class="form-group">
        <label for="honor">荣誉</label>
        <input type="text" class="form-control" id="honor" name="honor" value="${honor.honor}">
    </div>
    <button type="button" onclick="save()" class="btn btn-default">保存</button>
    <button type="reset"onclick="cancel()" class="btn btn-default">取消</button>
</form>--%>

</body>
<script>
    //Demo
 layui.use('form', function () {
        var form = layui.form;
        //监听提交
        /*form.on('submit(formDemo)', function (data) {
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
            url: '<%=basePath%>student/addstudent.do',
            data: $('.layui-form').serialize(),
            dataType: 'json',
            success: function (data) {
                alert(data.msg);
                if (data.success) {
                    aaa('<%=basePath%>teacher/stuManagement.jsp');
                }
            },
            error: function () {
                alert("出错了!");
                aaa('<%=basePath%>teacher/stuManagement.jsp');
            }
        });
    }
    $(document).ready(function () {
        // $("#neirong").load("/teacher/add_student.jsp");
        $('.layui-form')[0].reset();

    });

</script>
</html>
