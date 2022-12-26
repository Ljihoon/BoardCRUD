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
  <script>
   function delete_board() {
	   if(confirm('삭제하시겠습니까?')){
		   $("form").submit();
	   }
	}
  </script>
</head>
<body>
    <div id="wrap"> 
        <header class="header">
			<jsp:include page="/include/Calories_header.jsp"/>
            <!-- 1. Header -->
            <div class="main_top cf">
                <ul>
                    <li>
                        <a href="#"><img src="./images/review_board/path_home.png" alt="home_icon"></a>
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
        <section class="main_board cf">
            <!-- action : 글 삭제 -->
                <table class="main_table">
                    <tr>
                        <th>제목</th>
                        <td>${board.title }</td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>${board.writer }</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ul>
                                <li>
                                    <strong>평점</strong>
                                    <img src="./images/review_board/ico_point5.jpg" alt="point5_icon">
                                </li>
                                <li>
                                    <strong>작성일</strong>
                                    <span class="txtNum">${board.regdate }</span>
                                </li>
                                <li>
                                    <strong>조회수</strong>
                                    <span class="txtNum">${board.seq }</span>
                                </li>
                            </ul>
                            <div class="detail">
                                <div class="view_article">${board.content }</div>
                            </div>
                        </td>
                    </tr>
                </table>
        </section>
        <!-- 2. Content -->
        <section class="pw_content">
          	<form method="post" action="DeleteReviewBoard.do" name="delete_form">
	            <table class="enter_pw">
		                <tr>
		                    <th>비밀번호</th>
		                    <td>
		                        <ul class="cf">
		                            <li>
		                                <input type="password" name="password" required>
		                            </li>
		                            <li>
		                                <img src="./images/review_board/ico_info.jpg" alt="mark">
		                            </li>
		                            <li>
		                                <p>삭제하려면 비밀번호를 입력하세요.</p>
		                            </li>
		                        </ul>
		                    </td>
		                </tr>
	            </table>
		        <div class="send_board cf">
		        	<input type="hidden" name="pass" value="${board.password }">
		        	<input type="hidden" name="seq" value="${board.seq }">
		            <input type="button" onclick="location.href='ReviewBoardList.do'" value="목록">
		            <input type="button" onclick="location.href='GetReviewBoard.do?seq=${board.seq}'" value="수정">
		            <!-- # : 글 삭제 -->
		            <input type="button" value ="삭제" onclick="delete_board();">
		        </div>
           	</form>
        </section>
        <!-- /2. Content -->
        <!-- 3. Footer -->
        <div class="view_footer">
            <footer class="footer cf">
                <h2>회원에게만 댓글 작성 권한이 있습니다.</h2>
            </footer>
        </div>
        <!-- /3. Footer  -->
		<footer class="F_include">
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
        <!-- /4.Footer -->
    </div>
</body>
<script src="./js/Calories_header.footer.js"></script>
<script src="./js/slide.js"></script>
</html>