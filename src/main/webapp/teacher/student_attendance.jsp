<%--
  Created by IntelliJ IDEA.
  User: 鲍磊的学习机
  Date: 2017/12/4
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>学生考勤</title>
</head>
<%--<link rel="stylesheet" href="static/css/layui.css" media="all"/>
<script src="static/js/jquery.js"></script>
<script src="static/layui.all.js"></script>
<script src="static/layui.js"></script>--%>
<body>
<div class="layui-form-item layui-col-md10 layui-col-md-offset1">
    <div class="demoTable">
        搜索姓名：
        <div class="layui-inline">
            <input class="layui-input" name="sName" id="demoReload" autocomplete="off">
        </div>
        <button class="layui-btn" data-type="reload">搜索</button>
    </div>

    <div class="layui-btn-group">
        <button class="layui-btn layui-btn-small layui-btn-danger ajaxPost" url="/teacher/stuNoReach/旷课/">今日旷课</button>
        <button class="layui-btn layui-btn-small layui-btn ajaxPost" url="/teacher/stuNoReach/迟到/">今日迟到</button>
    </div>

    <table class="layui-hide" id="student_attendance" lay-filter="student_attendanceDemo"></table>

    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">详情</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="reach">迟到</a>
        <a class="layui-btn layui-btn layui-btn-xs" lay-event="kuangke">旷课</a>
    </script>
</div>

</body>
<script>

    var tid = $("#tid").val();
    layui.use(['laypage', 'table', 'upload', 'element', 'layer'], function () {
        var laydate = laypage = layui.laypage //分页
            , table = layui.table //表格
            , upload = layui.upload //上传
            , element = layui.element //元素操作
            , layer = layui.layer; //弹层
        //执行一个 table 实例
        table.render({
            elem: '#student_attendance'
            , height: 460
            , url: '/teacher/getall.do' //数据接口
            , page: true //开启分页
            , method: 'post'
            , limit: 10
            , id: 'ids'
            , cols: [[ //表头
                {checkbox: true},
                /*{field: 'sId', title: 'ID',align: 'center', sort: true, fixed: 'left'}*/
                {field: 'sSchoolid', title: '学号', align: 'center'}
                , {field: 'sName', title: '姓名', align: 'center'}
                , {field: 'sSex', title: '性别', align: 'center'}
                , {field: 'sClass', title: '班级', align: 'center'}
                /*, {field: 'sAddress', title: '地址', align: 'center'}*/
                , {fixed: 'right', align: 'center', align: 'center', toolbar: '#barDemo'}
            ]],
            sName: ''
        });


        //监听工具条
        table.on('tool(student_attendanceDemo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                /*layer.msg('ID：'+ data.sId + ' 的查看操作');*/
                var ids = '';
                ids += "&ids[]=" + data.sId;
                layui.$.ajax({
                    url: '/teacher/getDetails.do',
                    type: 'post',
                    data: ids,
                    success: function (s) {
                        pop_up = layer.open({
                            type: 1,
                            title: "详情",
                            area: '550px',
                            content: s
                        });

                    },

                });

            } else if (layEvent === 'reach') {
                layer.confirm('确定是他吗?', function (index) {
                    var ids = '';
                    ids += "&ids[]=" + data.sId;
                    layui.$.ajax({
                        url: '/teacher/stuNoReach/迟到/' + tid + '.do',
                        type: 'post',
                        data: ids,
                        success: function (s) {
                            if (s.code == 1) {
                                obj.del(); //删除对应行（tr）的DOM结构
                                layer.msg('设置迟到成功！');
                            }
                            else {
                                layer.msg(s.msg);
                            }
                        },

                        error: function (s) {
                            alert('出错了！');
                        }

                    });
                    layer.close(index);
                    //向服务端发送删除指令
                });
            }else if (layEvent === 'kuangke') {
                layer.confirm('确定是他吗?', function (index) {
                    var ids = '';
                    ids += "&ids[]=" + data.sId;
                    layui.$.ajax({
                        url: '/teacher/stuNoReach/旷课/' + tid + '.do',
                        type: 'post',
                        data: ids,
                        success: function (s) {
                            if (s.code == 1) {
                                obj.del(); //删除对应行（tr）的DOM结构
                                layer.msg('设置旷课成功！');
                            }
                            else {
                                layer.msg(s.msg);
                            }
                        },

                        error: function (s) {
                            alert('出错了！');
                        }

                    });
                    layer.close(index);
                    //向服务端发送删除指令
                });
            }
        });

        var $ = layui.$, active = {
            reload: function () {
                var demoReload = $('#demoReload');

                //执行重载
                table.reload('ids', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {

                        sName: demoReload.val()

                    }
                });
            }
        };

        $('.demoTable .layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

    });
    //批量操作
    layui.$('.ajaxPost').on('click', function () {
        var Url = layui.$(this).attr('url') + tid + '.do', ids = '';

        var checkStatus = layui.table.checkStatus('ids');
        if (checkStatus.data.length === 0) {
            return layui.layer.msg('请选择数据!');
        }
        layui.$.each(checkStatus.data, function (i, e) {
            ids += "&ids[]=" + e.sId;
        })
        var encode = encodeURI(ids.substr(1));
        layui.layer.confirm('确认要执行该操作吗?', function (index) {
            layui.$(this).prop('disabled', true);
            layui.$.post(Url, encode, function (data) {
                layui.layer.close(index);
                layui.$(this).prop('disabled', false);
                if (data.code !== 0) {
                    return layui.layer.msg(data.msg);
                }
                layui.layer.msg(data.msg);
                setTimeout(function () {
                    table_reload.reload();
                }, 1500);
            });
        });
        return false;
    });


</script>
</html>