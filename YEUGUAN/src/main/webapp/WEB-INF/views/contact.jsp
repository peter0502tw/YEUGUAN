<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>YG昀冠實業有限公司</title>

  <!-- Bootstrap -->
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css" />">
  <link rel="stylesheet" href="<c:url value="/resources/css/animate.css" />" >
  <link href="<c:url value="/resources/css/prettyPhoto.css" />"  rel="stylesheet">
  <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
</head>

<body>
  <header>
  
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="navigation">
      <a href="/YEUGUAN/"><img align="left" style="margin-left: 1.5%; margin-top: 1%;" src="<c:url value='/resources/images/LOGO_YG.jpg' />"></a>
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>

          </div>

          <div class="navbar-collapse collapse">
           
              <ul class="nav navbar-nav navbar-right" role="tablist">
 				<li role="presentation"><a href="/YEUGUAN" class="navbar-text"><font size="4">首頁</font></a></li>
                <li  role="presentation"><a class="active navbar-text" href="/YEUGUAN/products"><font size="4">產品介紹</font></a></li>
                <li class="active" role="presentation"><a href="/YEUGUAN/contact" class="navbar-text"><font size="4">聯絡我們</font></a></li>
                 <li role="presentation"><a href="/YEUGUAN/contact/en" class="navbar-text"><font size="4">中/EN</font></a></li>
              </ul>
            </div>
          </div>
       
      </div>
    </nav>
  </header>

  <div id="breadcrumb">
    <div class="container">
      <div class="breadcrumb">
        <li><a href="/YEUGUAN/">首頁</a></li>
        <li>聯絡我們</li>
      </div>
    </div>
  </div>

 <div class="map">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3645.7951620125027!2d120.57246545045564!3d23.96768248628202!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346936ff51e31bd3%3A0xe83398505c530b0b!2sNo.+356%2C+Jianguo+Road%2C+Yuanlin+City%2C+Changhua+County%2C+Taiwan+510!5e0!3m2!1sen!2suk!4v1552464052230" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
    
  </div>

  <section id="contact-page">
    <div class="container">
    
    
    
      <div class="row">
        <h2>台灣總部</h2>
        
      </div>
      <div class="row contact-wrap">
<div>
             <p ><a href="tel:048347648" target="_top"><font size="4">台灣:04-8347648</font></a></p>
              <p><a href="tel:+88648347648" target="_top"><font size="4">非台灣地區:+886-48347648</font></a></p>
              <p><a><font size="4">郵遞區號:510</font></a></p>
              <p><a href="https://goo.gl/maps/SWppNKU3uot" target="_blank"><font size="4">地址:彰化縣員林市建國路356號</font></a></p>
             <p><a href="mailto:service@yeuguan.com.tw?Subject=詢問" target="_top"><font size="4">Email:service@yeuguan.com.tw</font></a></p>           
            </div>




      </div>
      
       <div class="row">
        <h2>中國辦事處</h2>
        
      </div>
      <div class="row contact-wrap">
<div>
             <p ><a href="tel:+88676922458980" target="_top"><font size="4">電話:+86-76922458980</font></a></p>
              <p><a href="tel:+88676922382979" target="_top"><font size="4">傳真:+86-76922382979</font></a></p>
              <p><a><font size="4">郵遞區號:523000</font></a></p>
              <p><a href="https://goo.gl/maps/oqs1HPaSDSH2" target="_blank"><font size="4">地址:廣東省東莞市南城區綠色路一號國際公館三期二十棟 1805號</font></a></p>
            </div>




      </div>     
      <!-- 
      <div id="Taiwan_head">
        <h2>台灣總部</h2>
      </div>
    <div>
             <p ><a href="tel:048347648" target="_top"><font size="4">台灣:04-8347648</font></a></p>
              <p><a href="tel:+88648347648" target="_top"><font size="4">國際:+88648347648</font></a></p>
              <p><a><font size="4">郵遞區號:510</font></a></p>
              <p><a><font size="4">地址:彰化縣員林市建國路356號</font></a></p>
             <p><a href="mailto:service@yeuguan.com.tw?Subject=詢問" target="_top"><font size="4">Email:service@yeuguan.com.tw</font></a></p>           
            </div>
            
           <div id="Chian_Branch">
     
        <h2>中國辦事處</h2>
    <div>
             <p ><a href="tel:+88676922458980" target="_top"><font size="4">電話:886-769-22458980</font></a></p>
              <p><a href="tel:+88676922382979" target="_top"><font size="4">傳真:886-769-22382979</font></a></p>
              <p><a><font size="4">郵遞區號:523000</font></a></p>
              <p><a><font size="4">地址:廣東省東莞市南城區綠色路一號國際公館三期二十棟 1805號</font></a></p>
            </div>
      
      
      
      
      
       -->
       
       
       
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>
  <!--/#contact-page-->

  <footer>
    <div class="footer">
      <div class="container">
        <div class="social-icon">
          <div class="col-md-4">
            <ul class="social-network">
              <li> <a  href="/YEUGUAN/contact/en"><font size="4">中/EN</font></a></li>
            </ul>
          </div>
        </div>

        <div class="col-md-4 col-md-offset-4">
          <div class="copyright">
            &copy; Company Theme. All Rights Reserved.
            
          </div>
        </div>
      </div>
      <div class="pull-right">
        <a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
      </div>
    </div>
  </footer>


  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src= "<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<c:url value='/resources/js/bootstrap.min.js' />"   ></script>
  <script src="<c:url value='/resources/js/jquery.prettyPhoto.js' />" ></script>
  <script src="<c:url value='/resources/js/jquery.isotope.min.js' />"  ></script>
  <script src="<c:url value='/resources/js/wow.min.js' />" ></script>
  <script src="<c:url value='/resources/js/functions.js' />" ></script>

</body>

</html>
