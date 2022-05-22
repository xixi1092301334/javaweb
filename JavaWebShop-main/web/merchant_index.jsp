
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zxx">
<head>
    <!--meta tags -->
    <meta charset="UTF-8">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">

</head>
<body>
<!--headder-->
<div class="header-outs" id="home">
    <div class="header-bar">

        <%@ include file="merchant_top.jsp" %>
        <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul class="navbar-nav ">
                    <li class="nav-item ">
                        <a class="nav-link" href="index.jsp">商城主页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="merchant_index.jsp">商家主页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <%
                            if(session.getAttribute("merchant")==null){
                        %>
                        <a href="merchant_login.jsp" class="nav-link">登录</a>
                        <%
                            }
                            if(session.getAttribute("merchant")!=null){
                        %>
                        <a href="${pageContext.request.contextPath}/merchant?method=logout" class="nav-link">注销</a>
                        <%
                            }
                        %>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a href="${pageContext.request.contextPath}/merchant?method=MerchantDetail" class="nav-link">商铺信息</a>--%>
<%--                    </li>--%>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/merchant?method=ShowYourProduct" class="nav-link">商品信息</a>
                    </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/merchant?method=ShowYourOrder" class="nav-link">订单信息</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
<div class="inner_page-banner one-img">
</div>
<section class="about py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">您已进入商家界面</h3>
        <div class="about-innergrid-agile text-center">
            <p class="mb-3">
                刘辰曦 201930342318 网络工程 网络应用开发
            </p>
            <p class="mb-3">

                <%--   <a Style="color:cadetblue"href="https://gitee.com/wuweizhiyin">View My Gitee</a>--%>

            </p>
        </div>
    </div>
</section>

<script src='js/jquery-2.2.3.min.js'></script>
<script src="js/minicart.js"></script>
<script>
    toys.render();

    toys.cart.on('toys_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {}
        }
    });
</script>

<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>

<script src="js/bootstrap.min.js"></script>
</body>
</html>
