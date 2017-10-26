
$(function () {
    $("#login").click(function () {
        var userName=$("#username").val();
        var passWord=$("#password").val();
        $.post("login",{username:userName,password:passWord},function (data) {
            if (data){
                window.location.href="jsp/main.jsp";
            }
            else {
                $("#result").text("用户名或者密码错误");

            }
        });
    });
});
