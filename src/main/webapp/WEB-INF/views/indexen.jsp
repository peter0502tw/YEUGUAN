<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="google-site-verification"
	content="IrGEdLO5cB-NnTfnOSRkZ7aDh2hLkEUzTYBZ8cxt8EA" />
<meta name="description"
	content="Yeu Guan Industrial Co., Ltd., was established in 1991 Yuanlin,Taiwan. We specialise in the import and export of rubber and other raw materials. ">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>昀冠實業有限公司 YEU GUAN INDUSTRIAL CO.,LTD</title>


<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css" />">
<link href="<c:url value="/resources/css/prettyPhoto.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />

<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Marcellus+SC"
	rel="stylesheet">



</head>
<style>
#main-slider .carousel .carousel-content {
	margin-top: 100px;
}

#main-slider .carousel .slide-margin {
	margin-top: 100px;
}

#main-slider .carousel h2 {
	color: #A79898;
	text-transform: uppercase;
	font-size: 35px;
	font-weight: 800;
	margin-top: 40%;
	height: 100px;
	width: 200%;
}

#main-slider .carousel h2 #second {
	color: #000;
	text-transform: uppercase;
	font-size: 40px;
	font-weight: 800;
	margin: 20;
	margin-top: -8%;
	margin-left: 5%;
}

/* #### Mobile Phones Portrait #### */
@media screen and (max-device-width: 480px) and (orientation: portrait)
	{
	#main-slider .carousel h2 {
		color: #000;
		text-transform: uppercase;
		font-size: 15px;
		font-weight: 800;
		color: #A79898;
		margin-top: 55%;
		margin-left: 3%;
		height: 40px;
		width: 100%;
	}
	#main-slider .carousel h2 #second {
		color: #000;
		text-transform: uppercase;
		font-size: 20px;
		font-weight: 800;
		margin-top: 20%;
		margin-left: -0%;
	}
}

/* #### Mobile Phones Landscape #### */
@media screen and (max-device-width:820px) and (orientation: landscape)
	{
	#main-slider .carousel h2 {
		color: #000;
		text-transform: uppercase;
		font-size: 30px;
		font-weight: 800;
		color: #A79898;
		margin-top: 9%;
		margin-left: 6%;
		height: 40px;
		width: 97%;
	}
	#main-slider .carousel h2 #second {
		color: #000;
		text-transform: uppercase;
		font-size: 35px;
		font-weight: 800;
		margin-top: -8%;
		margin-left: 2%;
	}
}

/* #### Tablets Portrait or Landscape #### */
@media screen and (min-device-width: 768px) and (max-device-width:
	1024px) {
	#main-slider .carousel h2 {
		color: #000;
		text-transform: uppercase;
		font-size: 28px;
		font-weight: 800;
		color: #A79898;
		margin-top: 55%;
		margin-left: 13%;
		height: 80px;
		width: 200%;
	}
	#main-slider .carousel h2 #second {
		color: #000;
		text-transform: uppercase;
		font-size: 30px;
		font-weight: 800;
		margin-top: -8%;
		margin-left: 2.5%;
	}
}

