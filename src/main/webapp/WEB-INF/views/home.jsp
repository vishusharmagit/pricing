<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Forex Pricing and Ticketing Application</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/angular-material/1.0.7/angular-material.min.css">

<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
<link href="<c:url value='/resources/css/datepicker.css' />"
	rel="stylesheet"></link>
</head>
<body ng-app='myApp'>

	<h2 class="header">
		<img title="Forex Trading Options" class="logo"
			src="<c:url value='/resources/image/trading-logo.jpg'/>">
		Welcome Forex Options Application!
	</h2>
	<div ng-cloak="" class="tabsdemoDynamicHeight" class="tabsDiv">
		<md-content> <md-tabs md-dynamic-height=""
			md-border-bottom=""> <md-tab label="Pricing and Exchange"
			md-on-select="activeBooking=false"> <md-content
			class="md-padding"> 
			
			<jsp:include
			page="/resources/include/pricing_tab.jsp" /> 
			
			
			</md-content> </md-tab> <md-tab
			label="Booking" md-active="activeBooking"
			md-on-select="activeBooking=true"> <md-content
			class="md-padding"> 
			
			<jsp:include
			page="/resources/include/booking_tab.jsp" /> 
			
			
			</md-content> </md-tab> </md-tabs> </md-content>
	</div>
	<nav id="footer">
		<div class="footer-top">
			<div class="container text-center">
				<br />
				<p>ALL RIGHTS RESERVED. COPYRIGHT &copy; 2016.</p>
				<p>
					Designed &amp; Coded by <a
						href="mailto:vishu.sharma.059@gmail.com&subject=Contact Us">Vishu
						Sharma</a>
				</p>
			</div>
		</div>
	</nav>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
	<script
		src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-114/svg-assets-cache.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/angular-material/1.0.7/angular-material.min.js"></script>
	<script
		src="<c:url value='/resources/lib/jquery/1.11.0/jquery.min.js' />"></script>

	<script src="<c:url value='/resources/js/app.js' />"></script>
	<script src="<c:url value='/resources/lib/bootstrap-datepicker.js' />"></script>
	<script src="<c:url value='/resources/js/service/user_service.js' />"></script>
	<script
		src="<c:url value='/resources/js/controller/user_controller.js' />"></script>
	<script
		src="<c:url value='/resources/js/controller/booking_controller.js' />"></script>
	<script
		src="<c:url value='/resources/js/controller/model_controller.js' />"></script>
	<script
		src="<c:url value='/resources/js/directive/model_directive.js' />"></script>

	<script type="text/javascript">
        $(window).load(function() {
            $('#datepicker').datepicker({
                format: "dd/mm/yyyy"
            });
        });
    </script>
</body>
</html>