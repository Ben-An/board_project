<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>암호 변경</title>
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

<div class="form-background" >
	<div class="form-white">
	
	
		<h3>암호 변경</h3>
		<form action="changePwd.do" method="post">
<p>
	현재 암호:<br/><input type="password" name="curPwd" class="form-input">
	<c:if test="${errors.curPwd}">현재 암호를 입력하세요.</c:if>
	<c:if test="${errors.badCurPwd}">현재 암호가 일치하지 않습니다.</c:if>
</p>
<p>
	새 암호:<br/><input type="password" name="newPwd" class="form-input">
	<c:if test="${errors.newPwd}">새 암호를 입력하세요.</c:if>
	<c:if test="${errors.samePassword}">같은 암호로 변경할 수 없습니다.</c:if>
</p>
<input type="submit" value="암호 변경">
</form>	
	
	</div>

</div>



</body>
</html>