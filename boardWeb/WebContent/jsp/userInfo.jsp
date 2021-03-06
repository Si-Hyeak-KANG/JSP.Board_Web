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
    <link rel="stylesheet" href="../css/userInfo.css"/>
    <title>개인 정보 조회</title>
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
            
            <button class="logout">로그아웃</button>
        </div>
        
        <!-- content -->
        <div class="content">
            <div class="outline">
                <h1>개인 정보</h1>
                <div class="info">
                    <div class="name-block">
                        <p>이름</p>
                        <input type="text" value="강시혁" disabled/>
                    </div>
                    <div class="id-block">
                        <p>아이디</p>
                        <input type="text" value="zlcls456" disabled/>
                    </div>
                    <div class="pw-block">
                        <p>비밀번호</p>
                        <input type="password" value="clals456" disabled/>
                    </div>
                    <div class="email-block">
                        <p>이메일</p>
                        <input type="text" value="zlcls456@naver.com" disabled/>
                    </div>
                    <div class="joinDate-block">
                        <p>가입 날짜</p>
                        <input type="date" vlaue="" disabled/>
                    </div>
                </div>

                <!-- button -->
                <div class="button">
                    <input type="button" value="개인 정보 수정" id="updateInfo"/>
                    <input type="button" value="개인 정보 삭제" id="deleteInfo"/>
                    <input type="button" value="뒤로" class="back"/>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>