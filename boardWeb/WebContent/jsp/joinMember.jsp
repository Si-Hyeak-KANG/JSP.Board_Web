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
    <title>회원가입</title>
    <link rel="stylesheet" href="../css/joinMember.css"/>
</head>
<body>
    <div class="main">
        <div class="join-form">
            <h1>회원가입</h1>

            <!-- join form -->
            <form action="">
                <div class="input-name">
                    <p>이름</p>
                    <input type="text"/>
                </div>
                <div class="input-id">
                    <p>ID</p>
                    <input type="text"/>
                    <button type="button" class="confirmID">중복 확인</button>
                </div>
                <div class="input-pw">
                    <p>PW</p>
                    <input type="password"/>
                </div>
                <div class="input-repw">
                    <p>PWíì¸</p>
                    <input type="password"/>
                </div>
                <div class="input-email">
                    <p>email</p>
                    <input type="text">
                </div>
                <div class="check-state">
                    <input type="radio" name="check-st" id="user" checked/><p>일반 유저</p>
                    <input type="radio" name="check-st" id="admin"/><p>관리자</p>
                </div>

            <!-- btn -->
                <div class="join-btn">
                    <input type="submit" value="íìê°ì" id="joinMember"/>
                    <input type="button" value="ë¤ë¡" class="back"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>