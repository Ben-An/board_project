<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>게시글 읽기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>

	
	table{
		width:80%;
		
		
	}
	
	form{
		width:100%;
		
	}

	td{
		padding: 10px;
	}
	
	

body{
	display: flex;
	justify-content: center;
	margin-left:100px;
	margin-top:100px;
	
	
}


	.mod{
        	margin:15px;
        	padding: 10px;
        	width:100px;
        	background-color:#FEBF36;
        	color: white;
        	border: none;
        	border-radius:5px;
        }

</style>


</head>
<body>




<form action="modify.do" method="post" >
<input type="hidden" name="no" value="${articleData.article.number}">
<table border="1" width="70%" class="align-middle">

<tr>
	<td style="width:10%" class="text-center">번호</td>
	<td>${articleData.article.number}</td>
</tr>
<tr>
	<td style="width:10%" class="text-center">작성자</td>
	<td>${articleData.article.writer.name}</td>
</tr>
<tr>
	<td style="width:10%" class="text-center">제목</td>
	<td><input class="title" type="text" name="title" style="width:100%" value="<c:out value='${articleData.article.title}'/>" disabled/></td>
</tr>

<tr>
	<td style="width:10%" class="text-center">이미지</td>
	<td> <img src="${image_path }" alt="" /> </td>
</tr>


<tr>
	<td style="width:10%" class="text-center">내용</td>
	<td><textarea class="content" style="width:100%"  name="content" disabled><u:pre value='${articleData.content}'/></textarea> </td>
</tr>
<tr>
	<td colspan="2">
		<c:set var="pageNo" value="${empty param.pageNo ? '1' : param.pageNo}" />
		<a href="list.do?pageNo=${pageNo}">[목록]</a>
		<c:if test="${authUser.id == articleData.article.writer.id}">
		<%-- <a href="modify.do?no=${articleData.article.number}">[게시글수정]</a> --%>
		<span id="mod">[게시글수정]</span>
		<a href="delete.do?no=${articleData.article.number}">[게시글삭제]</a>
		</c:if>
	</td>
</tr>
</table>




<input type="submit" value="글 수정" class="mod" style="display:none;" />
</form>







<script type="text/javascript">
	
	document.getElementById("mod").addEventListener("click", disabledFalse);
	
	function disabledFalse() {
    	document.querySelector('.title').disabled = false;
    	document.querySelector('.content').disabled = false;
    	document.querySelector('.mod').style.display = "block";
    	
	}


</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	
	
	
</body>
</html>