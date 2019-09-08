<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<%@ page session="true"%>
<html>
<head>
<%@ include file="../include/header.jsp" %>
<title>Modern Business - Start Bootstrap Template</title>
</head>
<script>
    $(document).ready(function(){
        $(".btn-primary").click(function(){
            // 태크.val() : 태그에 입력된 값
            // 태크.val("값") : 태그의 값을 변경 
            var user = $("#ID").val();
            var pw = $("#PASS").val();
            if(user == ""){
                alert("아이디를 입력하세요.");
                $("#ID").focus(); // 입력포커스 이동
                return; // 함수 종료
            }
            if(pw == ""){ 
                alert("비밀번호를 입력하세요.");
                $("#PASS").focus();
                return;
            }
            // 폼 내부의 데이터를 전송할 주소
            document.form1.action="loginCheck.do"
            // 제출
            document.form1.submit();
        });
    });
</script>

 <header class="business-header">

           
             <img src="../resources/images/blogH/bg.jpg">
     
</header>

<body>

<!-- Navigation -->
<%@include file="../include/blogNav.jsp" %>
	<div class="vacancy"></div>
    <!-- Page Content -->
    <div class="container">
      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Blog Home One
        <small>Mainpage</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item active">Home</li>
      </ol>

      <div class="row">

        
        
        <!-- Blog Entries Column(CONTENTS)-->
        <div class="col-md-8">
		<!-- general form elements -->
		
		
		<div class="box box-primary">
		<div class="box-header">
		<h3 class="box-title">Hello,Welcome home</h3>
		<p><Strong>로그인 하세요 ------------------------------------------------------------------------------->></Strong></p>
		</div>
		
	
			
		</div>
       
       
       
          <!-- Pagination 
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">&larr; Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer &rarr;</a>
            </li>
          </ul>-->

        </div>




        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

      

          <!-- Categories Widget -->
          <!-- Side Widget -->
          <form name="form1" method="post">
          <div class="card my-4">
            <h5 class="card-header">Login</h5>
            <div class="card-body">
             <div class="container">
			    <label for="ID"><b>Username</b></label>
			    <input type="text" placeholder="Enter Username" name="ID" required>
			
			    <label for="PASS"><b>Password</b></label>
			    <input type="password" placeholder="Enter Password" name="PASS" required>
			    <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        	아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
                </c:if>
			
			    <button type="submit" class="btn btn-primary">Login</button>
			    
			    <button type="submit" class="btn btn-secondary">Signup</button>
			   <!--  <label>
			      <input type="checkbox" checked="checked" name="remember"> Remember me
			    </label> -->
 			</div>
            </div>
          </div>
          </form>
          



      </div>
      <!-- /.row -->

    </div>


</div>
	<script>
       		$(".btn-secondary").on("click", function(){
       			self.location = "/blog/signup";
       			
       		});

     </script>
<%@include file="../include/footer.jsp" %>
</body>
</html>