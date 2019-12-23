<%--
  Created by IntelliJ IDEA.
  User: wn
  Date: 2019/11/21
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link href="/statics/css/img_smooth_check.css" type="text/css" rel="stylesheet" />
    <script src="/statics/js/jquery-3.1.1.min.js"></script>
    <script src="/statics/js/img_smooth_check.js"></script>
</head>
<body>
<div class="widgets__img_check_box" id="select" style="width:600px;margin:0 auto;top:2px;">
    <div class="widgets__img_display">
        <div class="widgets__img_cnt">
            <img src1="a.jpg" class="widgets__img_src" />
            <canvas class="widgets__img_fragment_hollow"></canvas>
            <div class="widgets__img_fragment_cnt">
                <canvas class="widgets__img_fragment widgets__img_fragment_shadow"></canvas>
                <canvas class="widgets__img_fragment widgets__img_fragment_content"></canvas>
            </div>
            <div class="widgets__icon_refresh"></div>
        </div>
    </div>
    <div class="widgets__smooth_cnt">
        <div class="widgets__smooth_bar"></div>
        <div class="widgets__smooth_circle"></div>
    </div>
</div>

</body>
<script type="text/javascript">
    var s = WIDGETS.imgSmoothCheck({
        selector: "#select",
        data: ["/statics/img/t2.png", "/statics/img/t3.png", "/statics/img/t1.png"],
        imgHeight: 100,
        imgWidth: 200,
        allowableErrorValue: 3,
        success: function () {
            location.href="/devUser/devLogin?devcode=${devcode}&devpassword=${devpassword}";
        },
        error: function (res) {
            alert('重新再试');
        }
    });
    $(".refresh").on("click", function () {
        s.refresh();
    });
</script>
</html>
