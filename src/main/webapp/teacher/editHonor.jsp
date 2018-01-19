<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + "/";
%>
<html>
<head>
    <title>编辑荣誉</title>
    <link href="<%=basePath%>static/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="<%=basePath%>static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <form id="form" role="form">
                <input id="id" name="id" value="${honor.id}" hidden>
                <input id="sid" name="sid" value="${honor.sid}" hidden>
                <div class="form-group">
                    <label for="honor">荣誉</label>
                    <input type="text" class="form-control" id="honor" name="honor" value="${honor.honor}">
                </div>
                <button type="button" onclick="save()" class="btn btn-default">保存</button>
                <button type="reset"onclick="cancel()" class="btn btn-default">取消</button>
            </form>
        </div>
    </div>
</div>
<script>


    function save() {
        $.ajax({
            type: 'POST',
            url: '/student/editStuHonor.do',
            data: $('#form').serialize(),
            dataType: 'json',
            success: function (data) {
                alert(data.msg);
                if (data.success) {
                    setTimeout(function () {
                        aaa('<%=basePath%>teacher/studentHonor.jsp')
                        layui.use( 'layer', function () {
                            var layer = layui.layer; //弹层
                            layer.closeAll();
                        });
                    }, 100);
                }
            },
            error: function () {
                alert("成功了!");
                aaa('<%=basePath%>teacher/studentHonor.jsp')
                layui.use( 'layer', function () {
                    var layer = layui.layer; //弹层
                    layer.closeAll();
                });
            }
        });
    }

    function cancel() {
        layui.use( 'layer', function () {
            var layer = layui.layer; //弹层
            layer.closeAll();
        });
    }
</script>
</body>
</html>
