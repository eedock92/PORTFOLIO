<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
      <h1 class="mt-4 mb-3">List All Home 
        <small>Subheading</small>
      </h1>

      <ol class="breadcrumb">
       <%--  <li class="breadcrumb-item">
          <a href="${path}/blog/blogMain">Main</a>
        </li> --%>
         <li class="breadcrumb-item">
          <a href="${path}/blog/blog1">Write</a>
        </li>
        <li class="breadcrumb-item active">ListAll</li>
      </ol>

      <div class="row">
      
      
      <table class="table table-bordered">
      <tr>
      	<th style="width: 10px">BNO</th>
      	<th>TITLE</th>
      	<th>WRITER</th>
      	<th>REGDATE</th>
      	<th style="width: 40px">VIEWCNT</th>
      </tr>
      
      <c:forEach items="${list}" var="boardVO">
      
      	<tr>
      		<td>${boardVO.bno}</td>
      		<td><a href='/blog/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
      		<td>${boardVO.writer}</td>
      		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
      				value="${boardVO.regdate}"/></td>
      		<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
      	</tr>			
      </c:forEach>
      		
      		
      		
      </table>
      
      

    </div>

</div>

<script>
	var result = '${msg}';
	
	if(result == 'SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>


<%@include file="../include/footer.jsp" %>
</body>
</html>