<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 시스템 로그인 페이지</title>
<style type="text/css">
table {
	margin: auto;
	width: 400px;
	border: 1px solid gray;
	text-align: center;
}

.td_title {
	font-weight: bold;
	font-size: x-large;
}
</style>
</head>
<body>
	<form action="loginprocess.jsp" method="post" name="loginform">
		<table>
			<!-- table을 사용하는것보단 div를 사용해서 배열하는게 원칙 -->
			<tr>
				<td colspan="2" class="td_title">로그인페이지</td>
			</tr>
			<tr>
				<td><label for="id">아이디 : </label></td>
				<td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<td><label for="pass">비밀번호 : </label></td>
				<td><input type="password" name="pass" id="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="javascript:loginform.submit()">로그인</a>
					&nbsp;&nbsp; <a href="joinform01.jsp">회원가입</a></td>
			</tr>
		</table>
	</form>
</body>
</html>