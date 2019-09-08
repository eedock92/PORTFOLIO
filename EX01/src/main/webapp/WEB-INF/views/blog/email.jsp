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
		<h3 class="box-title">send mail</h3>
		</div>
		</div>
       
<form action="${pageContext.request.contextPath}/mail/mailSending" method="post">

    <div align="center"><!-- 받는 사람 이메일 -->

      <input type="text" name="tomail" size="120" style="width:100%" placeholder="상대의 이메일" class="form-control" >

    </div>     

    <div align="center"><!-- 제목 -->

      <input type="text" name="title" size="120" style="width:100%" placeholder="제목을 입력해주세요" class="form-control" >

    </div>

    <p>

    <div align="center"><!-- 내용 --> 

      <textarea name="content" cols="120" rows="12" style="width:100%; resize:none" placeholder="내용#" class="form-control"></textarea>

    </div>

    <p>

    <div align="center">

      <input type="submit" value="메일 보내기" class="btn btn-warning">

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