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
	
	
		<form action="join.do" method="post">
		
		<h3>회원가입</h3>
<p>
	아이디:<br/><input class="form-input" type="text" name="id" value="${param.id}">
	<c:if test="${errors.id}">ID를 입력하세요.</c:if>
	<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
</p>

<p>
	이름:<br/><input class="form-input" type="text" name="name" value="${param.name}">
	<c:if test="${errors.name}">이름을 입력하세요.</c:if>
</p>


<p>
	암호:<br/><input class="form-input" type="password" name="password">
	<c:if test="${errors.password}">암호를 입력하세요.</c:if>
</p>
<p>
	암호 확인:<br/><input class="form-input" type="password" name="confirmPassword">
	<c:if test="${errors.confirmPassword}">확인을 입력하세요.</c:if>
	<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
</p>

 <p>
	이메일:<br/><input class="form-input" type="email" name="email" value="${param.email}">
	<c:if test="${errors.email}">이메일을 추가해주세요.</c:if>
</p> 
<input type="submit" value="가입" class="yellow-btn">
</form>
	
	</div>

</div>





</body>
</html>