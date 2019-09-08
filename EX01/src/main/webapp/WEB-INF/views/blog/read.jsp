<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">READ-1
        <small>Subheading</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">READ</li>
      </ol>

      <div class="row">

        
        
        <!-- Blog Entries Column(CONTENTS)-->
        <div class="col-md-8">
		<!-- general form elements -->
		<div class="box box-primary">
		<div class="box-header">
		<h3 class="box-title">READ BOARD</h3>
		</div>
		</div>
       

		<form role="form" method="post">
		
		<input type='hidden' name='bno' value="${boardVO.bno}">
		
		</form>

<div class="box-body">
	<div class="form-group">
		<label for="exampleInputEmail">Title</label> <input type="text"
			name="title" class="form-control" value="${boardVO.title }"
			readonly="readonly">
	</div>
	<div class="form-group">
		<label for="exampleInputPassword1">Content</label>
		<textarea rows="3" class="form-control" name="content" readonly="readonly">${boardVO.content}</textarea>
	</div>
	<div class="form-group">
		<label for="exampleInputEmail">Writer</label> <input type="text"
			name="writer" class="form-control" value="${boardVO.writer }"
			readonly="readonly">
	</div>
	
	
</div>

<div class="box-footer">
	<button type="submit" class="btn btn-warning">Modify</button>
	<button type="submit" class="btn btn-danger">REMOVE</button>
	<button type="submit" class="btn btn-primary">LIST ALL</button>
</div>


<script>

$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/blog/modify");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/blog/remove");
		formObj.submit();
	});
	
	$(".btn-primary").on("click", function(){
		self.location = "/blog/listAll";
	});
	
});
</script>
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
     <%@include file="../include/blogWidget.jsp" %>

      </div>
      <!-- /.row -->

    </div>


</div>

<%@include file="../include/footer.jsp" %>
</body>
</html>