/* #### Desktops #### */
@media screen and (min-width: 1024px) {
	#main-slider .carousel h2 {
		color: #A79898;
		text-transform: uppercase;
		font-size: 30px;
		font-weight: 800;
		margin-top: 40%;
		margin-left: 9%;
		height: 100px;
		width: 200%;
	}
	#main-slider .carousel h2 #second {
		color: #000;
		text-transform: uppercase;
		font-size: 40px;
		font-weight: 800;
		margin: 20;
		margin-top: -8%;
		margin-left: 1.3%;
	}
}
</style>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="navigation">
				<a href="/en"><img align="left"
					style="margin-left: 1.5%; margin-top: 1%;"
					src="<c:url value='/resources/images/LOGO_YG.jpg' />"></a>
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>

					</div>

					<div class="navbar-collapse collapse">

						<ul class="nav navbar-nav navbar-right" role="tablist">
							<li class="active" role="presentation"><a href="/en"
								class="navbar-text"><font size="4">Home</font></a></li>
							<li role="presentation"><a class="active navbar-text"
								href="/products/en"><font size="4">Products</font></a></li>
							<li role="presentation"><a href="/contact/en"
								class="navbar-text"><font size="4">Contact</font></a></li>
							<li role="presentation"><a href="/" class="navbar-text"><font
									size="4">中/EN</font></a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>
	</header>

	<section id="main-slider" class="margin">
		<div class="carousel slide">
			<div class="carousel-inner">
				<div class="item active "
					style="background-image: url(<c:url value='/resources/images/main.jpg' />)">
					<div class="container">
						<div class="row slide-margin">
							<div class="col-sm-6">
								<div class="carousel-content">
									<h2 class="animation animated-item-1">
										<font
											style="margin-left: -9%; margin-top: -20%; align: 4px; color: white; font-family: 'Marcellus SC', serif;">Specialists
											in importing and exporting </font><br> <span id="second">
											<font class="animation animated-item-2"
											style="font-family: 'Marcellus SC', serif; color: #FFCE05;">rubber,
												industrial materials</font>
										</span>
									</h2>
									<a class="btn-slide animation animated-item-3"
										href="/products/en"><font size="4"
										style="font-family: 'Marcellus SC', serif; color: white;">Products</font></a>
								</div>


							</div>


						</div>
					</div>
				</div>
				<!--/.item-->
			</div>
			<!--/.carousel-inner-->
		</div>
		<!--/.carousel-->
	</section>
	<!--/#main-slider-->

	<div class="feature">
		<div class="container">
			<div class="text-center">
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="300ms">
						<i class="fa fa-leaf"></i>
						<h2>Recycling</h2>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<i class="fa fa-thumbs-up"></i>
						<h2>Quality</h2>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="900ms">
						<i class="fa fa-check-square-o"></i>
						<h2>Responsibility</h2>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="1200ms">
						<i class="fa fa-comment"></i>
						<h2>Communication</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="about">
		<div class="container">
			<div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="300ms">
				<h2>About Us</h2>
				<p>
					<font size="5" style="LINE-HEIGHT: 45px;">Yeu Guan
						Industrial Co., Ltd., was established in 1991 Yuanlin,Taiwan.We
						have been running our business for <a id="how_many_years"></a>
						years. We specialise in the import and export of rubber and other
						raw materials. Our objective is to give a high product
						satisfaction for our clients.
					</font>
				</p>
			</div>
			<script>
				var date = new Date();
				var year = date.getFullYear();
				document.getElementById("how_many_years").innerHTML = year - 1991;
			</script>

		</div>
	</div>

	<section id="conatcat-info">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<div class="media contact-info wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="pull-left">
							<i class="fa fa-phone"></i>
						</div>

						<div class="media-body">
							<h2>
								<font size="4">Get a quote or have any questions?</font>
							</h2>
							<p>
								<font size="4">Do not hesitate to contact us by E-mail or
									Phone</font>
							</p>
							<p>
								<a href="tel:048347648" target="_top"><font size="4">Local:04-8347648</font></a>
							</p>
							<p>
								<a href="tel:+88648347648" target="_top"><font size="4">Outside
										of Taiwan:+88648347648</font></a>
							</p>
							<p>
								<a href="mailto:service@yeuguan.com.tw?Subject=subject"
									target="_top"><font size="4">Email:service@yeuguan.com.tw</font></a>
							</p>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.container-->
	</section>
	<!--/#conatcat-info-->

	<footer>
		<div class="footer">
			<div class="container">
				<div class="social-icon">
					<div class="col-md-4">
						<ul class="social-network">
							<li><a href="/"><font size="4">中/EN</font></a></li>

						</ul>
					</div>
				</div>

				<div class="col-md-4 col-md-offset-4">
					<div class="copyright">
						<font>&copy; YEU GUAN INDUSTRIAL CO.,LTD. All Rights
							Reserved. Designed by </font> <font>YUE-LONG</font>
					</div>
				</div>
			</div>

			<div class="pull-right">
				<a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
			</div>
		</div>
	</footer>



	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.prettyPhoto.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.isotope.min.js' />"></script>
	<script src="<c:url value='/resources/js/wow.min.js' />"></script>
	<script src="<c:url value='/resources/js/functions.js' />"></script>



</body>

</html>
