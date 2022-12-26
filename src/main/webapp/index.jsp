<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- 메타검색 -->
   <meta name="author" content="kmh">
   <meta name="description" content="Portfolio, Float, Montblanc Templage">
   <title>칼로리를 부탁해</title>
   <!-- 폰트어썸 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <!-- 파비콘 -->
   <!-- 리셋, 폰트 CSS -->
   <link rel="stylesheet" href="./css/reset.css">
   <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
   <!-- 페이지CSS -->
   <link rel="stylesheet" href="./css/Calories_header.footer.css">
   <link rel="stylesheet" href="./css/pordect_purchase.css">
   <link rel="stylesheet" href="./css/kalori_main.css">
   <!-- JS 플러그인 파일 -->
   <script src="./js/jquery-1.12.4.min.js"></script>
   <script src="./js/jquery-3.3.1.min.js"></script>
   <script src="./js/prefixfree.min.js"></script>
   <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
   <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
   <script src="./js/jquery.bxslider.js"></script>
   <!-- 부트스트렙 -->
  <style>
  	header .gnb_main .button>ul>li:nth-child(2){
	  height: 460px;
	}
  </style>
</head>
<body>
    <div id="wrap"> 
    	<header>
			<jsp:include page="/include/Calories_header.jsp"/>
		</header>
        <!-- 2.Slider -->
        <article>
            <div class="slider">
                <ul class="bg_slider">
                    <li id="li1"><a href="#"><img src="./images/main_images/slide_bg1.jpg" alt="배경슬라이드이미지1" id="bg1"></a></li>
                    <li id="li2"><a href="#"><img src="./images/main_images/slide_bg2.jpg" alt="배경슬라이드이미지2" id="bg2"></a></li>
                </ul>
            </div>
            <ul class="slider_btn w1260 cf">
                <li>칼로리를 부탁해</li>
                <li>Since 2016</li>
            </ul>
        </article>

        <!-- /2.Slider -->

        <!-- 3.Contents -->
        <main role="main">
            <!-- Section_01 -->
            <section class="md_pick w1260 cf">
                <div class="md_pick_left">
                    <ul>
                        <li><iframe width="560" height="315" src="https://www.youtube.com/embed/TrYaA2OL2Tk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe></li>
                        <li><img src="./images/item_images/mdpick_img1.jpg" alt="엠디픽이미지1"></li>
                    </ul>
                </div>
                <div class="md_pick_right">
                    <ul class="md_pick_area">
                        <li><img src="./images/item_images/mdpick_slide1.jpg" alt="엠디픽슬라이드이미지1"></li>
                        <li><img src="./images/item_images/mdpick_slide2.jpg" alt="엠디픽슬라이드이미지2"></li>
                    </ul>
                </div>
            </section>
            <!-- /Section_01 -->
            <!-- Section_02 -->
            <section class="caxa w1260">
                <h2>
                    <span>SHOP 추천상품</span><br>
                    <b>RECOMMEND ITEMS</b>
                </h2>
			</section>
   			<div id="contents" >
				<div class="prodect_main cf">
	             	<!-- 제품 1번 -->
					<jsp:include page="/include/Shop/prodect01.jsp"/>	
		             <!-- 제품 2번 -->
					<jsp:include page="/include/Shop/prodect02.jsp"/>	
				</div>
			</div>
			<div class="pline"></div>
        </main>
        <!-- /3.Contents -->
        <!-- 4.Footer -->
        <footer>
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
        <!-- /4.Footer -->
    </div>
</body>
<script src="./js/Calories_header.footer.js"></script>
<script src="./js/slide.js"></script>
</html>