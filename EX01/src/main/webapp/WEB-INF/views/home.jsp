<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
<%@ page session="true"%>
<html>
<head>
 <title>Modern Business - Start Bootstrap Template</title>
<%@ include file="include/header.jsp" %>  
</head>
 <body>

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="${path}/home">BS:K</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">Contact</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="${path}/gallery/ArtGall">Gallery</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Developer Portfolio
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="${path}/portfolio/DevPotfol">1 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-2-col.jsp">2 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-3-col.jsp">3 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-4-col.jsp">4 Column Portfolio</a>
                <a class="dropdown-item" href="portfolio-item.jsp">Single Portfolio Item</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Design Portfolio
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.jsp">1 Design Portfolio</a>
                <a class="dropdown-item" href="sidebar.jsp">2 Design Portfolio</a>
                <a class="dropdown-item" href="faq.jsp">3 Design Portfolio</a>
                <a class="dropdown-item" href="404.jsp">4 Design Portfolio</a>
                <a class="dropdown-item" href="pricing.jsp">Single Portfolio Item</a>
              </div>
            </li>
               <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Blog
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="${path}/blog/blogMain">Blog Home 1</a>
                <a class="dropdown-item" href="#">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.jsp">Blog Post</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('../resources/images/coding.JPG')">			<!-- url('http://placehold.it/1900x1080') -->
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('../resources/images/trust2.JPG')">  			
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('../resources/images/trust3.JPG')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

    <!-- Page Content -->
    <div class="container">

      <h1 class="my-4"></h1>

      <!-- Marketing Icons Section -->
      <div class="row">
    <!--     <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Card Title</h4>
            <div class="card-body">
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Card Title</h4>
            <div class="card-body">
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Card Title</h4>
            <div class="card-body">
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">Learn More</a>
            </div>
          </div>
        </div> -->
        
              <div class="col-lg-6">
          <h2><strong>김병수</strong></h2>
          <p>#WebDeveloper #IndustryDesigner #Illustrator #Photographer</p>
          <ul>
            <li>
              	사용 가능한 언어 및 도구
            </li>
            <li><strong>Java</strong> &amp; <strong>python</strong></li>
            <li><strong>css</strong> &amp; <strong>jQuery</strong></li>
            <li><strong>spring-framework</strong></li>
            <li><strong>OracleDB</strong> &amp; <strong>MySQL </strong>&amp; <strong>MaraiDB</strong></li>
            <li><strong>Photoshop</strong> &amp; <strong>Illustrator</strong> &amp; <strong>Rhino3d</strong></li>
          </ul>
          <p>"THE MORE YOU BELEVED IN YOURSELF, THE MORE YOU COULD TRUST YOURSELF. THE MORE YOU TRUST YOURSELF, THE LESS YOU COMPARE YOURSELF TO OTHERS" -Roy T. Eennett-</p>
      
        
        </div>
        <div class="col-lg-6">
          <img class="img-fluid rounded" src="../resources/images/bsk.jpg" alt=""><!-- http://placehold.it/700x450 -->
        </div>
        
        
      </div>
      
      <div class="row mb-4">
      <div class="col-md-8">
      <p></p>
      </div> 
      </div>
      
      <!-- /.row -->

      <!-- Portfolio Section -->
      <h2>Developer Portfolio</h2>

      <div class="row">
      
      
      
       <!--  <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project One</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project Two</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project Three</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project Four</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project Five</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project Six</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
            </div>
          </div>
        </div> -->
        
           <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="../resources/images/ready.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project 1</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="../resources/images/ready.jpg" alt=""></a>  <!-- http://placehold.it/700x400 -->
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">Project 2</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.</p>
            </div>
          </div>
        </div>
        
      </div>
      
      <h2>Design Portfolio</h2>
      <div class="row">
      
      
      <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="../resources/images/design/char.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a>CHAPEAKER</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="../resources/images/design/cup.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a>STARTING OVER</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.</p>
            </div>
          </div>
        </div>
         <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="../resources/images/design/cram.jpg" alt=""></a> <!-- http://placehold.it/700x400 -->
            <div class="card-body">
              <h4 class="card-title">
                <a>FLIPPS</a>
              </h4>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit aliquam aperiam nulla perferendis dolor nobis numquam, rem expedita, aliquid optio, alias illum eaque. Non magni, voluptates quae, necessitatibus unde temporibus.</p>
            </div>
          </div>
        </div>
      
      </div>
      <!-- /.row -->

      <!-- Features Section -->
<!--       <div class="row">
        <div class="col-lg-6">
          <h2>Modern Business Features</h2>
          <p>The Modern Business template by Start Bootstrap includes:</p>
          <ul>
            <li>
              <strong>Bootstrap v4</strong>
            </li>
            <li>jQuery</li>
            <li>Font Awesome</li>
            <li>Working contact form with validation</li>
            <li>Unstyled page elements for easy customization</li>
          </ul>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
        </div>
        <div class="col-lg-6">
          <img class="img-fluid rounded" src="http://placehold.it/700x450" alt="">
        </div>
      </div> -->
      <!-- /.row -->

      <hr>

      <!-- Call to Action Section -->
      <div class="row mb-4">
        <div class="col-md-8">
          <p> 이 사람이 마음에 드시나요? 그럼 망설이지 말고 옆에 버튼을 누르세요.</p>
        </div>
        <div class="col-md-4">
          <a class="btn btn-lg btn-secondary btn-block" href="#">채용하기</a>
        </div>
      </div>

    </div>
    <!-- /.container -->

  
<%@include file="include/footer.jsp" %>

  </body>


</html>
