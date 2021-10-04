<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false" %>

<%
	request.setCharacterEncoding("UTF-8");
%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>홈</title>
    <link rel="stylesheet" href="../css/home.css"/>
</head>
<body>
    <div class="main">
        <!-- menu -->
        <div class="menu">
            <div class="user-icon">
                <a href="#"></a>
            </div>
            <div class="board-icon">
                <a href="#"></a>
            </div>

            <!-- admin -->
            <!-- <div class="users-icon">
                <a href="#"></a>
            </div> -->
            
            <button class="logout">로그아웃</button>
        </div>

        <!-- content -->
        <div class="content">
            <div class="outline">
                <p class="title">Board Web</p>
                <p class="sub-title">project01</p>
            </div>
            <h1>일반 유저입니다.</h1>

            <!-- admin -->
            <!--<h1>관리자 입니다.</h1>-->
        </div>
    </div>
</body>
</html>