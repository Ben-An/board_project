<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>게시글 목록</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
	
	a{
		padding:10px;
	}

	 a .btn_list{
        	margin:15px;
        	padding: 10px;
        	width:100px;
        	background-color:#FEBF36;
        	color: white;
        	border: none;
        	border-radius:5px;
        	display: block;
        	margin-left:auto;
        	

       		
        	
        }
        
     a .btn_list:hover{
        
        	background-color:#ba9c47;
			cursor: pointer;
        }

</style>




</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	 

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      	<span style="padding:10px">${authUser.name}님, 안녕하세요.</span>
       	
      </li>
      
        <li class="nav-item">
			<a id="logout">로그아웃하기</a>
      </li>
      
     
      
        <li class="nav-item">
			<a href="<%=request.getContextPath()%>/login.do">로그인하기</a>
      </li>
      
      <li class="nav-item">
       	<a href="<%=request.getContextPath()%>/changePwd.do" >암호변경하기</a>
      </li>
      
      <li class="nav-item">
       	<a href="<%=request.getContextPath()%>/deleteMember.do">회원탈퇴</a>
      </li>
      
    </ul>
	</nav>
	

<%-- 		${authUser.name}님, 안녕하세요.
		<!-- <a href="javascript:void(0)" onclick="logout()">[로그아웃하기]</a> -->
		<a id="logout">[로그아웃하기]</a>
		<a href="<%=request.getContextPath()%>/changePwd.do">[암호변경하기]</a>
		<a href="<%=request.getContextPath()%>/deleteMember.do">[회원탈퇴]</a> --%>


<table class="table table-hover" >
	<thead>
	<tr style="background:black"> 
		<td scope="col" class="text-center" style="color: white" >번호</td>
		<td scope="col" class="text-center"style="color: white" >제목</td>
		<td scope="col" class="text-center"style="color: white">작성자</td>
		<td scope="col" class="text-center"style="color: white">조회수</td>
	</tr>
	</thead>
	
<c:if test="${articlePage.hasNoArticles()}">
	<tr>
		<td colspan="4">게시글이 없습니다.</td>
	</tr>
</c:if>

<tbody>
<c:forEach var="article" items="${articlePage.content}">
	<tr>
		<td style="width:10% " class="text-center">${article.number}</td>
		<td style="width:60%" class="text-center">
		<a href="read.do?no=${article.number}&pageNo=${articlePage.currentPage}&name=${article.writer.name}"  class="text-decoration-none">
		<c:out value="${article.title}"/>
		</a>
		</td>
		<td style="width:20%" class="text-center">${article.writer.name}</td>
		<td style="width:10%" class="text-center">${article.readCount}</td>
	</tr>
</c:forEach>

	
	
	</tbody>
	
	
	<c:if test="${articlePage.hasArticles()}">
	<tr>
		<td colspan="4" class="text-center text-decoration-none">
			<c:if test="${articlePage.startPage > 5}">
			<a href="list.do?pageNo=${articlePage.startPage - 5}">[이전]</a>
			</c:if>
			<c:forEach var="pNo" 
					   begin="${articlePage.startPage}" 
					   end="${articlePage.endPage}">
			<a href="list.do?pageNo=${pNo}">${pNo}</a>
			</c:forEach>
			<c:if test="${articlePage.endPage < articlePage.totalPages}">
			<a href="list.do?pageNo=${articlePage.startPage + 5}">[다음]</a>
			</c:if>
		</td>
	</tr>
</c:if>
	

</table>

<a href="write.do" class="text-decoration-none"> <button class="btn_list"  >게시글쓰기</button></a>


<script type="text/javascript">
		
	document.getElementById("logout").addEventListener("click",function(event){
		  event.preventDefault();
		  var answer = confirm("정말 로그아웃 하시겠습니까??");
		  if(answer){
			  location.href = "<%=request.getContextPath()%>/logout.do";
		} else {
			return;
		}
	});
	</script>
	
	
	
	
</body>
</html>