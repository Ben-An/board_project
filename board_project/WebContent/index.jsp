<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>

<%-- <%
	request.setCharacterEncoding("utf8");
%> --%>
<!DOCTYPE html>
<html>
<head>
<title>회원제 게시판 예제</title>

<link rel="stylesheet" href="WebContent/WEB-INF/css/style.css" />
	
<style>
	
	
	
	div,a{
		box-sizing:border-box;
	}	
		
	  body{
            background-color: black;
            height: 100vh;
            display: flex;

        }
        .btn_div{
            
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width:250px;
            height:250px;
            margin: auto;
            border-radius: 10px;
            padding: 3px;
        }
        
        a .btn_index1{
        	margin:15px;
        	padding: 10px;
        	width:100px;
        	background-color:#FEBF36;
        	color: white;
        	border: none;
        	border-radius:5px;
        }
        
        a .btn_index1:hover{
        
        	background-color:#ba9c47;
			cursor: pointer;
        }
        
        a .btn_index2{
        	padding: 10px;
        	width:103px;
        	background-color:#FEBF36;
        	color: white;
        	border: none;
        	border-radius:5px;
        }
          a .btn_index2:hover{
        
        	background-color:#ba9c47;
			cursor: pointer;
        }
        

</style>

</head>
<body>

<%-- 	<c:if test="${! empty authUser}">
	${authUser.name}님, 안녕하세요.
	<!-- <a href="javascript:void(0)" onclick="logout()">[로그아웃하기]</a> -->
		<a id="logout">[로그아웃하기]</a>
		<a href="changePwd.do">[암호변경하기]</a>
		<a href="article/list.do">[게시판]</a>
		<a href="deleteMember.do">[회원탈퇴]</a>
	</c:if> --%>
	
	
	
	
		<div class="btn_div">
			<a href="login.do"> <button class="btn_index1"> 로그인하기</button> </a>
			<a href="join.do"> <button class="btn_index2">회원가입하기</button> </a>
		
		</div>
	
		
	
		<!-- <a href="article/list.do">[게시판]</a> -->
	
	


<%-- 	<script type="text/javascript">
		
	document.getElementById("logout").addEventListener("click",function(event){
		  event.preventDefault();
		  var answer = confirm("정말 로그아웃 하시겠냥? ㅋㅋㅋ");
		  if(answer){
			  location.href = "<%=request.getContextPath()%>/logout.do";
		} else {
			return;
		}
	}); --%>
	</script>
</body>
</html>