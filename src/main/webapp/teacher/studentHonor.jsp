<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>学生荣誉</title>
</head>
<body>

<div class="layui-col-md8 layui-col-md-offset2">
    <div class="row">
        <h2 class="text-center">学生荣誉</h2>
    </div>
    <div class="row">


     <%--   <div class="layui-btn-group">
            <button class="layui-btn layui-btn-small layui-btn-danger ajaxPost" url="/teacher/delTeaByBatch">批量删除</button>
        </div>--%>

        <table class="layui-hide" id="test" lay-filter="demo"></table>

        <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-xs" lay-event="edit">修改或添加荣誉</a>
<%--            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
        </script>
    </div>

</div>
<script>
    layui.use(['laypage', 'table', 'upload', 'element', 'layer'], function () {
        var laydate = laypage = layui.laypage //分页
            , table = layui.table //表格
            , upload = layui.upload //上传
            , element = layui.element //元素操作
            , layer = layui.layer; //弹层
        //执行一个 table 实例
        table.render({
            elem: '#test'
            , height: 460
            , url: '/student/getStuHonor.do' //数据接口
            , page: true //开启分页
            , method: 'post'
            , limit: 10
            , id: "ids"
            , cols: [[ //表头
            /*    {checkbox: true},*/
                /*{field: 'sId', title: 'ID',align: 'center', sort: true, fixed: 'left'}*/
                {field: 'sSchoolid', title: '学生号', align: 'center', sort: true}
                , {field: 'sName', title: '姓名', align: 'center'}
                , {field: 'sSex', title: '性别', align: 'center'}
                , {field: 'honor', title: '个人荣誉', align: 'center'}
                /*, {field: 'sAddress', title: '地址', align: 'center'}*/
                , {fixed: 'right', align: 'center', align: 'center', toolbar: '#barDemo'}
            ]]
        });
        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                /*layer.msg('ID：'+ data.sId + ' 的查看操作');*/
                var ids = '';
                ids += "&ids[]=" + data.id;
                layui.$.ajax({
                    url: '/teacher/getDetails.do',
                    type: 'post',
                    data: ids,
                    success: function (s) {
                        pop_up = layer.open({
                            type: 1,
                            title: "详情",
                            area: '800px',
                            content: s
                        });

                    },

                });

            } else if (layEvent === 'edit') {
                /* layer.msg('编辑操作');*/
     /*           window.location.href ='/editHonor?id='+data.id;*/


                layui.$.ajax({
                    url:'/student/editHonor.do?sId='+data.sId,
                    type:'get',
                    /*data:{id: data.sId},*/
                    success : function(s) {
                        pop_up= layer.open({
                            type: 1,
                            title: "编辑",
                            area: '450px',
                            content: s,
                        });

                    },


                });
            }
        });
    });



    //批量操作
    layui.$('.ajaxPost').on('click', function () {
        var Url=layui.$(this).attr('url'),ids='';
        var checkStatus = layui.table.checkStatus('ids');
        if(checkStatus.data.length===0){
            return layui.layer.msg('请选择数据!');
        }
        layui.$.each(checkStatus.data,function (i,e) {
            ids+="&ids[]="+e.id;
        })
        var encode=encodeURI(ids.substr(1));
        layui. layer.confirm('确认要执行该操作吗?',function (index) {
            layui.$(this).prop('disabled', true);
            layui.$.post(Url, encode,function (data) {
                layui.layer.close(index);
                layui.$(this).prop('disabled', false);
                if (data.code !== 0) {
                    return layui.layer.msg(data.msg);
                    aaa('${ctx}/teacher/studentHonor.jsp')
                }
                layui.layer.msg(data.msg);

               /* setTimeout(function () {
                    table_reload.reload();
                }, 1500);*/
            });
        });
        return false;
    });

</script>
</body>
</html>
