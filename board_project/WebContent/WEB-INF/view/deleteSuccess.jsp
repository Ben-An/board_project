<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    session.invalidate();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <h1>회원 탈퇴 성공</h1> -->
<script type="text/javascript">
${ctxPath = pageContext.request.contextPath ; ''}
alert("회원 탈퇴 성공.");
location.href = "${ctxPath}/article/list.do";

</script>

</body>
</html>