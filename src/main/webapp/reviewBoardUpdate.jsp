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
        <!-- 2. Content -->
        <section class="write_review">
            <!-- action : 글 수정 -->
            <form action="UpdateReviewBoard.do" method="post">
                <table class="review_table">
                    <tr>
                        <th>제목</th>
                        <td>
                            <input type="text" name="title" value="${board.title }">
                        </td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>
                            ${board.writer }
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            ${board.email }
                        </td>
                    </tr>
                    <tr>
                        <th>평점</th>
                        <td>
                            <input id="point0" type="radio" name="point" value="5" checked="checked">
                            <label for="point0">
                                <span class="point5">
                                    <em>★★★★★</em>
                                </span>
                            </label>
                            <input id="point1" type="radio" name="point" value="4" checked="checked">
                            <label for="point1">
                                <span class="point4">
                                    <em>★★★★</em>
                                </span>
                            </label>
                            <input id="point2" type="radio" name="point" value="3" checked="checked">
                            <label for="point2">
                                <span class="point3">
                                    <em>★★★</em>
                                </span>
                            </label>
                            <input id="point3" type="radio" name="point" value="2" checked="checked">
                            <label for="point3">
                                <span class="point2">
                                    <em>★★</em>
                                </span>
                            </label>
                            <input id="point4" type="radio" name="point" value="1" checked="checked">
                            <label for="point4">
                                <span class="point1">
                                    <em>★</em>
                                </span>
                            </label> 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <textarea name="content" class="main_text">${board.content }</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>UCC URL</th>
                        <td>
                            <input type="text" name="uccurl" value="${board.ucc_url }">
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <input type="password" name="password">
                        </td>
                    </tr>
                    <tr>
                        <th>첨부파일1</th>
                        <td>
                            <button>파일 선택</button> 선택된 파일 없음
                        </td>
                    </tr>
                    <tr>
                        <th>개인정보 수집 및<br>이용 동의</th>
                        <td>
                            <textarea class="privacy" readonly> ■ 개인정보의 수집·이용 목적&#10;서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적&#10;■ 수집하려는 개인정보의 항목&#10;이름, 주소, 연락처, 이메일 등&#10;&#10;■ 개인정보의 보유 및 이용 기간&#10;회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.</textarea>
                            <br>
                            <div class="agreement cf">
                            	<c:if test="${board.agree =='agree' }">
	                                <span class="privacy_qna"> 개인정보 수집 및 이용에 동의하십니까?</span>
	                                <input id="privacy_agreement_radio0" name="privacy_agreement_radio" value="agree" type="radio" checked>
	                                <label for="privacy_agreement_radio0">동의함</label>
	                                <input id="privacy_agreement_radio1" name="privacy_agreement_radio" value="disagree" type="radio">
	                                <label for="privacy_agreement_radio1">동의안함</label>
                            	</c:if>
                            	<c:if test="${board.agree !='agree' }">
	                                <span class="privacy_qna"> 개인정보 수집 및 이용에 동의하십니까?</span>
	                                <input id="privacy_agreement_radio0" name="privacy_agreement_radio" value="agree" type="radio">
	                                <label for="privacy_agreement_radio0">동의함</label>
	                                <input id="privacy_agreement_radio1" name="privacy_agreement_radio" value="disagree" type="radio" checked="checked">
	                                <label for="privacy_agreement_radio1">동의안함</label>
                            	</c:if>
                            </div>
                        </td>
                    </tr>
                </table>
	        <div class="send_board cf">
	        	 <input type="hidden" name="pass" value="${board.password }">
	        	 <input type="hidden" name="seq" value="${board.seq }">
	            <input type="button" onclick="location.href='ReviewBoardList.do'" value="목록">
	            <input type="reset" value="취소">
	            <input type="submit" value="수정">
	        </div>
	       </form>
        </section>
        <!-- /2. Content -->
        <!-- 3. Footer -->
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