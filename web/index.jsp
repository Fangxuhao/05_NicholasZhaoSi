<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>乡土文化教育-首页</title>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/demo_index.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="css/calendar.css">
</head>
<body>

<div id="switcher">
    <div class="center">
        <ul>
            <li class="top2" style="margin-right: 20%"><a href="login.html">注册</a></li>
            <li class="top2"><a href="login.html">登陆</a></li>
        </ul>
    </div>
</div>
<div id="header" class="clear">
    <div class="headTop clear webPage">
        <%--<img src="img/index/loge.png" width="235" height="79">--%>
        <div class="logo L"><a href="#" id="img1"></a></div>
        <div class="headNav R">

            <ul class="headNavUl clear">
                <li class="navLi active"><a href="#" class="atem">网站首页</a>丨</li>

                <li class="navLi "><a href="#" class="atem">民间文艺</a>丨</li>

                <li class="navLi "><a href="#" class="atem">最新资讯</a>丨</li>

                <li class="navLi "><a href="#" class="atem">民俗风情</a>丨</li>

                <li class="navLi "><a href="#" class="atem">作品欣赏</a>丨</li>

                <li class="navLi "><a href="#" class="atem">文化遗产</a>丨</li>

                <li class="navLi "><a href="#" class="atem">节日节气</a>丨</li>

                <li class="navLi "><a href="#" class="atem">关于乡土教育</a></li>

            </ul>
        </div>
    </div>
</div>

<!--返回顶部按钮-->

<div id="to_top" title="返回顶部" style="  right: 30px;
    bottom: 30px;
    position: fixed;
    cursor: pointer;
    display: none;z-index:8888888">
    <%--<img src="img/index/top.png" width="40" height="40">--%>
</div>


