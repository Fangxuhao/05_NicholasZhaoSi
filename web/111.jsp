<%--
  Created by IntelliJ IDEA.
  User: 方徐浩
  Date: 2019/4/15
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="yyy">
    <button onclick="x()">
    </button>
</div>

</body>

<script>

</script>
<script>

function x() {

    iii();
}

    function jjj() {
        var xmlhttp1;
        if (window.XMLHttpRequest) {
            //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
            xmlhttp1 = new XMLHttpRequest();
        }
        else {
            // IE6, IE5 浏览器执行代码
            xmlhttp1 = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp1.onreadystatechange = function () {
            if (xmlhttp1.readyState == 4 && xmlhttp1.status == 200) {
                document.getElementById("yyy").innerHTML += "  <img src=\"" + xmlhttp1.responseText + "\" width=\"200\" height=\"200\">"
            }
        }
        xmlhttp1.open("POST", "/indexImg", true);
        xmlhttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp1.send("no=2");

    }

    function iii() {
            var xmlhttp;
            if (window.XMLHttpRequest) {
                //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
                xmlhttp = new XMLHttpRequest();
            }
            else {
                // IE6, IE5 浏览器执行代码
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    var obj = JSON.parse(xmlhttp.responseText);

                    document.getElementById("yyy").innerHTML += "  <img src=\"" + obj[0].src+ "\" width=\"200\" height=\"200\">"


                }
            }
            xmlhttp.open("POST", "/indexImg", true);
            xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xmlhttp.send("position=index");
    }

</script>


</html>
