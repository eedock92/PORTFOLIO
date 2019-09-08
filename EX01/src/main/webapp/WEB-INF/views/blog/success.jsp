<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true"%>
<html>
<head>
<%@ include file="../include/header.jsp" %>
<title>Modern Business - Start Bootstrap Template</title>
</head>
<body>
<!-- Navigation -->
<%@include file="../include/blogNav.jsp" %>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Blog Home One
        <small>Subheading</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Blog Home 1</li>
      </ol>

      <div class="row">

        
        
        <!-- Blog Entries Column(CONTENTS)-->
        <div class="col-md-8">
		<!-- general form elements -->
		
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">SUCCESS PAGE</h3>
			</div>
			<div class="box-body">SUCCESS!!</div>
			<!-- /.box-body -->
			<div class="box-footer">Footer</div>
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
     <%@include file="../include/blogWidget.jsp" %>

      </div>
      <!-- /.row -->

    </div>


</div>

<%@include file="../include/footer.jsp" %>
</body>
</html>