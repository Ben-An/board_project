<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 등록</title>
</head>
<body>

<%-- 게시글을 등록했습니다.
<br>

<a href="${ctxPath}/article/list.do">[게시글목록보기]</a>
<a href="${ctxPath}/article/read.do?no=${newArticleNo}">[게시글내용보기]</a> --%>




<script type="text/javascript">
${ctxPath = pageContext.request.contextPath ; ''}
alert("게시글을 등록했습니다.");
location.href = "${ctxPath}/article/list.do";

</script>
</body>
</html>