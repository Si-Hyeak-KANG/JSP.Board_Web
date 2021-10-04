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
    <link rel="stylesheet" href="../css/updateInfo.css"/>
    <title>개인 정보 수정</title>
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

        <div class="content">
            <div class="outline">
                <div class="name-block">
                    <p>이름</p>
                    <input type="text"/>
                </div>
                <div class="id-block">
                    <p>아이디</p>
                    <input type="text"/>
                </div>
                <div class="pw-block">
                    <p>비밀번호</p>
                    <input type="password" value="clzls456" disabled/>
                </div>
                <div class="email-block">
                    <p>이메일</p>
                    <input type="text"/>
                </div>

                <!-- button -->
                <input type="submit" value="수정 완료" id="update"/>
                <input type="button" value="뒤로" class="back"/>
            </div>


        </div>
    </div>
</body>
</html>