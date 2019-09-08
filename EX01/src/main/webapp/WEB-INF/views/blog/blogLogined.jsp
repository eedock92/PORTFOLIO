<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/css/blog.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/js/memberCheck.js" rel="stylesheet" type="text/css" />
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
        <small>Subheading</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item active">Main</li>
      </ol>

      <div class="row">

        
        
        <!-- Blog Entries Column(CONTENTS)-->
        <div class="col-md-8">
		<!-- general form elements -->
		<div class="box box-primary">
		<div class="box-header">
		<h3 class="box-title" id="title1" style="display:block">Hello, Welcome</h3>
		<h3 class="box-title" id="title2" style="display:none">Board Write</h3>
		<h3 class="box-title" id="title3" style="display:none">Board</h3>
		</div>
	


		</div>
     <!--   글쓰기 -->
       <div id="write" class="box-body" style="display:none">
		<form role="form" method="post" >
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
		</div>
	<!--   글쓰기 end -->


<!-- 게시판 -->
<div id="board" class="box-body" style="display:none">
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
<!-- 게시판 end -->

        </div>




        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

      

          <!-- Categories Widget -->
      <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Login</h5>
            <div class="card-body">
             <div class="container">
			    <h2>'<strong>${memberVO.ID}</strong>'님</h2>
			  		 
		
				<h5>환영합니다.</h5>
				<form name="logout" method="post">
				<button type="submit" class="btn btn-secondary">Logout</button>
				</form>
 			</div>
            </div>
          </div>
          

    <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>


    <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#" class="sec">WRITE</a>
                    </li>
                    <li>
                      <a href="${path}/blog/blog1">글쓰기</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">JavaScript</a>
                    </li>
                    <li>
                      <a href="#" class="bod">ListAll</a>
                    </li>
                    <li>
                      <a href="${path}/blog/listAll">게시판</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
     

      </div>
      <!-- /.row -->

    </div>


</div>

<script>
var result = '${msg}';

if(result == 'SUCCESS'){
	alert("처리가 완료되었습니다.");
}

$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	var con = document.getElementById("write");
	
	var con3 = document.getElementById("title3");
	var con2 = document.getElementById("title2");
	var con1 = document.getElementById("title1");
	
	var bor = document.getElementById("board");
	console.log(formObj);
	
	/* $(".btn-primary").on("click", function(){
		formObj.submit();
	}); */
	
	$(".sec").on("click", function(){
		/* $('.box-header').hide('.title'); */
		document.getElementById("write").style.display = "block";

	    /* 메인타이틀 지우기 */
		if(con1.style.display=='block'){
	    	
	        con1.style.display = 'none';
			
	    }
		/* board 지우기 */
		if(bor.style.display=='block'){
	    	
	        bor.style.display = 'none';
			
	    }
		/* board title닫기*/
		if(con3.style.display=='block'){
	    	
	        con3.style.display = 'none';
			
	    }
	    
		/* 쓰기 바디 열기 */
	    if(con.style.display=='none'){
	    	
	        con.style.display = 'block';
			
	    }
	    
	    /* 쓰기 타이틀 열기 */
 		if(con2.style.display=='none'){
	    	
	        con2.style.display = 'block';
			
	    }
	});
	
	$(".bod").on("click", function(){
		 /* 메인타이틀 지우기 */
		if(con1.style.display=='block'){
	    	
	        con1.style.display = 'none';
			
	    }
		 
		/* 쓰기 바디 닫기 */
		 if(con.style.display=='block'){
		    	
		        con.style.display = 'none';
				
		    }
		
		  /* 쓰기 타이틀 닫기 */
	 		if(con2.style.display=='block'){
		    	
		        con2.style.display = 'none';
				
		    }
		
		 
		/* board 열기*/
		if(bor.style.display=='none'){
	    	
	        bor.style.display = 'block';
			
	    }
		
		/* board title열기*/
		if(con3.style.display=='none'){
	    	
	        con3.style.display = 'block';
			
	    }
		
	});



	
});
</script>


<%@include file="../include/footer.jsp" %>
</body>
</html>