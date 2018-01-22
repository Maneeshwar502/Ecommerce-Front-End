<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background="C:\Users\MANEE\Desktop/i.jpg">
<div class="bs-example">
   <nav class="navbar navbar-inverse " role="navigation">
 <div class="container-fluid">
    <div class="navbar-header">
       <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
       </button>
      <a class="navbar-brand" href="my-page">Mobile-store</a></div>
     <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
 <ul class="nav navbar-nav"> 
      <li class="active"><a href="home">Home</a></li>
      <sec:authorize access="!isAuthenticated()">
        <li role="presentation"><a href="login">Login</a></li> 
        <li role="presentation"><a href="register">Register</a></li>
      </sec:authorize>     
          <sec:authorize access="isAuthenticated()">
          
           <li><c:url value="/j_spring_security_logout" var="logoutUrl" />
							<a href="${logoutUrl}">Log Out</a>
			</li>  
			<%-- <c:when test="loggedin"></c:when> --%>
		<!-- 	<li  role="presentation" ><a href="http://localhost:8080/Mobilestore/cart">Cart</a></li> -->
			<%-- <li><a style="color: white"
							href="${pageContext.request.contextPath}/home">Hello <b><sec:authentication
										property="principal.username" /></b></a></li> --%>
		  </sec:authorize>   
</ul> 
  </div></div>
 </nav></div>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img class="img-rounded" class="image-responsive center block" src="C:\Users\MANEE\Desktop\b71fd2e4d1ccf43e200818602bf6b74e.jpg" alt="Los Angeles" style="width:100%"/>
      </div>

      <div class="item">
        <img class="img-rounded" class="image-responsive center block" src="C:\Users\MANEE\Desktop\felipe-p-lima-rizo-345998.jpg" alt="Chicago" style="width:100%"/>
      </div>
    
      <div class="item">
        <img class="img-rounded" class="image-responsive center block" src="C:\Users\MANEE\Desktop\aplle_iphoneX.jpg" alt="New york" style="width:100%"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>
