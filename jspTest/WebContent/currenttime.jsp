<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- %는 자바를 사용하겠다. %@는 설정하겠다.-->
<%@ page import="java.util.Calendar"%>
<%
	Calendar c = Calendar.getInstance();
int h = c.get(Calendar.HOUR_OF_DAY);
int m = c.get(Calendar.MINUTE);
int s = c.get(Calendar.SECOND);
//자바 주석
/*자바주석*/
%>
<%--JSP주석 --%>
<!DOCTYPE html>
<!-- 주석 -->
<html>
<head>
<meta charset="UTF-8">
<title>현재 시각</title>
<style type="text/css">
/* 	css 주석 */
</style>
</head>
<body>
	<h1>
		현재시간은
		<%=h%>시
		<%=m%>분
		<%=s%>초 입니다.
	</h1>
	<script type="text/javascript">
		//자바 스크립트 주석
		/*자바 스크립트 주석*/
	</script>
</body>
</html>