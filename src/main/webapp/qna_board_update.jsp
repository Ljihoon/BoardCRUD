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
        <div id="qna_write">
            <!-- action : 글 수정 -->
            <form action="UpdateQnaBoard.do" method="post">
                <table class="item_board">
                    <tr>
                        <th>제목</th>
                        <td>
                            ${board.subject }
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
                        <td colspan="2">
                            <textarea name="content">${board.content }</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <input type="password" name="password">
                        </td>
                    </tr>
                    <tr>
                        <th>개인정보 수집 및<br>이용 동의</th>
                        <td>
                            <textarea class="privacy" readonly>■ 개인정보의 수집·이용 목적&#10;서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적&#10;■ 수집하려는 개인정보의 항목&#10;이름, 주소, 연락처, 이메일 등&#10;&#10;■ 개인정보의 보유 및 이용 기간&#10;회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.</textarea>
                            <div class="agreement cf">
                                <ul>
                                    <li>
                                        <p>개인정보 수집 및 이용에 동의하십니까?</p>
                                    </li>
                                   	<c:if test="${board.agree =='agree'}">
	                                    <li>
		                                    <input type="radio" name="privacy_agreement" value="agree" checked>동의함
	                                    </li>
	                                    <li>
	                                        <input type="radio" name="privacy_agreement" value="disagree">동의안함
	                                    </li>
                                   	</c:if>
                                   	<c:if test="${board.agree =='disagree'}">
	                                    <li>
		                                    <input type="radio" name="privacy_agreement" value="agree" >동의함
	                                    </li>
	                                    <li>
	                                        <input type="radio" name="privacy_agreement" value="disagree" checked>동의안함
	                                    </li>
                                   	</c:if>
                                </ul>   
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="update_btn cf">
                	<input type="hidden" name="pass" value="${board.password }">
                	<input type="hidden" name="seq" value="${board.seq }">
                    <input type="button" onclick="location.href='QnaBoardList.do'" value="목록">
                    <input type="reset" value="취소">
                    <input type="submit" value="수정">
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