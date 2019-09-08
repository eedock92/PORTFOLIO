<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/css/thumbnail-gallery.css" rel="stylesheet">

 <%@ page session="true"%>
<html>
<head>
<%@ include file="../include/header.jsp" %>
<title>Gallery</title>
</head>
 <body>


  <!-- Navigation -->
    <%@include file="../include/blogNav.jsp" %>
    

    <!-- Page Content -->
    <div class="container">
	<div class="vacancy"></div>
      <h1 class="my-4 text-center text-lg-left">Art Gallery</h1>

      <div class="gallery_list">

        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/Agallery/fros.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">  <!-- http://placehold.it/400x300 -->
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        
         <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
        <div class="gall">
          <a class="gall">
            <img class="img-fluid img-thumbnail" src="../resources/images/yello.jpg" alt="">
          </a>
        </div>
       
        
        
      </div>

    </div>
    
    <!-- /.container -->

<div class="vacancy"></div>

    <!-- Bootstrap core JavaScript -->
    
	
	
  <%@include file="../include/footer.jsp" %>	
  </body>
  
  </html>