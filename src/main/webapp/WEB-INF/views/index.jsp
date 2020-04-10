<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-Hant">

<head> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-site-verification"
	content="IrGEdLO5cB-NnTfnOSRkZ7aDh2hLkEUzTYBZ8cxt8EA" />
<meta name="description"
	content="昀冠實業有限公司在台灣成立於西元1991年 專業於橡膠 原物料系列相關產品等大宗物資進出口買賣和產品買賣涵蓋世界各國">
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


</head>
<style>
@media ( max-width : 768px) {
	#main-slider .carousel h2 {
		color: #000;
		text-transform: uppercase;
		font-size: 45px;
		font-weight: 800;
		margin-top: 75%;
		margin-left: -14%;
	}
}
</style>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="navigation">
				<a href="/"><img align="left"
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
							<li class="active" role="presentation"><a href="/"
								class="navbar-text"><font size="4">首頁</font></a></li>
							<li role="presentation"><a class="active navbar-text"
								href="/products"><font size="4">產品介紹</font></a></li>
							<li role="presentation"><a href="/contact"
								class="navbar-text"><font size="4">聯絡我們</font></a></li>
							<li role="presentation"><a href="/en" class="navbar-text"><font
									size="4">中/EN</font></a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>
	</header>

	<section id="main-slider" class="no-margin">
		<div class="carousel slide">
			<div class="carousel-inner">
				<div class="item active"
					style="background-image: url(<c:url value='/resources/images/main.jpg'/>)">
					<div class="container">
						<div class="row slide-margin">
							<div class="col-sm-6">
								<div class="carousel-content">
									<h2 class="animation animated-item-1"></h2>
									<h2 class="animation animated-item-1">
										<font
											style="font-family: FangSong; margin-left: -8%; align: 4px; color: white;">專業服務
										</font><br> <span> <font
											class="animation animated-item-2"
											style="font-family: FangSong; color: #FFC513; margin-left: 27%;">深度耕耘</font></span>
									</h2>
									<a class="btn-slide animation animated-item-3" href="/products"><font
										size="4" style="color: white;">產品介紹</font></a>
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
						<h2>強調綠化</h2>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<i class="fa fa-thumbs-up"></i>
						<h2>追求品質</h2>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="900ms">
						<i class="fa fa-check-square-o"></i>
						<h2>講求信用</h2>
					</div>
				</div>
				<div class="col-md-3">
					<div class="hi-icon-wrap hi-icon-effect wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="1200ms">
						<i class="fa fa-comment"></i>
						<h2>回覆快速</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="about">
		<div class="container">
			<div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="300ms">
				<h2>關於我們</h2> 
				<p>
					<font size="5" style="font-family: FangSong; LINE-HEIGHT: 45px;">
						昀冠實業有限公司在台灣成立於西元1991年，專業於橡膠 原物料系列相關產品等大宗物資進出口買賣，產品買賣涵蓋世界各國。在業界深耕已有<a
						id="how_many_years"></a>年的經歷，並以熱忱服務與誠信為宗旨。
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
								<font size="4">有任何問題或是需要詢價嗎？</font>
							</h2>
							<p>
								<font size="4">我們提供了兩種聯絡方式</font>
							</p>
							<p>
								<a href="tel:048347648" target="_top"><font size="4">台灣:04-8347648</font></a>
							</p>
							<p>
								<a href="tel:+88648347648" target="_top"><font size="4">國際:+88648347648</font></a>
							</p>
							<p>
								<a href="mailto:service@yeuguan.com.tw?Subject=詢問" target="_top"><font
									size="4">Email:service@yeuguan.com.tw</font></a>
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
							<li><a href="/en"><font size="4">中/EN</font></a></li>

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
