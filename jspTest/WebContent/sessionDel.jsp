<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.removeAttribute("name"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	location.href = "sessionTest.jsp";
	//세션의 속성값을 없앰
</script>
</body>
</html>