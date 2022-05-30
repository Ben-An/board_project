<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>가입</title>

<style>
	div,input{
		box-sizing:border-box;
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
	
	
	.yellow-btn{
		background-color:#FEBF36;
		color: white;
		padding:8px;
		width:80px;
		border-radius:5px;
		border: none;
		
	}
	
	.yellow-btn:hover{
		background-color:#ba9c47;
		cursor: pointer;
	}


</style>


</head>



<body>

<div class="form-background">
	<div class="form-white"> 
		<form action="deleteMember.do" method="post"> 



<h3>회원 탈퇴를 위해 아이디와 비밀번호를 재입력 해주세요.</h3>
<p>
	아이디:<br/><input type="text" name="id" value="${param.id}" class="form-input">
	<c:if test="${errors.id}">ID를 입력하세요.</c:if>
</p>
<p>
	암호:<br/><input type="password" name="password" class="form-input">
	<c:if test="${errors.password}">암호를 입력하세요.</c:if>
	<c:if test="${errors.duplicateId}">id나 암호가 틀렸습니다</c:if>
</p>
<input type="submit" value="탈퇴하기" class="yellow-btn">

</form>
	
	</div>

</div>



</body>
</html>