<div id="center" class="clear">
    <div class="webPage clear centBox">
        <div class="indSlide padding-top-10 padding-bottom-10 clear">
            <div class="slide">
                <div class="slideA">
                    <!--轮播图-->
                    <ul class="ggBox">
                        <li style="z-index: 1; opacity: 0.1;" id="img2">
                            <%--<img src="img/index/111.jpeg" width="1024" height="481">--%>
                        </li>
                        <li style="z-index: 1; opacity: 0.1;" id="img3">
                            <%--<img src="img/index/loge.png" width="1024" height="481">--%>
                        </li>
                        <li style="z-index: 1; opacity: 0.1;" id="img4">
                            <%--<img src="img/index/111.jpeg" width="1024" height="481">--%>
                        </li>
                        <li style="z-index: 3; opacity: 1;" id="img5">
                            <%--<img src="img/index/111.jpeg" width="1024" height="481">--%>
                        </li>
                    </ul>
                </div>
                <div class="aElem leftRight" style="display: block;">
                    <div class="leftRightPage"><a href="#" class="leftBtn"></a><a href="#" class="rightBtn"></a></div>
                </div>
            </div>
        </div>
        <!--left S-->
        <div class="indLeft L">

            <%--加日历处--%>

            <div class="indLeftImg" >
                <div id="calendar" class="calendar"></div>
            </div>


            <div class="clear padding-top-10"></div>
            <div class="indLeftCom clear margin-top-10">
                <div class="indLeftNav clear text-right"><span class="font-yahei"><i></i>文化遗产</span><a
                        href="#">查看更多&gt;</a></div>
                <div class="clear padding-top-10"></div>
                <div class="slide3 clear padding-bottom-10 ">
                    <div class="slideA">
                        <ul class="ggBox" id="ggBox2">
                            <%--<li style="z-index: 1; opacity: 0.1;">--%>
                                <%--<a href="#"><img src="img/index/slide04.jpg"width="92" height="95"></a>--%>
                                <%--<a href="#"><img src="img/index/slide03.jpg" width="92" height="95"></a>--%>
                                <%--<a href="#"><img src="img/index/slide01.jpg" width="92" height="95"></a> --%>
                                <%--<a href="#"><img src="img/index/slide02.jpg" width="92" height="95"></a>--%>
                            <%--</li>--%>
                            <%--<li style="z-index: 3; opacity: 1;">--%>
                                <%--<a href="#"><img src="img/index/slide01.jpg" width="92" height="95"></a>--%>
                                <%--<a href="#"><img src="img/index/slide02.jpg" width="92" height="95"></a> --%>
                                <%--<a href="#"><img src="img/index/slide03.jpg" width="92" height="95"></a>--%>
                                <%--<a href="#"><img src="img/index/slide04.jpg" width="92" height="95"></a>--%>
                            <%--</li>--%>
                        </ul>
                    </div>
                    <div class="aElem leftRight">
                        <div class="leftRightPage"><a href="#" class="leftBtn"></a><a href="#" class="rightBtn"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--left E-->
        <!--right S-->
        <div class="indCom R">
            <div class="indBox2 L padding-right-10">
                <div class="indCon indCon2 clear " style="height: 266px">
                    <div class="indComNav clear text-right"><span class="font-yahei"><i></i>最新资讯</span><a href="#">查看更多&gt;</a>
                    </div>
                    <div class="viodBox L">
                        <a href="#" id="img6">
                            <%--<img src="img/index/vio.jpg" width="175" height="205">--%>
                         </a>
                    </div>

                    <div class="viodCom R " style="width: 250px;">
                        <div class="viodTxt"><span></span><a href="#">xxxxxxxxxxxxxxx</a></div>
                        <div class="viodTxt"><span></span><a href="#">xxxxxxxxxxxxxxxx</a></div>
                        <div class="viodTxt"><span></span><a href="#">xxxxxxxxxxxxxxxx</a></div>
                        <div class="viodTxt"><span></span><a href="#">xxxxxxxxxxxxxxxx</a></div>
                        <div class="viodTxt"><span></span><a href="#">xxxxxxxxxxxxxxxx</a></div>

                    </div>
                </div>
            </div>
            <div class="indBox1 padding-left-10 L">
                <div class="indCon indCon1 ">
                    <div class="indComNav clear text-right"><span class="font-yahei"><i></i>民间文艺</span><a href="#">查看更多&gt;</a>
                    </div>
                    <div class="viodBox padding-10" id="img7">
                        <%--<img src="img/index/con07.jpg" width="287" height="205">--%>
                    </div>
                </div>
            </div>
            <div class="clear padding-top-10">
                <div class="clear padding-top-10"></div>
            </div>
            <div class="indBox2 L padding-right-10">
                <div class="indCon indCon2 clear " style="height:260px">
                    <div class="indComNav clear text-right"><span class="font-yahei"><i></i>作品欣赏</span><a href="#">查看更多&gt;</a>
                    </div>
                    <div class="imgBox L">
                        <a href="#" id="img8">
                        <%--<img src="img/index/con06.jpg" width="188" height="200">--%>
                        </a>
                    </div>
                    <div class="imgCom R" id="img9">
                        <%--<a href="#">--%>
                            <%--<img src="img/index/con07.jpg" width="115" height="91">--%>
                        <%--</a>--%>
                        <%--<a href="#">--%>
                            <%--<img src="img/index/con09.jpg" width="115" height="91">--%>
                        <%--</a>--%>
                        <%--<a href="#">--%>
                            <%--<img src="./con10.jpg" width="115" height="91">--%>
                        <%--</a>--%>
                        <%--<a href="#">--%>
                            <%--<img src="img/index/con11.jpg" width="115" height="91">--%>
                        <%--</a>--%>
                    </div>
                </div>
            </div>
            <div class="indBox1 padding-left-10 L">
                <div class="indCon indCon1 ">
                    <div class="indComNav clear text-right"><span class="font-yahei"><i></i>作品欣赏</span><a href="#">查看更多&gt;</a>
                    </div>
                    <div class="indImg2 L">
                        <a href="#" id="img10">
                            <%--<img src="img/index/con10.jpg" width="107" height="74">--%>
                        </a>
                    </div>
                    <div class="indTxt2 R padding-right-10"><a href="#">中国剧协副主席李树建</a> <span>全国第十二届美术作品展暨庆祝中华人民共和国成立六十五，云南省美术作品展</span>
                    </div>
                    <div class="clear padding-10" style="padding-top:0;">
                        <div class="viodTxt"><span></span><a href="#">xxxxx</a></div>
                        <div class="viodTxt"><span></span><a href="#">xxxxx</a></div>
                        <div class="viodTxt"><span></span><a href="#">xxxxx</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!--  right E-->
    </div>
