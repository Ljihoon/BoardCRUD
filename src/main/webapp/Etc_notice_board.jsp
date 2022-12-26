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
    <link rel="stylesheet" href="./css/qna_board.css">  
    <link rel="stylesheet" href="./css/notice.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <script src="./js/prefixfree.min.js"></script>  <!-- 접두어 자동완성 -->
    <!-- 페이지 JS -->
    <style>
    	footer{
    		margin-top: 50px;
    	}
    </style>
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="/include/Calories_header.jsp"/>
		</header>
		<main role="main" class="w1260">
			<section class="container w1260">
		        <section class="title">
		          <article>
		            <ul>
		              <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a></li>
		              <li><a href="#">게시판</a></li>
		              <li><a href="#">공지사항</a></li>
		            </ul>
		          </article>
		          <article class="titleArea">
		            <p><span>공지사항</span>&nbsp;&nbsp;|&nbsp; 공지사항 입니다.</p>
		          </article>
		        </section>
		        <section class="container_table">
		          <table class="table_info">
		            <tr>
		              <th style="width:130px;">제목</th>
		              <td style="width:1130px;">2022.01 카드사별 무이자 안내</td>
		            </tr>
		            <tr>
		              <th>작성자</th>
		              <td>매니저</td>
		            </tr>
		            <tr class="contents">
		              <td colspan="2">
		                <ul>
		                  <li>작성일&nbsp;2022-12-07</li>
		                  <li>조회수&nbsp;22</li>
		                </ul>
		                <img src="./images/web202201.jpg" alt="카드할인">
		              </td>
		            </tr>
		          </table>
		          <div class="list_btn">
		            <button>목록</button>
		          </div>
		          <div class="next_btn">
		            <ul>
		              <li><span>이전글 </span><a href="#">이전글 제목</a></li>
		              <li><span>다음글 </span><a href="#">다음글 제목</a></li>
		            </ul>
		          </div>
		        </section>
		      </section>
		</main>
		<footer>
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
	</div>
</body>
<script src="./js/Calories_header.footer.js?ver=1.1"></script>
</html>