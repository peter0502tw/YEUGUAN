<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="google-site-verification" content="IrGEdLO5cB-NnTfnOSRkZ7aDh2hLkEUzTYBZ8cxt8EA" />
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


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
</head>

<style>
.overlayproducts {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(20, 64, 159, 0.96);
	z-index: 2;
	overscroll-behavior: contain;
	overflow-y: scroll;
}

#text {
	position: absolute;
	top: 50%;
	left: 50%;
	color: white;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	font: bold 18px/40px Georgia, serif;
}

#close {
	position: absolute;
	top: 15%;
	left: 5%;
	font-size: 25px;
	color: white;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	margin: 20px;
}

.recent-work-inner h3 {
	color: blue;
}

/*Mobile Protrait */
@media screen and (max-device-width: 640px) and (orientation: portrait)
	{
	#text {
		position: absolute;
		top: 45%;
		left: 50%;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 14px/30px Georgia, serif;
		height: 40%;
		width: 90%;
	}
}
/* #### Mobile Phones Landscape #### */
@media screen and (max-device-width:820px) and (orientation: landscape)
	{
	#text {
		position: absolute;
		top: 57%;
		left: 50%;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 14px/40px Georgia, serif;
		height: 50%;
		width: 90%;
	}
	#close {
		position: absolute;
		top: 20%;
		left: 3%;
		font-size: 25px;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		margin: 20px;
	}
}

