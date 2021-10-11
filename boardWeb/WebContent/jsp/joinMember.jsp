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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
		function fn_joinMember() {
			var joinForm = document.joinForm;
			var name = joinForm.name.value;
			var id = joinForm.id.value;
			var pwd = joinForm.pwd.value;
			var rePwd = joinForm.rePwd.value;
			var email = joinForm.email.value;
		
			
			if(name.length==0 || name=="") {
				alert("이름은 입력해주세요.");
				document.joinForm.name.focus();
			}else if(id.length==0 || id=="") {
				alert("아이디를 입력해주세요.")
				document.joinForm.id.focus();
			}else if(pwd.length==0 || pwd=="") {
				alert("비밀번호를 입력해주세요");
				document.joinForm.pwd.focus();
			}else if(rePwd.length==0 || rePwd=="") {
				alert("비밀번호를 다시 입력해주세요.");
				document.joinForm.rePwd.focus();
			}else if(rePwd!=pwd) {
				alert("입력하신 비밀번호가 틀립니다.");
				document.joinForm.rePwd.focus();
			}else if(email.length==0 || email=="") {
				alert("이메일을 입력해주세요");
				document.joinForm.email.focus();
			}else {
				joinForm.method="post";
				joinForm.action="${contextPath}/member/joinMember.do";
				joinForm.submit();
			}
		}
		
		function backToList(obj) {
			obj.action="${contextPath}/member/loginForm.do";
			obj.submit();
		}
		

    </script>
</head>
<body>
    <div class="main">
        <div class="join-form">
            <h1>회원가입</h1>

            <!-- join form -->
            <form name="joinForm" method="post" action="${contextPath}/member/joinMember.do">
                <div class="input-name">
                    <p>이름</p>
                    <input type="text" name="name"/>
                </div>
                <div class="input-id">
                    <p>ID</p>
                    <input type="text" name="id"/>
                    <button type="button" onclick="fn_dbCheckId()" class="confirmID" name="dbCheckId">
                    	중복 확인
                    </button>
                </div>
                <div class="input-pw">
                    <p>PW</p>
                    <input type="password" name="pwd"/>
                </div>
                <div class="input-repw">
                    <p>PW확인</p>
                    <input type="password" name="rePwd"/>
                </div>
                <div class="input-email">
                    <p>email</p>
                    <input type="text" name="email">
                </div>
                <div class="check-state">
                    <input type="radio" name="check-st" value="N" id="user" checked/><p>일반 유저</p>
                    <input type="radio" name="check-st" value="Y" id="admin"/><p>관리자</p>
                </div>

            <!-- btn -->
                <div class="join-btn">
                    <input type="button" onclick="fn_joinMember()"value="회원가입" id="joinMember"/>
                    <input type="button" onclick="backToList(this.form)" value="뒤로" class="back"  />
                </div>
            </form>
        </div>
    </div>
</body>
</html>