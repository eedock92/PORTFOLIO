<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet" type="text/css" />
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
        <small>Subheading</small>
      </h1>

      <ol class="breadcrumb">
      <%--   <li class="breadcrumb-item">
          <a href="${path}/blog/blogLogined">Main</a>
        </li> --%>
        <li class="breadcrumb-item active">Write</li>
      </ol>

      <div class="row">

        
        
        <!-- Blog Entries Column(CONTENTS)-->
        <div class="col-md-8">
		<!-- general form elements -->
		<div class="box box-primary">
		<div class="box-header">
		<h3 class="box-title">REGISTER BOARD</h3>
		</div>
		</div>
       
		<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail">Title</label>
				<input type="text"
					name = "title" class="form-control" placeholder = "Enter Title">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label>
				<textarea class="form-control" name="content" rows="3" placeholder="Enter..."></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label>
				<input type="text" 
					name="writer" class="form-control" placeholder="Enter Writer">
			</div>
		</div>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
		</form>




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