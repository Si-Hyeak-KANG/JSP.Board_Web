<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>

<%
	request.setCharacterEncoding("UTF-8");
	String user_id = request.getParameter("user_id");
	int result = (int) request.getAttribute("result");
%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="id" value="${user_id}"/>
<c:set var="result" value="${}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 확인</title>
<script type="text/javascript">
	function btn_close() {
		window.close();
	}
</script>
</head>
<body>
	<h2>ID 중복 확인</h2>

		<input type="text" name="id" value="<%=user_id %>" disabled>
		
		<c:choose>
			<c:when test="${result==1}">
				<p>이미 사용 중인 아이디입니다.</p>
			</c:when>
			<c:otherwise>
				<p>사용가능한 아이디입니다.</p>
			</c:otherwise>
		</c:choose>

	<input type="button" onclick="btn_close()" value="닫기">
</body>
</html>