function login() {
    var password = document.getElementById("r_pwd").value;
    var email = document.getElementById("r_email").value;
    var code = document.getElementById("r_code").value;
    xmlhttp = new XMLHttpRequest();


    if (email == "") {
        $.jGrowl("邮箱不能为空！", {header: '提醒'});
    } else if (password == "") {
        $.jGrowl("密码不能为空！", {header: '提醒'});
    } else if (code == "") {
        $.jGrowl("验证码不能为空！", {header: '提醒'});
    } else {
        loginUp();
    }

    return false;
}

function loginUp() {
    var password = document.getElementById("r_pwd").value;
    var email = document.getElementById("r_email").value;
    var code = document.getElementById("r_code").value;

    $.ajax({
        type: 'post',
        url: "/login",
        dataType: "text",
        data: {"pwd": password, "email": email, "code": code},
        success: function (data) {
            if (data == -1) {
                $.jGrowl("邮箱已被占用！请重新输入", {header: '提醒'});
                var form_r = document.getElementById("register_from");
                form_r.reset();
            } else if (data == -2) {
                alert("验证码错误");
            }
        },
        error: function (xhr, type) {
            console.log(xhr);
        }
    });
}