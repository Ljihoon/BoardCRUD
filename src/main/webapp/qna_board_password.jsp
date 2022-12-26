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
		<main role="main" class="w1260">
			<div id="qna">
	            <div class="top_sub cf">
	                <ul>
	                    <li>
	                        <!-- # : main home -->
	                        <a href="#"><img src="./images/home.jpg" alt="home"></a>
	                    </li>
	                    <li>
	                        <img src="./images/v.jpg" alt="v"><strong>문의게시판</strong>
	                    </li>
	                </ul>
	            </div>
	            <div class="top_title cf">
	                <ul>
	                    <li>
	                        <img src="./images/title_bar.jpg" alt="title_bar">
	                    </li>
	                    <li>
	                        <h2>문의게시판</h2>
	                    </li>
	                    <li>
	                        <p>상품 Q&A입니다.</p>
	                    </li>
	                </ul>
	            </div>
	        </div>
	        <div id="qna_password">
	            <!-- action : 특정 글 보기 -->
	            <form action="QnaBoardOne.do" method="post">
	                <div class="secret">
	                    <h2>글 삭제</h2>
	                    <h3>
	                        이 글은 비밀글입니다. <span>비밀번호를 입력하여 주세요.</span><br>
	                        관리자는 확인버트만 누르시면 됩니다.
	                    </h3>
	                    <ul class="cf">
	                        <li>
	                            비밀번호
	                        </li>
	                        <li>
	                            <input type="password" name="password">
	                        </li>
	                    </ul>
	                    <div class="password_btn cf">
	                    	<input type="hidden" name="seq" value="${param.seq }">
	                        <input type="button" onclick="location.href='QnaBoardList.do'" value="목록">
	                        <input type="submit" value="확인">
	                    </div>
	                </div>
	            </form>
	        </div>
		</main>
		<footer>
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
	</div>
</body>
<script src="./js/Calories_header.footer.js"></script>
</html>