/* #### Tablets Portrait or Landscape #### */
@media screen and (min-device-width: 820px) and (max-device-width:
	1024px) {
	#text {
		position: absolute;
		top: 45%;
		left: 50%;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 16px/40px Georgia, serif;
		height: 80%;
		width: 90%;
	}
	#close {
		position: absolute;
		top: 20%;
		left: 5%;
		font-size: 25px;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		margin: 20px;
	}
}
/* #### XL Mobiles Landscape #### */
@media screen and (min-device-height: 411px) and (min-device-width:
	823px) and (max-device-width: 850px) and (orientation: landscape) {
	#text {
		position: absolute;
		top: 70%;
		left: 50%;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 16px/40px Georgia, serif;
		height: 70%;
		width: 90%;
	}
	#close {
		position: absolute;
		top: 25%;
		left: 5%;
		font-size: 25px;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		margin: 20px;
	}
}
/* #### Desktops #### */
@media screen and (min-width: 1024px) {
	#text {
		position: absolute;
		top: 65%;
		left: 50%;
		font-size: 18px;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 20px/40px Georgia, serif;
		height: 500px;
		width: 60%;
		text-align: center;
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
							<li role="presentation"><a href="/en" class="navbar-text"><font
									size="4">Home</font></a></li>
							<li class="active" role="presentation"><a
								class="active navbar-text" href="/products/en"><font
									size="4">Products</font></a></li>
							<li role="presentation"><a href="/contact/en"
								class="navbar-text"><font size="4">Contact</font></a></li>
							<li role="presentation"><a href="/products"
								class="navbar-text"><font size="4">中/EN</font></a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>








	</header>




	<div id="breadcrumb">
		<div class="container">
			<div class="breadcrumb">
				<li><a href="/en">Home</a></li>
				<li>Products</li>
			</div>
		</div>
	</div>





	<section id="portfolio">
		<div class="container">
			<div class="center">
				<p>Do not be hesitant to contact us for any detail of the
					products</p>


			</div>



			<ul class="portfolio-filter text-center">
				<li><a class="btn btn-default active" href="#" data-filter="*">All</a></li>
				<li><a class="btn btn-default" href="#"
					data-filter=".Synthetic">Synthetic Rubber</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Natural">Natural
						Rubber</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Reclaim">Reclaim
						Rubber</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Ther">Thermoplastic
						Elastomer</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Chemical">Chemical
						Additives</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".oil">Rubber
						Process Oil</a></li>
			</ul>
			<!--/#portfolio-filter-->
		</div>
		<div class="container">
			<div class="">
				<!--  <p align="center" onclick="on(this,'button')"> <font color="red" size="4" role="button" >點擊產品可檢視詳細內容。</font></p> -->
				<div class="portfolio-items">



					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'BR_Intro')">
										<font class="title_item">順丁橡膠系列</font><font
											class="title_item_en" size="3">BR</font><br>
										<font class="title_item_en" size="3">Polybutadiene
											Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'BR_Con')"><font size="3"><i
											class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div
						class="portfolio-item joomla Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'ESBR_Intro')">
										<font class="title_item">乳聚丁苯橡膠系列<font size="3"
											class="title_item_en">ESBR</font></font><br>
										<font size="3" class="title_item_en">Emulsion
											Styrene-Butadiene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'ESBR_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->


					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'SSBR_Intro')">
										<font class="title_item">溶聚丁苯橡膠系列</font><font
											class="title_item_en" size="3">SSBR</font><br>
										<font size="3" class="title_item_en">Solution
											Styrene-Butadiene Rubber</font>
									</h3>
									<a></a> <a role="button" onclick="on(this,'SSBR_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->



					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'NBR_Intro')">
										<font class="title_item">丁晴橡膠</font><font size="3"
											class="title_item_en">NBR</font><br>
										<font size="3" class="title_item_en">Acrylonitrile
											Butadiene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'NBR_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->





					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'IR_Intro')">
										<font class="title_item">異戊二烯橡膠系列</font><font size="3"
											class="title_item_en">IR</font><br>
										<font size="3" class="title_item_en">Polyisoprene
											Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'IR_Con')"><font size="3"><i
											class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->


					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'IIR_Intro')">
										<font class="title_item">丁基橡膠系列</font><font size="3"
											class="title_item_en">IIR</font><br>
										<font size="3" class="title_item_en">Isobutylene-Isoprene
											(Butyl) Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'IIR_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'BIIR_Intro')">
										<font class="title_item">溴化丁基橡膠</font><font size="3"
											class="title_item_en">BIIR</font><br>
										<font size="3" class="title_item_en">Bromobutyl Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'BIIR_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'CIIR_Intro')">
										<font class="title_item">氯化丁基橡膠</font><font size="3"
											class="title_item_en">CIIR</font><br>
										<font size="3" class="title_item_en">Chloroprene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'CIIR_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Synthetic col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'EPDM_Intro')">
										<font class="title_item">三元乙丙橡膠系列</font><font size="3"
											class="title_item_en">EPDM/EPR</font><br>
										<font size="3" class="title_item_en">Ethylene Propylene
											Diene Monomer</font>
									</h3>
									<a role="button" onclick="on(this,'EPDM_Con')"><font
										size="3"><i class="fa fa-globe"></i>Country Of Origin</font></a>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Natural col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Indonesia_STR')">
										<font class="title_item">印尼天然橡膠</font><font size="3"
											class="title_item_en">SIR</font><br>
										<font size="3" class="title_item_en">Standard Indonesia
											Rubber</font>
									</h3>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Natural col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Malaysia_SMR')">
										<font class="title_item">馬來西亞天然橡膠</font><font size="3"
											class="title_item_en">SＭR</font><br>
										<font size="3" class="title_item_en">Standard Malaysia
											Rubber</font>
									</h3>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Natural col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Thailand_STR')">
										<font class="title_item">泰國天然橡膠</font><font size="3"
											class="title_item_en">STR</font><br>
										<font size="3" class="title_item_en">Standard Thailand
											Rubber</font>
									</h3>

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Natural col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Vietnam_SVR')">
										<font class="title_item">越南天然橡膠</font><font size="3"
											class="title_item_en">SVR</font><br>
										<font size="3" class="title_item_en">Standard Vietnam
											Rubber</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->




					<div class="portfolio-item Reclaim col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Reclaim_Natural')">
										<font class="title_item">天然(外胎)再生橡膠</font><br>
										<font size="3" class="title_item_en">Natural Reclaim
											Rubber</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Reclaim col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Reclaim_Butyl')">
										<font class="title_item">丁基(內胎)再生橡膠</font><br>
										<font size="3" class="title_item_en">Butyl Reclaim
											Rubber</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Ther col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TPS')">
										<font class="title_item">苯乙烯系熱塑性彈性體</font><font size="3"
											class="title_item_en">TPS</font><br>
										<font size="3" class="title_item_en">Thermoplastic
											Styrene</font>
									</h3>

									<!--   <p role="button" onclick="on(this,'TPS_brands')"><font size="3" class="title_item_en">●產品類別/廠牌</font></p>-->

								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Ther col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TPO')">
										<font class="title_item">聚烯烴系熱塑性彈性體</font><font size="3"
											class="title_item_en">TPO</font><br>
										<font size="3" class="title_item_en">Thermoplastic
											Olefin</font>
									</h3>
									<!--     <p role="button" onclick="on(this,'TPO_brands')"><font size="3" class="title_item_en">●產品類別/廠牌</font></p>-->
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->


					<div class="portfolio-item Ther col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TPAE')">
										<font class="title_item">聚醯胺系塑性彈性體</font><font size="3"
											class="title_item_en">TPAE</font><br>
										<font size="3" class="title_item_en">Thermoplastic
											Polyamide</font>
									</h3>
									<!--<p role="button" onclick="on(this,'TPAE_brands')"><font size="3" class="title_item_en">●產品類別/廠牌</font></p>  -->
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Ther col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TPU')">
										<font class="title_item">聚氨酯類熱塑性彈性體</font><font size="3"
											class="title_item_en">TPU</font><br>
										<font size="3" class="title_item_en">Thermoplastic
											Polyurethane</font>
									</h3>
									<!--  <p role="button" onclick="on(this,'TPU_brands')"><font size="3" class="title_item_en">●產品類別/廠牌</font></p>-->
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Ther col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TPEE')">
										<font class="title_item">聚酯類熱塑性彈性體</font><font size="3"
											class="title_item_en">TPEE</font><br>
										<font size="3" class="title_item_en">Thermoplastic
											Copolyester</font>
									</h3>
									<!--    <p role="button" onclick="on(this,'TPS_brands')"><font size="3" class="title_item_en">●產品類別/廠牌</font></p>-->
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->



					<div class="portfolio-item Ther col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TPV')">
										<font class="title_item">動態加硫聚烯塑性彈性體</font><font size="3"
											class="title_item_en">TPV</font><br>
										<font size="3" class="title_item_en">Thermoplastic
											Vulcanizate</font>
									</h3>
									<!--       <p role="button" onclick="on(this,'TPV_brands')"><font size="3" class="title_item_en">●產品類別/廠牌</font></p>-->
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->






					<div class="portfolio-item Chemical col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Petroleum')">
										<font class="title_item">石油樹脂</font><br>
										<font size="3" class="title_item_en">Petroleum Resins</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Chemical col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Phenolic')">
										<font class="title_item">酚醛樹脂</font><br>
										<font size="3" class="title_item_en">Phenolic Resins</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Chemical col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Stearic')">
										<font class="title_item">硬脂酸</font><br>
										<font size="3" class="title_item_en">Stearic Acid</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Chemical col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Polyethylene')">
										<font class="title_item">聚乙二醇活性劑</font><br>
										<font size="3" class="title_item_en">Polyethylene
											Glycol</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->
					<div class="portfolio-item Chemical col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Antioxidant')">
										<font class="title_item">抗氧化劑</font><br>
										<font size="3" class="title_item_en">Antioxidant</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item Chemical col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'Carbon')">
										<font class="title_item">碳黑</font><br>
										<font size="3" class="title_item_en">Carbon Black</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->

					<div class="portfolio-item oil col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'DAE')">
										<font class="title_item">芳香基加工油</font><font size="3"
											class="title_item_en">DAE<br></font><font size="3"
											class="title_item_en">Distillate Aromatic Extract oil</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->


					<div class="portfolio-item oil col-xs-12 col-sm-4 col-md-3">
						<div class="recent-work-wrap">
							<div class="overlay">
								<div class="recent-work-inner">
									<h3 role="button" onclick="on(this,'TDAE')">
										<font class="title_item">環保型芳香基加工油</font><font size="3"
											class="title_item_en">TDAE</font><br>
										<font size="3" class="title_item_en">Treated Distillate
											Aromatic Extract oil</font>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--/.portfolio-item-->






				</div>
			</div>
		</div>






	</section>
	<!--/#portfolio-item-->


	<footer>
		<div class="footer">
			<div class="container">
				<div class="social-icon">
					<div class="col-md-4">
						<ul class="social-network">
							<li><a href="/products"><font size="4">中/EN</font></a></li>

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



	<div class="overlayproducts" id="overlay">

		<a role="button" id="close">&#10540;</a>
		<div id="text"></div>

	</div>

	<script>
		$(document).ready(function() {
			$("#close").click(function() {
				$("#overlay").fadeOut()
			});
		});

		$(document).on('keyup', function(evt) {
			if (evt.keyCode == 27) {
				$("#overlay").fadeOut();
			}
		});

		function on(elem, val) {
			$("#text").empty();

			$("#text").empty();
			switch (val) {
			case ("BR_Con"):
				$("#text")
						.append(
								"● BR<br><br>Eupope ( Eni Versalis, Lanxess )<br>India ( Reliance )<br>Iran ( TJPC, ARPC )<br>Japan ( Zeon, JSR, UBE )<br>Korea ( Kumho, LG )<br>Russia ( Togliatti, Nizhnekamsk )<br>Taiwan ( TSRC )<br>USA ( Goodyear )");
				break;
			case ("BR_Intro"):
				$("#text")
						.append(
								"● BR<br><br>Polybutadiene rubber is a synthetic rubber.<br> Polybutadiene rubber is a polymer formed from the polymerization of the monomer 1,3-butadiene.<br> Polybutadiene has a high resistance to wear and is used especially in the manufacture of tires, which consumes about 70% of the production.<br> Another 25% is used as an additive to improve the toughness (impact resistance) of plastics such as polystyrene and acrylonitrile butadiene styrene (ABS).<br>It is also used to manufacture golf balls, various elastic objects and to coat or encapsulate electronic assemblies, offering high electrical resistivity.");
				break;
			case ("ESBR_Con"):
				$("#text")
						.append(
								"● ESBR<br><br>India ( Reliance )<br>Iran ( TJPC )<br>Japan ( Zeon, JSR )<br>Korea ( Kumbo, LG )<br>Russia ( Togliatti, Sterlitamak )<br>Taiwan ( TSRC )<br>USA ( Goodyear )");
				break;
			case ("ESBR_Intro"):
				$("#text")
						.append(
								"● ESBR﹑SSBR<br><br>styrene-butadiene rubber (SBR) describe families of synthetic rubbers derived from styrene and butadiene.<br> These materials have good abrasion resistance and good ageing stability when protected by additives.<br> The styrene/butadiene ratio influences the properties of the polymer:  with high styrene content, the rubbers are harder and less rubbery.<br> It is widely used to manufacture tires, shoes, medical equipment, industrial goods.");
				break;
			case ("SSBR_Con"):
				$("#text")
						.append(
								"● SSBR<br><br>Eupope ( Lanxess )<br>Japan ( Zeon, Asahi, Sumitomo )<br>Korea ( Kumbo, LG )<br>Taiwan ( TSRC )<br>USA ( Goodyear )");
				break;
			case ("SSBR_Intro"):
				$("#text")
						.append(
								"● SSBR﹑ESBR<br><br>styrene-butadiene rubber (SBR) describe families of synthetic rubbers derived from styrene and butadiene.<br> These materials have good abrasion resistance and good ageing stability when protected by additives.<br> The styrene/butadiene ratio influences the properties of the polymer:  with high styrene content, the rubbers are harder and less rubbery.<br> It is widely used to manufacture tires, shoes, medical equipment, industrial goods.");
				break;
			case ("NBR_Con"):
				$("#text")
						.append(
								"● NBR<br><br>Eupope ( Lanxess )<br>Japan ( Zeon, JSR )<br>Korea ( Kumbo, LG )<br>Russia ( Togliatti )<br>Taiwan ( TSRC, Nantex )");
				break;
			case ("NBR_Intro"):
				$("#text")
						.append(
								"● NBR<br><br>It is used in the automotive and aeronautical industry to make fuel and oil handling hoses, seals, grommets, and self-sealing fuel tanks.<br> NBR's ability to withstand a range of temperatures from −40 to 108 °C (−40 to 226 °F) makes it an ideal material for aeronautical applications.<br> Nitrile butadiene is also used to create moulded goods, footwear, adhesives, sealants, sponges, expanded foams, and floor mats.");
				break;
			case ("EPDM_Con"):
				$("#text")
						.append(
								"● EPDM<br> <br>Eupope ( Lanxess )<br>Japan ( Mitsui, JSR, Sumitomo )<br>USA ( Dow, Exxon Mobil )");
				break;
			case ("EPDM_Intro"):
				$("#text")
						.append(
								"● EPDM<br> <br>EPDM is made from ethylene, propylene and a diene comonomer that enables crosslinking via sulphur vulcanisation systems. EPDM can be formulated to be resistant to temperatures as high as 150°C, and, properly formulated, can be used outside for many years or decades without degradation. EPDM has good low temperature properties, with elastic properties to temperatures as low as -40°C depending on the grade and the formulation.A common use is in vehicles, door seals, window seals, trunk seals, and sometimes hood seals.");
				break;
			case ("IR_Con"):
				$("#text")
						.append(
								"● IR<br> <br>Japan ( Zeon, JSR )<br>Russia ( Togliatti, Sterlitamak )<br>USA ( Goodyear )");
				break;
			case ("IR_Intro"):
				$("#text")
						.append(
								"● IR <br><br>Polyisoprene Rubber has similar structure and attribute to natural rubber.<br> Futhermore,the water resistance and electrical insulation of the rubber are better than natural rubber by far.<br> It is a substitute of natural rubber and it is manily used to manufacture tires, shoes, medical equipment.");
				break;
			case ("IIR_Con"):
				$("#text")
						.append(
								"● IIR <br><br>Eupope ( Lanxess )<br>Japan ( JSR )Russia ( Togliatti, Nizhnekamsk )<br>USA ( Exxon Mobil )");
				break;
			case ("IIR_Intro"):
				$("#text")
						.append(
								"● IIR<br><br>Butyl rubber (IIR) has extraordinary resistance from damaging by oxygen and ozone, and good chemical resistance to a large number of organic and inorganic media.<br> Due to the absence of double bonds in the backbone, IIR products can withstand prolonged exposure to heat and are usually stable in dilute acids and alkalis.<br> IIR has exceptional low gas and moisture permeability which makes it ideal for inner tubes and high pressure/vacuum applications under demanding conditions.");
				break;
			case ("BIIR_Con"):
				$("#text")
						.append(
								"● BIIR<br> <br>Eupope ( Lanxess )<br>Japan ( JSR )Russia ( Nizhnekamsk )<br>USA ( Exxon Mobil )");
				break;
			case ("BIIR_Intro"):
				$("#text").append("● BIIR <br><br>");
				break;
			case ("CIIR_Con"):
				$("#text")
						.append(
								"● CIIR <br><br>Eupope ( Lanxess )<br>Japan ( JSR )Russia ( Nizhnekamsk )<br>USA ( Exxon Mobil )");
				break;
			case ("CIIR_Intro"):
				$("#text").append("● CIIR <br>");
				break;

			case ("Indonesia_STR"):
				$("#text")
						.append(
								"● SIR：<br><br>Model number: SIR10、SIR20、SIR10VK, SIR20VK, RSS1, RSS3");
				break;
			case ("Malaysia_SMR"):
				$("#text")
						.append(
								"● SMR：<br><br>Model number: SMR5、SMR10、SMR20、SMR10CV、SMR10CV60, SMR20CV, SMRL Latex( High&Low Ammonia ), Skim Block, ADS-L, ADS-XL");
				break;
			case ("Thailand_STR"):
				$("#text")
						.append(
								"● STR：<br><br>Model number: STR5, STR10,  STR20, STR10CV, STR20CV, STRCV40, STRCV60, STRL, STR3L, RSS1 to 5 Latex( High&Low Ammonia ), Skim Block, ADS-L, ADS-XL ");
				break;
			case ("Vietnam_SVR"):
				$("#text")
						.append(
								"● SVR：<br><br>Model number: SVR5, SVR10, SVR10CV, SVR20, SVRCV50, SVRCV60, SVRL, SVR3L Latex( High Ammonia ), RSS1, RSS3, Skim Block");
				break;

			case ("Reclaim_Natural"):
				$("#text")
						.append(
								" ● Natural Reclaim Rubber <br><br>Country Of Origin<i class='fa fa-globe'></i>: India<br>Filter(Mesh): 40, 60<br>EU Reach Certified");
				break;
			case ("Reclaim_Butyl"):
				$("#text")
						.append(
								" ● Butyl Reclaim Rubber<br><br>Country Of Origin<i class='fa fa-globe'></i>: India<br>Filter(Mesh): 40, 60<br>Customised MV");
				break;

			case ("TPS"):
				$("#text")
						.append(
								" ● TPS<br><br>Category: SBS, SIS, SEBS, SEPT<br>Brands: Asahi, Kraton, TSRC Dexco, Eni Versalis, Nantex ");
				break;
			case ("TPO"):
				$("#text")
						.append(
								" ● TPO<br><br>Category: POE<br>Brands: Dow, LG, Mitsui");
				break;
			case ("TPV"):
				$("#text")
						.append(
								" ● TPV<br><br>Category: TPV<br>Brands: Exxon Mobil, Nantex");
				break;
			case ("TPU"):
				$("#text").append(
						" ● TPU<br><br>Category: Polyester & Polyether");
				break;
			case ("TPEE"):
				$("#text").append(
						" ● TPEE<br><br>Category: TPEE<br>Brands: Dupont");
				break;
			case ("TPAE"):
				$("#text").append(
						" ● TPAE<br><br>Category: TPAE<br>Brands: Dupont");
				break;

			case ("Petroleum"):
				$("#text")
						.append(
								" ● Petroleum Resins<br><br>YL Series: 140, 120, 120H, 90<br>SK Series: 150, 140, 130, 120H, 120I, 120, 100<br>GA Series: 130, 120, 115B, 115B(E), 100, 100B<br>GS Series: 90(T), 90");
				break;

			case ("Phenolic"):
				$("#text").append(
						" ● Phenolic Resins<br> <br>Model number: KC-7502K");
				break;

			case ("Stearic"):
				$("#text")
						.append(
								" ● Stearic Acid <br><br>Model number: 1801, 1806, 1810, 1840, 1850, 1865, 3018F, 4018F<br>Country Of Origin: Indonesia, Malaysia");
				break;

			case ("Polyethylene"):
				$("#text")
						.append(
								" ● Polyethylene Glycol <br><br>Model number: EOA PEG-4000<br>Country Of Origin: Korea");
				break;

			case ("Antioxidant"):
				$("#text")
						.append(
								" ● Antioxidant<br> <br>PPD Series: 6PPD, IPPD, 7PPD, 8PPD, 77PD, OPPD, EPPD( 6PPD+7PPD ), TMPPD, 44PD <br>RD Series: TMQ, S-TMQ");
				break;

			case ("Carbon"):
				$("#text")
						.append(
								" ● Carbon Black<br> <br>Model number: N115, N220, N234, N326, N330, N339, N351, N375, N539, N550, N660, N762, N774");
				break;

			case ("TDAE"):
				$("#text").append(" ● TDAE <br><br>Model number: TDAE");
				break;

			case ("DAE"):
				$("#text").append(
						" ● DAE <br><br>Model number: RPO-2025, RPO-2535");
				break;

			}

			$("#overlay").fadeIn();

		}
	</script>


	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.prettyPhoto.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.isotope.min.js' />"></script>
	<script src="<c:url value='/resources/js/wow.min.js' />"></script>
	<script src="<c:url value='/resources/js/functions.js' />"></script>

</body>

</html>
