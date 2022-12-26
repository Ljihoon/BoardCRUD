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
   <link rel="stylesheet" href="./css/product_review.css">
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
        <header class="header">
			<jsp:include page="/include/Calories_header.jsp"/>
            <div class="main_top cf">
                <ul>
                    <li>
                        <a href="index.jsp"><img src="./images/review_board/path_home.png" alt="home_icon"></a>
                    </li>
                    <li>
                        <img src="./images/review_board/ico_path.jpg" alt="path_icon">게시판
                    </li>
                    <li>
                        <img src="./images/review_board/ico_path.jpg" alt="path_icon"><strong>사용후기</strong>
                    </li>
                </ul>
            </div>
            <div class="main_title cf">
                <ul>
                    <li><img src="./images/review_board/ico_heading.jpg" alt="heading_icon"></li>
                    <li>
                        <h2>상품후기</h2>
                    </li>
                    <li>
                        <p>상품 사용 후기입니다.</p>
                    </li>
                </ul>
            </div>
        </header>
        <!-- /1. Header -->
        <section class="rv_list">
                <table class="menu_table">
                    <tr>
                        <!-- 번호(100) / 상품정보(80~100) / 제목(700~800) / 작성자(100) / 작성일(80~100) / 조회(50~60) / 평점(100) -->
                        <hr>
                        <th width="80">번호</th>
                        <th width="80">상품정보</th>
                        <th width="715">제목</th>
                        <th width="100">작성자</th>
                        <th width="100">작성일</th>
                        <th width="60">조회</th>
                        <th width="100">평점</th>
                    </tr>
                </table>
        </section>
        <!-- 2. Content -->
        <section class="contents">
            <table class="content_table">
                <tr>
                    <td width="80">공지</td>
                    <td width="80"></td>
                    <td width="715">
                        <strong><a href="">포토리뷰 적립금 1000원, 글 리뷰 적립금 500원을 드려요!!</a></strong>
                        <img src="./images/review_board/icon_hit.jpg" alt="hit_icon">
                    </td>
                    <td width="100">마요네즈</td>
                    <td width="100"><span class="txtNum">2011-05-23 00:47:22</span></td>
                    <td width="60">2323</td>
                    <td width="100">
                        <img src="./images/review_board/ico_point0.jpg" alt="0point_icon">
                    </td>
                </tr>
                <c:forEach var="list" items="${rList }">
	                <tr>
	                    <td width="80">${list.seq }</td>
	                    <td width="80"></td>
	                    <td width="715">
	                        <strong><a href="ReviewBoardOne.do?seq=${list.seq }">${list.title }</a></strong>
	                        <img src="./images/review_board/icon_hit.jpg" alt="hit_icon">
	                    </td>
	                    <td width="100">${list.writer }</td>
	                    <td width="100"><span class="txtNum">${list.regdate }</span></td>
	                    <td width="60">${list.cnt }</td>
	                    <td width="100">
	                        <img src="./images/review_board/ico_point0.jpg" alt="0point_icon">
	                    </td>
	                </tr>
                </c:forEach>
            </table>
            <!-- DB 작업 예정 -->
        </section>
        <!-- /2. Content -->
        <!-- 3. Footer -->
        <footer class="footer cf">
            <input type="button" onclick="location.href='reviewBoardWrite.jsp'" value="글쓰기">
		</footer>
		<footer class="F_include">
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
        <!-- /4.Footer -->
    </div>
</body>
<script src="./js/Calories_header.footer.js"></script>
<script src="./js/slide.js"></script>
</html>