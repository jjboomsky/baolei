
function student_onclick() {
    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";
    document.querySelector('.cont_form_login').style.display = "block";
    document.querySelector('.cont_form_sign_up').style.opacity = "0";

    setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);

    setTimeout(function(){
        document.querySelector('.cont_form_sign_up').style.display = "none";
    },200);
}

function teacher_onclick(at) {
    document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
    document.querySelector('.cont_form_sign_up').style.display = "block";
    document.querySelector('.cont_form_login').style.opacity = "0";

    setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
    },100);

    setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
    },400);


}



function ocultar_login_sign_up() {

    document.querySelector('.cont_forms').className = "cont_forms";
    document.querySelector('.cont_form_sign_up').style.opacity = "0";
    document.querySelector('.cont_form_login').style.opacity = "0";

    setTimeout(function(){
        document.querySelector('.cont_form_sign_up').style.display = "none";
        document.querySelector('.cont_form_login').style.display = "none";
    },500);

}
function student_login() {
    var username = $('#stu_username').val();
    var password = $('#stu_password').val();
    var data = {
        username: username,
        password: password
    };
    $.ajax({
        url: '/stu_login.do',
        type: 'psot',
        data: data,
        success: function (s) {
            if (s.code == 1) {
                alert(s.msg);
            } else {
                alert(s.msg);
                location.href = "gotomain.do?id=" + s.code;
            }
        },
        error: function () {
            alert('登入失败！');
        }

    });

}

function tea_login() {
    var username = $('#ter_username').val();
    var password = $('#ter_password').val();
    var data = {
        username: username,
        password: password
    };
    $.ajax({
        url: '/tea_login.do',
        type: 'psot',
        data: data,
        success: function (s) {
            if (s.code == 0) {
                alert(s.msg);
            } else {
                alert(s.msg);
                location.href = "teacher/teacher" + s.code+".do";
            }
        },
        error: function () {
            alert('登入失败！');
        }

    });

}