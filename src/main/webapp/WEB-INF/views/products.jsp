<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-Hant">

<head>
<meta charset="utf-8">
<meta name="google-site-verification"
	content="IrGEdLO5cB-NnTfnOSRkZ7aDh2hLkEUzTYBZ8cxt8EA" />
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
	overflow-y: scroll;
	overscroll-behavior: contain;
}

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

/*Mobile Protrait */
@media screen and (max-device-width: 640px) and (orientation: portrait)
	{
	#text {
		position: absolute;
		top: 57%;
		left: 50%;
		font-size: 18px;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 18px/40px Georgia, serif;
		height: 430px;
		width: 95%;
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
		height: 180px;
		width: 99%;
	}
	#close {
		position: absolute;
		top: 30%;
		left: 5%;
		font-size: 25px;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		margin: 20px;
	}
}

/* #### Tablets Portrait or Landscape #### */
@media screen and (min-device-width: 768px) and (max-device-width:
	1024px) {
	#text {
		position: absolute;
		top: 45%;
		left: 50%;
		color: white;
		transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		font: bold 16px/40px Georgia, serif;
		height: 180px;
		width: 90%;
	}
	#close {
		position: absolute;
		top: 30%;
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
							<li role="presentation"><a href="/" class="navbar-text"><font
									size="4">首頁</font></a></li>
							<li class="active" role="presentation"><a
								class="active navbar-text" href="/products"><font size="4">產品介紹</font></a></li>
							<li role="presentation"><a href="/contact"
								class="navbar-text"><font size="4">聯絡我們</font></a></li>
							<li role="presentation"><a href="/products/en"
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
				<li><a href="/">首頁</a></li>
				<li>產品介紹</li>
			</div>
		</div>
	</div>





	<section id="portfolio">
		<div class="container">
			<div class="center">
				<p>歡迎致電或郵寄詢問個別 廠牌名稱，規格表，成分簡介。</p>


			</div>



			<ul class="portfolio-filter text-center">
				<li><a class="btn btn-default active" href="#" data-filter="*">所有產品</a></li>
				<li><a class="btn btn-default" href="#"
					data-filter=".Synthetic">合成橡膠系列</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Natural">天然橡膠系列</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Reclaim">再生橡膠系列</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Ther">熱塑性彈性體</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".Chemical">化工助劑</a></li>
				<li><a class="btn btn-default" href="#" data-filter=".oil">橡膠軟化油</a></li>
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
											class="title_item_en" size="3">BR</font><br> <font
											class="title_item_en" size="3">Polybutadiene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'BR_Con')"><font size="3"><i
											class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">ESBR</font></font><br> <font size="3"
											class="title_item_en">Emulsion Styrene-Butadiene
											Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'ESBR_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en" size="3">SSBR</font><br> <font
											size="3" class="title_item_en">Solution
											Styrene-Butadiene Rubber</font>
									</h3>
									<a></a> <a role="button" onclick="on(this,'SSBR_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">NBR</font><br> <font size="3"
											class="title_item_en">Acrylonitrile Butadiene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'NBR_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">IR</font><br> <font size="3"
											class="title_item_en">Polyisoprene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'IR_Con')"><font size="3"><i
											class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">IIR</font><br> <font size="3"
											class="title_item_en">Isobutylene-Isoprene (Butyl)
											Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'IIR_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">BIIR</font><br> <font size="3"
											class="title_item_en">Bromobutyl Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'BIIR_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">CIIR</font><br> <font size="3"
											class="title_item_en">Chloroprene Rubber</font>
									</h3>
									<a role="button" onclick="on(this,'CIIR_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>

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
											class="title_item_en">EPDM/EPR</font><br> <font size="3"
											class="title_item_en">Ethylene Propylene Diene Monomer</font>
									</h3>
									<a role="button" onclick="on(this,'EPDM_Con')"><font
										size="3"><i class="fa fa-globe"></i>生產國別</font></a>
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
											class="title_item_en">SIR</font><br> <font size="3"
											class="title_item_en">Standard Indonesia Rubber</font>
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
											class="title_item_en">SＭR</font><br> <font size="3"
											class="title_item_en">Standard Malaysia Rubber</font>
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
											class="title_item_en">STR</font><br> <font size="3"
											class="title_item_en">Standard Thailand Rubber</font>
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
											class="title_item_en">SVR</font><br> <font size="3"
											class="title_item_en">Standard Vietnam Rubber</font>
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
										<font class="title_item">天然(外胎)再生橡膠</font><br> <font
											size="3" class="title_item_en">Natural Reclaim Rubber</font>
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
										<font class="title_item">丁基(內胎)再生橡膠</font><br> <font
											size="3" class="title_item_en">Butyl Reclaim Rubber</font>
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
											class="title_item_en">TPS</font><br> <font size="3"
											class="title_item_en">Thermoplastic Styrene</font>
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
											class="title_item_en">TPO</font><br> <font size="3"
											class="title_item_en">Thermoplastic Olefin</font>
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
											class="title_item_en">TPAE</font><br> <font size="3"
											class="title_item_en">Thermoplastic Polyamide</font>
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
											class="title_item_en">TPU</font><br> <font size="3"
											class="title_item_en">Thermoplastic Polyurethane</font>
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
											class="title_item_en">TPEE</font><br> <font size="3"
											class="title_item_en">Thermoplastic Copolyester</font>
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
											class="title_item_en">TPV</font><br> <font size="3"
											class="title_item_en">Thermoplastic Vulcanizate</font>
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
										<font class="title_item">石油樹脂</font><br> <font size="3"
											class="title_item_en">Petroleum Resins</font>
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
										<font class="title_item">酚醛樹脂</font><br> <font size="3"
											class="title_item_en">Phenolic Resins</font>
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
										<font class="title_item">硬脂酸</font><br> <font size="3"
											class="title_item_en">Stearic Acid</font>
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
										<font class="title_item">聚乙二醇活性劑</font><br> <font
											size="3" class="title_item_en">Polyethylene Glycol</font>
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
										<font class="title_item">抗氧化劑</font><br> <font size="3"
											class="title_item_en">Antioxidant</font>
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
										<font class="title_item">碳黑</font><br> <font size="3"
											class="title_item_en">Carbon Black</font>
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
											class="title_item_en">TDAE</font><br> <font size="3"
											class="title_item_en">Treated Distillate Aromatic
											Extract oil</font>
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
							<li><a href="/products/en"><font size="4">中/EN</font></a></li>

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



	<p class="overlayproducts" id="overlay">

		<a role="button" id="close">&#10540;</a> <a id="text"></a>

	</p>

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
								"● 順丁橡膠系列BR<br><br>Eupope ( Eni Versalis, Lanxess )<br>India ( Reliance )<br>Iran ( TJPC, ARPC )<br>Japan ( Zeon, JSR, UBE )<br>Korea ( Kumho, LG )<br>Russia ( Togliatti, Nizhnekamsk )<br>Taiwan ( TSRC )<br>USA ( Goodyear )");
				break;
			case ("BR_Intro"):
				$("#text")
						.append(
								"● 順丁橡膠系列BR<br><br>相較於天然橡膠與丁苯橡膠，硫化後的順丁橡膠耐寒性與耐磨性更加優異，耐老化性與彈性亦可，可與天然橡膠、氯丁橡膠或丁晴橡膠並用。<br>順丁橡膠用於輪胎與耐寒製品，亦可製造緩衝材料以及各類膠鞋、膠布、膠帶等。充油順丁橡膠更可改善加工性能與冷流傾向。");
				break;
			case ("ESBR_Con"):
				$("#text")
						.append(
								"● 乳聚丁苯橡膠系列ESBR<br><br>India ( Reliance )<br>Iran ( TJPC )<br>Japan ( Zeon, JSR )<br>Korea ( Kumbo, LG )<br>Russia ( Togliatti, Sterlitamak )<br>Taiwan ( TSRC )<br>USA ( Goodyear )");
				break;
			case ("ESBR_Intro"):
				$("#text")
						.append(
								"● 丁苯橡膠系列ESBR﹑丁苯橡膠系列SSBR<br><br>其物理性能、加工性能及製品使用性能接近於天然橡膠，特性為耐磨、耐熱、耐老化及硫化速度較天然橡膠更為優良，可與天然橡膠與多種合成橡膠並用。<br>廣泛用於輪胎、膠帶、膠管、電線電纜、醫療器具及各種橡膠製品的生產等領域");
				break;
			case ("SSBR_Con"):
				$("#text")
						.append(
								"● 溶聚丁苯橡膠系列SSBR<br><br>Eupope ( Lanxess )<br>Japan ( Zeon, Asahi, Sumitomo )<br>Korea ( Kumbo, LG )<br>Taiwan ( TSRC )<br>USA ( Goodyear )");
				break;
			case ("SSBR_Intro"):
				$("#text")
						.append(
								"● 丁苯橡膠系列SSBR﹑丁苯橡膠系列ESBR<br><br>其物理性能、加工性能及製品使用性能接近於天然橡膠，特性為耐磨、耐熱、耐老化及硫化速度較天然橡膠更為優良，可與天然橡膠與多種合成橡膠並用。<br>廣泛用於輪胎、膠帶、膠管、電線電纜、醫療器具及各種橡膠製品的生產等領域");
				break;
			case ("NBR_Con"):
				$("#text")
						.append(
								"● 丁晴橡膠NBR<br><br>Eupope ( Lanxess )<br>Japan ( Zeon, JSR )<br>Korea ( Kumbo, LG )<br>Russia ( Togliatti )<br>Taiwan ( TSRC, Nantex )");
				break;
			case ("NBR_Intro"):
				$("#text")
						.append(
								"● 丁晴橡膠NBR<br><br>由丁二烯與丙烯晴製得，耐油性佳、耐磨性高、黏接力強，尚具有良好耐水性、氣密性。<br>廣泛應用於各種內油橡膠製品，多種耐油墊圈、墊片、套管、軟包裝、軟膠管、電纜膠材料等等，在汽車、航空、石油、複印等行業為不可少的彈性材料。");
				break;
			case ("EPDM_Con"):
				$("#text")
						.append(
								"● 三元乙丙橡膠EPDM<br> <br>Eupope ( Lanxess )<br>Japan ( Mitsui, JSR, Sumitomo )<br>USA ( Dow, Exxon Mobil )");
				break;
			case ("EPDM_Intro"):
				$("#text")
						.append(
								"● 三元乙丙橡膠EPDM<br> <br>是乙烯、丙烯及及非共軛二烯的三元共聚物，其特性有優越的耐氧化、抗臭氧與抗侵蝕的能力及良好的硫化特性。於所有橡膠中，具有最低比重，能吸收大量填料與油。是一種飽和高聚物，耐老化性能良好、耐天候幸好、電絕緣性能優良、耐化學腐蝕性好。<br>主要應用於要求耐老化、耐水、耐腐蝕、電氣絕緣幾個領域，如用於輪胎淺色胎側、耐熱運輸帶、電纜、電線、密封墊圈、建築防水材、門窗密封條、家用電器配件、塑料改性等。");
				break;
			case ("IR_Con"):
				$("#text")
						.append(
								"● 異戊二烯橡膠IR<br> <br>Japan ( Zeon, JSR )<br>Russia ( Togliatti, Sterlitamak )<br>USA ( Goodyear )");
				break;
			case ("IR_Intro"):
				$("#text")
						.append(
								"● 異戊二烯橡膠IR <br><br>結構與性能最接近天然橡膠，耐水性與電絕緣性超過天然橡膠，主要用於輪胎生產，除航空與重型機具外，皆可代替天然橡膠。<br>具有良好物理性質和無污物，色澤透明，著色鮮明的特性，故其大部分使用於鞋材、醫療器材、奶嘴等用途，一般來說，IR與天然橡膠有相同之應用範圍。");
				break;
			case ("IIR_Con"):
				$("#text")
						.append(
								"● 丁基橡膠IIR <br><br>Eupope ( Lanxess )<br>Japan ( JSR )<br>Russia ( Togliatti, Nizhnekamsk )<br>USA ( Exxon Mobil )");
				break;
			case ("IIR_Intro"):
				$("#text")
						.append(
								"● 丁基橡膠IIR<br> <br>為異丁烯與異戊二烯聚合而成，對氣體透氣性小，對熱、日光與臭氧抵抗力大，電絕緣橡佳。<br>廣泛應用於內胎、水底電纜、密封襯墊、汽車零件等用途。");
				break;
			case ("BIIR_Con"):
				$("#text")
						.append(
								"● 溴化丁基橡膠BIIR<br> <br>Eupope ( Lanxess )<br>Japan ( JSR )<br>Russia ( Nizhnekamsk )<br>USA ( Exxon Mobil )");
				break;
			case ("BIIR_Intro"):
				$("#text")
						.append(
								"● 溴化丁基橡膠BIIR <br><br>溴化丁基橡膠除保持丁基橡膠原有的低透氣性、高衰減性、耐老化性、抗臭氧性及耐化學藥品性之外，還具有硫化速度快、有較好的耐熱性能等。<br>溴化丁基橡膠除了是製造無內胎輪胎不可或缺的原料外，亦為醫療橡膠製品的必須原料，硫化後亦可做為高溫傳送帶的必要原料。");
				break;
			case ("CIIR_Con"):
				$("#text")
						.append(
								"● 溴化丁基橡膠CIIR <br><br>Eupope ( Lanxess )<br>Japan ( JSR )<br>Russia ( Nizhnekamsk )<br>USA ( Exxon Mobil )");
				break;
			case ("CIIR_Intro"):
				$("#text").append("● 溴化丁基橡膠CIIR <br>");
				break;

			case ("Indonesia_STR"):
				$("#text")
						.append(
								"● 印尼標準天然橡膠(SIR)：<br><br>包含SIR10、SIR20、SIR10VK, SIR20VK, RSS1, RSS3");
				break;
			case ("Malaysia_SMR"):
				$("#text")
						.append(
								"● 馬來西亞標準天然橡膠(SMR)：<br><br>包含SMR5、SMR10、SMR20、SMR10CV、SMR10CV60, SMR20CV, <br>SMRL Latex( High&Low Ammonia ), Skim Block, ADS-L, ADS-XL");
				break;
			case ("Thailand_STR"):
				$("#text")
						.append(
								"● 泰國標準天然橡膠(STR)：<br><br>包含STR5, STR10,  STR20, STR10CV, STR20CV, STRCV40, STRCV60, STRL, STR3L, <br>RSS1 to 5 Latex( High&Low Ammonia ), Skim Block, ADS-L, ADS-XL ");
				break;
			case ("Vietnam_SVR"):
				$("#text")
						.append(
								"● 越南標準天然橡膠(SVR)：<br><br>包含SVR5, SVR10, SVR10CV, SVR20, SVRCV50, SVRCV60, <br>SVRL, SVR3L Latex( High Ammonia ), RSS1, RSS3, Skim Block");
				break;

			case ("Reclaim_Natural"):
				$("#text")
						.append(
								" ● 天然(外胎)再生橡膠 <br><br>原產地<i class='fa fa-globe'></i>:India<br>過濾網(目):40, 60<br>通過歐盟環保認證");
				break;
			case ("Reclaim_Butyl"):
				$("#text")
						.append(
								" ● 丁基(內胎)再生橡膠 <br><br>原產地<i class='fa fa-globe'></i>:India<br>過濾網(目):40, 60<br>可客製化MV");
				break;

			case ("TPS"):
				$("#text")
						.append(
								" ● 苯乙烯系熱塑性彈性體TPS<br><br>產品類別:SBS, SIS, SEBS, SEPT<br>廠牌:Asahi, Kraton, TSRC Dexco, Eni Versalis, Nantex ");
				break;
			case ("TPO"):
				$("#text")
						.append(
								" ● 聚烯烴系熱塑性彈性體TPO<br><br>產品類別:POE<br>廠牌:Dow, LG, Mitsui");
				break;
			case ("TPV"):
				$("#text")
						.append(
								" ● 動態加硫聚烯塑性彈性體TPV<br><br>產品類別:TPV<br>廠牌:Exxon Mobil, Nantex");
				break;
			case ("TPU"):
				$("#text").append(
						" ● 聚氨酯類熱塑性彈性體TPU<br><br>產品類別:Polyester & Polyether");
				break;
			case ("TPEE"):
				$("#text").append(
						" ● 聚酯類熱塑性彈性體TPEE<br><br>產品類別:TPEE<br>廠牌:Dupont");
				break;
			case ("TPAE"):
				$("#text").append(
						" ● 聚醯胺系塑性彈性體TPAE<br><br>產品類別:TPAE<br>廠牌:Dupont");
				break;

			case ("Petroleum"):
				$("#text")
						.append(
								" ● 石油樹脂 <br><br>YL系列:140, 120, 120H, 90<br>SK系列:150, 140, 130, 120H, 120I, 120, 100<br>GA系列:130, 120, 115B, 115B(E), 100, 100B<br>GS系列:90(T), 90");
				break;

			case ("Phenolic"):
				$("#text").append(" ● 酚醛樹脂<br> <br>產品編號:KC-7502K");
				break;

			case ("Stearic"):
				$("#text")
						.append(
								" ● 硬脂酸 <br><br>產品編號:1801, 1806, 1810, 1840, 1850, 1865, 3018F, 4018F<br>產地:Indonesia, Malaysia");
				break;

			case ("Polyethylene"):
				$("#text").append(
						" ● 聚乙二醇活性劑 <br><br>產品編號:EOA PEG-4000<br>產地:Korea");
				break;

			case ("Antioxidant"):
				$("#text")
						.append(
								" ● 抗氧化劑<br> <br>PPD系列:6PPD, IPPD, 7PPD, 8PPD, 77PD, OPPD, EPPD( 6PPD+7PPD ), TMPPD, 44PD <br>RD系列:TMQ, S-TMQ");
				break;

			case ("Carbon"):
				$("#text")
						.append(
								" ● 碳黑<br> <br>N115, N220, N234, N326, N330, N339, N351, N375, N539, N550, N660, N762, N774");
				break;

			case ("TDAE"):
				$("#text").append(" ● 環保型芳香基加工油TDAE <br><br>產品編號:TDAE");
				break;

			case ("DAE"):
				$("#text").append(
						" ● 芳香基加工油DAE <br><br>產品編號:RPO-2025, RPO-2535");
				break;

			case ("button"):
				$("#text").append(" <font color='red'>點擊產品可檢視詳細內容。</font>");
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