</div>
<!-- center E -->
<!-- footer S -->
<div id="footer" class="clear">
    <div class="webPage1 clear footBox">
        <div class=" footCom">
            <div class="footTxt"><span>地址：xxxxxxxxxxxxxxxxxxxxx</span>|<span>电话：xxxxx</span>|<span>邮编；650031</span>
            </div>
        </div>
    </div>
</div>
<!-- footer E -->

<!--返回顶部-->
<script>
    window.onscroll = function () {

        var distance = document.documentElement.scrollTop || document.body.scrollTop; //距离页面顶部的距离

        if (distance >= 400) { //当距离顶部超过300px时，显示图片
            document.getElementById('to_top').style.display = "inline";

        } else { //距离顶部小于300px，隐藏图片
            document.getElementById('to_top').style.display = "none";
        }

        var toTop = document.getElementById("to_top"); //获取图片所在的div

        toTop.onclick = function () { //点击图片时触发的点击返回顶部事件
            document.documentElement.scrollTop = document.body.scrollTop = 0; //页面移动到顶部
        }
    }
</script>
<%--<script src="js/jquery.js"></script>--%>
<script>
    window.onload = function () {
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
                document.getElementById("img1").innerHTML += "<img src=\"" + obj[10].src + "\" width=\"235\" height=\"79\">"
                document.getElementById("to_top").innerHTML += "<img src=\"" + obj[11].src + "\" width=\"40\" height=\"40\">"
                document.getElementById("img2").innerHTML+="<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
                document.getElementById("img3").innerHTML+="<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
                document.getElementById("img4").innerHTML+="<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
                document.getElementById("img5").innerHTML+="<img src=\"" + obj[0].src + "\" width=\"1024\" height=\"481\">"
                document.getElementById("ggBox2").innerHTML+="<li style=\"z-index: 1; opacity: 0.1;\">\n" +
                    "                                <a href=\"#\"><img src=\""+obj[9].src+"\"width=\"92\" height=\"95\"></a>\n" +
                    "                                <a href=\"#\"><img src=\""+obj[8].src+"\" width=\"92\" height=\"95\"></a>\n" +
                    "                                <a href=\"#\"><img src=\""+obj[6].src+"\" width=\"92\" height=\"95\"></a> \n" +
                    "                                <a href=\"#\"><img src=\""+obj[7].src+"\" width=\"92\" height=\"95\"></a>\n" +
                    "                            </li>\n" +
                    "                            <li style=\"z-index: 3; opacity: 1;\">\n" +
                    "                                <a href=\"#\"><img src=\""+obj[9].src+"\" width=\"92\" height=\"95\"></a> \n" +
                    "                                <a href=\"#\"><img src=\""+obj[8].src+"\" width=\"92\" height=\"95\"></a> \n" +
                    "                                <a href=\"#\"><img src=\""+obj[7].src+"\" width=\"92\" height=\"95\"></a> \n" +
                    "                            </li>"

                document.getElementById("img6").innerHTML+="<img src=\""+obj[12].src+"\" width=\"175\" height=\"205\">"
                document.getElementById("img7").innerHTML+="  <img src=\""+obj[3].src+"\" width=\"287\" height=\"205\">"
                document.getElementById("img8").innerHTML+="  <img src=\""+obj[2].src+"\" width=\"188\" height=\"200\">"
                document.getElementById("img9").innerHTML+=" <a href=\"#\">\n" +
                    "                            <img src=\""+obj[2].src+"\" width=\"115\" height=\"91\">\n" +
                    "                        </a>\n" +
                    "                        <a href=\"#\">\n" +
                    "                            <img src=\""+obj[3].src+"\" width=\"115\" height=\"91\">\n" +
                    "                        </a>\n" +
                    "                        <a href=\"#\">\n" +
                    "                            <img src=\""+obj[4].src+"\" width=\"115\" height=\"91\">\n" +
                    "                        </a>\n" +
                    "                        <a href=\"#\">\n" +
                    "                            <img src=\""+obj[5].src+"\" width=\"115\" height=\"91\">\n" +
                    "                        </a>"


                document.getElementById("img10").innerHTML+="<img src=\""+obj[5].src+"\" width=\"107\" height=\"74\">"




            }
        }
        xmlhttp.open("POST", "/indexImg", true);
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send("position=index");

    }

</script>

<script src="jquery.min.js"></script>
<script src="js/jquery-migrate-1.4.1.min.js"></script>
<script src="js/calendar.js"></script>
<script src="js/base.js"></script>

</body>
</html>
