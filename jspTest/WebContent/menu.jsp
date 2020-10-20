<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if (id == null) {
	%>
	<a href="login.jsp">로그인</a>
	<%
		} else {
	%>
	<%=id%>님 환영합니다.
	<%
		}
	%>
	
<!-- 	자바 코드 사용 -->
	<%
// 		if(id == null){
// 			out.println("<a href = 'login.jsp'>로그인</a>");
// 		} else{
// 			out.println(id + "님 환영합니다.");
// 		}
	%>
</body>
</html>