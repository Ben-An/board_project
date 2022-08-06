<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>게시글 쓰기</title>

<style>
	div,input,textarea{
		box-sizng:border-box;
	}
	
	
	
	.form-background{
		background-color: black;
		padding: 30px;;
	}
	
	

	.form-white{
		background-color: white;
		padding: 30px;
		width:30%;
		max-width:600px;
		margin:auto;
	}
	
	.form-input{
		padding:5px;
		font-size:15px;
		border: 1px solid black;
		border-radius: 5px;
		width:100%;
		box-sizing: border-box;
	}
	
	.btn_write{
		background-color:#FEBF36;
		color: white;
		padding:8px;
		width:80px;
		border-radius:5px;
		border: none;
		
	}
	
	.btn_write:hover{
		background-color:#ba9c47;
		cursor: pointer;
	}
	

</style>


</head>
<body>

<div class="form-background">
	<div class="form-white">
	
		<form action="write.do" method="POST">
<p>
	제목:<br/><input type="text" name="title" class="form-input" value="${param.title}">
	<c:if test="${errors.title}">제목을 입력하세요.</c:if>
</p>
<p>
	내용:<br/>
	<textarea name="content" rows="5" cols="30"  class="form-input">${param.content}</textarea>
</p>

 

<input type="submit" value="새 글 등록" class="btn_write">
</form>
	</div>

</div>


</body>
</html>