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
        <small>Signup</small>
      </h1>

      <ol class="breadcrumb">
      <li class="breadcrumb-item">
          <a href="index.html">Main</a>
        </li>
        <li class="breadcrumb-item active">Signup</li>
      </ol>

      <div class="row">

        
        
        <!-- Blog Entries Column(CONTENTS)-->
        <div class="col-md-8">
		<!-- general form elements -->
		
		<div class="card my-4">
		<div class="card-body">
<form class="formHorizontal" method="POST">
			    <fieldset>
			      
			      
			        <div class="control-group">
			            <!-- Username -->
			            <label class="control-label" for="username"><Strong>Username</Strong></label>
			            <div class="controls">
			                <input type="text" id="ID" name="ID" placeholder="" class="inputXlarge" onkeydown="inputIdChk()">
			            	<!-- <input type="button" value="중복확인" class="btn btn-info" id="ID_confirm" name="ID_confirm" onclick="openIdChk()"> -->
			                <input type="hidden" name="idDuplication" class="btn btn-secondary" value="idUncheck">
			                <p class="help-block">Username can contain any letters or numbers, without spaces</p>
			         
			            </div>
			        </div>
			
			        <div class="control-group">
			            <!-- Password-->
			            <label class="control-label" for="password"><Strong>Password</Strong></label>
			            <div class="controls">
			                <input type="password" id="PASS" name="PASS" placeholder="" class="input-xlarge">
			                <p class="help-block">Password should be at least 4 characters</p>
			            </div> 
			        </div>
			
			   <!--      <div class="control-group">
			            Password
			            <label class="control-label" for="passwordConfirm"><Strong>Password (Confirm)</Strong></label>
			            <div class="controls">
			                <input type="password" id="passwordConfirm" name="passwordConfirm" placeholder="" class="input-xlarge">
			                <p class="help-block">Please confirm password</p>
			            </div>
			        </div> -->
			
			  		<div class="control-group">
			            <!-- E-mail -->
			            <label class="control-label" for="email"><Strong>E-mail</Strong></label>
			            <div class="controls">
			                <input type="email" id="EMAIL" name="EMAIL" placeholder="" class="input-xlarge">
			                <p class="help-block">Please provide your E-mail</p>
			            </div>
			        </div>
			
			        <div class="control-group">
			            <!-- Button -->
			            <div class="controls">
			                <button type="submit" class="btn btn-success">Register</button>
			            </div>
			        </div>
			    </fieldset>
			</form>
</div>
</div>
</div>

	<div class="col-md-4">
		    <div class="card my-4">
            <h5 class="card-header">AD</h5>
            <div class="card-body">
              <div class="row">
                	광고 넣는 곳입니다.
        
              </div>
            </div>
          </div>
          
            <div class="card my-4">
       <div class="card-body">
              
                	<img class="img-fluid img-thumbnail" src="http://placehold.it/400x300">
        
             
            </div>
       </div>
     </div> 
   
 </div>


</div>
  
	<script>

	
	/* 	var check = $("idCheck.do");
		var formObj = $("form[role='form']");
		var id = $("#ID").val();
		var pw = $("#PASS").val();
        var pwc = $("#passwordConfirm").val();
		console.log(formObj);
		
	$(".btn-info").on("click", function(){
		document.formHorizontal.action="idCheck.do"
			if(true){
				alert(id+"는 사용가능한 아이디");
			}else{
				alert("중복된 아이디");
			}
           
		}); */
	

	
	
	
	

</script>
	
<%@include file="../include/footer.jsp" %>
</body>
</html>
