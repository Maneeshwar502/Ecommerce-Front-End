<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Payment Gateway</title>
</head>
<body>
<body>
<div class="bs-example">
    <nav id="myNavbar" class="navbar navbar-inverse" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container">
            <div class="navbar-header">
              <!--   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> -->
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="my-page">Mobile-Store</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="http://localhost:8080/medical/">HOME</a></li>
                    <li><a href="http://localhost:8080/medical/register"></a></li>
                    <li class="">
                        <a href="#" > <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="category"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li class="divider"></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </li>
                </ul>
                 </div>
    </nav>
</div>


<div id="wrap">
<div id="main" class="container clear-top">

  <h3>Select a Payment Method</h3>
  <hr>
  <form:form commandName="payment" action="selectPaymentMethod" method="post">
  						<div class="row">
						<div class="col-xs-4">
							<form:select path="paymentMethod" class="form-control" id="pmtMethod"> <!-- onchange="showhidediv();" -->
								<option value="">---Choose Payment Method---</option>
								<option value="creditcard">Credit Card</option>
								<option value="debitcard">Debit Card</option>
								<option value="netbanking">NetBanking</option>
								<option value="cod">Cash On Delivery</option>
								
							</form:select>					    
			      		</div>
			      		</div>
			 
  		<br><br>
		<div class="row">
        <div class="col-xs-12 col-md-6">
            <div class="panel panel-default" id="carddetails">
                <div class="panel-heading">
                    <h3 class="panel-title">
                       Enter Card Details
                    </h3>
                 </div>
               <div class="panel-body">				
						<div class="row">
						<div class="form-group">
						  <div class="col-xs-10">
	                        <label for="cardType">CARD TYPE</label>
						<form:select class="form-control" name="cardType" path="cardType" >
							<option value="0">-------Choose a Card Type-------</option>
						 	<option value="1">All Visa or MasterCard Card</option>
						 	<option value="2">All Rupay Debit Card</option>
						 	<option value="3">All SBI or Maestro Card</option>
						 	<option value="4">All Citibank Maestro Card</option>
						</form:select>
						</div>
						</div>
					</div>
					<br><br>
			      		<div class="row">
			      			<div class="form-group">
			      			<div class="col-xs-10">
	                        <label for="cardNumber">
	                            CARD NUMBER</label>
		                        <div class="input-group">
		                            <form:input type="text" class="form-control" path="cardNumber" placeholder="Valid Card Number"/>
		                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
		                        </div>
		                        </div>
                    		</div>
			      		</div>
			      		<br><br>
			      		<div class="row">
			      			 <div class="control-group">
			      			 <div class="col-xs-10">
					            <label class="control-label"  for="username">CARD HOLDER'S NAME</label>
					            <div class="controls">
					                 <form:input type="text" class="form-control" path="cardHoldersName" placeholder=""  />
					            </div>
					           </div>
					          </div>
			      		</div>
			      		<br><br>
			      		<div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                            <div class="col-xs-10">
                                <label for="expityMonth">
                                   EXPIRY DATE</label>
                                    <br>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <form:input type="text" class="form-control" path="expiryMonth" placeholder="MM" maxlength="2" />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <form:input type="text" class="form-control" path="expiryYear" placeholder="YY" maxlength="2"/></div>
                            	</div>
                            	</div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                            <div class="col-xs-10">
                                <label for="cvCode">
                                    CVV2 CODE</label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CVV2" />
                               </div>
                            </div>
                        </div>
                    </div>
                   </div>        	
		</div>
		</div>
</div>
	<div class="row"> 
			<div class="col-xs-6 pull-right">
			 <button type="submit" class="btn btn-warning" >Add Payment Detail <span class="glyphicon glyphicon-chevron-right"></span></button>
			 </div>
			 </div>
		
</form:form>
</div>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<%-- <jsp:include page="Footer.jsp" /> --%>

</body>
</html>