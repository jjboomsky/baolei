//Demo
layui.use('form', function () {
    var form = layui.form;
    //监听提交
    form.on('submit(formDemo)', function (data) {
        layer.msg(JSON.stringify(data.field));
        return true;
    });

});
layui.use('laydate', function(){
    var laydate = layui.laydate;
    //年月选择器
    laydate.render({
        elem: '#test1' //指定元素
        ,type: 'month'
    });
});