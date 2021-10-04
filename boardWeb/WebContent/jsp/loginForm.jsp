<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false" %>

<%
	request.setCharacterEncoding("UTF-8");
%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인창</title>
    <link rel="stylesheet" href="../css/loginForm.css">
</head>
<body>
    <div class="main">

        <!-- left -->

        <div class="left-main">
            <div class="main-img"></div>
            <div class="outline">
                <h1 class="title">Board Web</h1>
                <h2 class="sub-title">project01</h2>
            </div>
        </div>

        <!-- right -->

        <div class="right-main">
            <h1>login</h1>

            <!-- login form -->
            <form class="login-form">    
                <div class="input-id">
                    <p>ID</p>
                    <input type="text">
                </div>
                <div class="input-pw">
                    <p>PW</p>
                    <input type="password">
                </div>
                <div class="mid">
                    <div class="join-member">
                        <a href="#">회원가입</a>
                    </div>
                    <div class="search-id">
                        <a href="#">아이디 찾기</a>
                    </div>
                    <div class="search-pw">
                        <a href="#">패스워드 찾기</a>
                    </div>
                </div>
                
                <!-- login btn -->
                <input type="button" value="로그인" id="login-btn"/>
                <input type="button" value="facebook 로그인" id="facebook-btn"/>
                <input type="button" value="카카오톡 로그인" id="kakao-btn"/>
            </form>
        </div>

    </div>
</body>
</html>