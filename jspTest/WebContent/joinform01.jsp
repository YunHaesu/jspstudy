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
<title>회원 관리 시스템 가입 페이지</title>
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
	<form action="joinprocess.jsp" method="post" name="joinform">
		<table border="1">
			<!-- table을 사용하는것보단 div를 사용해서 배열하는게 원칙 -->
			<tr>
				<td colspan="2" class="td_title">회원가입페이지</td>
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
				<td><label for="name">이름 : </label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label for="age">나이 : </label></td>
				<td><input type="text" name="age" id="age"></td>
			</tr>
			<tr>
				<td><label for="gender1"></label>성별 :</td>
				<td><input type="radio" name="gender" id="gender1" value="남"
					checked>남자 <input type="radio" name="gender" id="gender2"
					value="여" checked>여자</td>
			</tr>
			<tr>
				<td><label for="email">이메일 주소 : </label></td>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="javascript:joinform.submit()">회원
						가입</a> &nbsp;&nbsp; <a href="javascript:joinform.reset()">다시 작성</a></td>
			</tr>
		</table>
	</form>
</body>
</html>