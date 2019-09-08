<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" 
uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script>


</script>



          <!-- Side Widget -->
           <div class="card my-4">
            <h5 class="card-header">Login</h5>
            <div class="card-body">
             <div class="container">
			    <h2><strong>	'${sessionScope.ID}'</strong>님</h2>
			 
			  <h5>	현재 로그인 중 입니다. </h5>
			  		
		 
		
				
				<input type="button" class="btn btn-secondary" value="Logout" onclick="location.href='${path}/blog/blogMain'"/>
				
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
                      <a href="${path}/blog/listCri">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
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
                      <a href="#">CSS</a>
                    </li>
                    <li>
                      <a href="${path}/blog/listAll">게시판</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>



        
        
        