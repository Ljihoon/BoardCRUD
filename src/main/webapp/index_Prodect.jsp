<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>제품구매</title>
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 웹페이지 타이틀 로고 넣기 (PNG 파일로 해야함.) -->
    
    <!-- 웹페이지 저장시 아이콘 생성 코드 (PNG 파일로 해야함.) -->
    
    <!--부트 스트랩-->
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <!-- 리셋 -->
    <link rel="stylesheet" href="./css/reset.css">
    <!-- 폰트 적용 -->
    <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
    <!-- 페이지 CSS -->
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/Calories_header.footer.css">
    <link rel="stylesheet" href="./css/pordect_purchase.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>  <!-- 접두어 자동완성 -->
    <!-- 페이지 JS -->
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="/include/Calories_header.jsp"/>
		</header>
		<main role="main">
			 <div id="container">
    			 <div id="contents">
			         <!-- 제품 구매하기 상단 -->
			         <div class="prodect_top cf">
			             <div class="prodect_home">
			                 <ol>
			                     <li><img src="./images/path_home.png" alt="홈"></li>
			                     <li><img src="./images/ico_path.gif" alt="화살표"></li>
			                     <li><a href="#" style="text-decoration:none">제품 구매하기</a></li>
			                 </ol>
			             </div>
			             <div class="prodect_header">
			                 <h2>
			                     <img src="./images/ico_heading.gif" alt="0">
			                     <span>제품 구매하기</span>
			                 </h2>
			             </div>
			             <div class="line"></div>
			             <ul>
			                 <li><a href="index_Prodect.jsp?num=1&items=3" style="text-decoration:none">칼로리를 부탁해</a></li>
			                 <li><a href="index_Prodect.jsp?num=2&items=3" style="text-decoration:none">액티브 L-카르니틴</a></li>
			                 <li><a href="index_Prodect.jsp?num=3&items=0" style="text-decoration:none">액티브 비오틴</a></li>
			             </ul>
		         	</div>
				         <!-- /제품 구매하기 상단 -->
				         <!-- 제품 카테고리 메뉴 -->
			        <div class="prodect_main cf">
		           		<div class="prodect_list">
			                 <p class="items">
			                 	<c:if test="${empty param.items}">
			                     <strong>6</strong> 	
			                 	</c:if>
			                 	<c:if test="${not empty param.items }">
			                     <strong>${param.items }</strong> 	
			                 	</c:if>
			                     ITEMS
			                 </p>
			                 <ul>
			                     <li><a href="#" style="text-decoration:none">사용후기</a></li>
			                     <li><a href="#" style="text-decoration:none">제조사</a></li>
			                     <li><a href="#" style="text-decoration:none">높은가격</a></li>
			                     <li><a href="#" style="text-decoration:none">낮은가격</a></li>
			                     <li><a href="#" style="text-decoration:none">상품명</a></li>
			                     <li><a href="#" style="text-decoration:none">신상품</a></li>
			                 </ul>
		             	</div>
			             <!-- /제품 카테고리 메뉴 -->
			             <c:if test="${empty param.num}">
				             <!-- 제품 1번 -->
							<jsp:include page="/include/Shop/prodect01.jsp"/>	
				             <!-- 제품 2번 -->
							<jsp:include page="/include/Shop/prodect02.jsp"/>	
			             </c:if>
			             <c:if test="${param.num == 1 }">
				             <!-- 제품 1번 -->
							<jsp:include page="/include/Shop/prodect01.jsp"/>	          
			             </c:if>
			             <c:if test="${param.num == 2 }">
				             <!-- 제품 2번 -->
							<jsp:include page="/include/Shop/prodect02.jsp"/>            
			             </c:if>
			             <c:if test="${param.num == 3 }">
				             <!-- 제품 3번 -->
				             <script>
				             	alert('해당 상품 없음. 전체목록으로 이동합니다.');
				             	location.href="index_Prodect.jsp";
				             </script>          
			             </c:if>
			             <!-- /제품 -->
				         <!-- 페이지 -->
				         <div class="page_number cf">
				             <a href="#" ><img src="./images/btn_page_first1.png" alt="첫번째 페이지"></a>
				             <a href="#"><img src="./images/btn_page_prev1.png" alt="이전"></a>
				             <ol>
				                 <li class="number"><a href="#">1</a></li>
				             </ol>
				             <a href="#"><img src="./images/btn_page_next1.png" alt="다음페이지"></a>
				             <a href="#"><img src="./images/btn_page_last1.png" alt="마지막페이지"></a>
				         </div>					      
					</div>					  
		     	</div>
			</div>			
		</main>
		<footer>
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
	</div>
</body>
<script src="./js/Calories_header.footer.js"></script>
</html>