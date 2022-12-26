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
   <link rel="stylesheet" href="./css/projectA.css">
   <link rel="stylesheet" href="./css/Calories_header.footer.css">
   <script src="./js/projectA.js"></script>
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
		<div class="w1280 cf">
	        <p class="home2"><a href="#"><img src="./images/Home.PNG" alt="홈아이콘"></a>> 로그인</p>
	    </div>
	    <section class="login">
	        <h1>LOGIN</h1>
	        <h3>WELCOM BACK</h3>
	        <form method="post" action="loginCtrl.jsp">
	            <table class="table2">
	                <tr>
	                    <td><input type="text" name="id" placeholder="아이디"></td>
	                </tr>
	                <tr>
	                    <td><input type="password" name="pw" placeholder="비밀번호"></td>
	                </tr>
	                <tr class="login_btn">
	                    <td colspan="1">
	                        <input type="submit" value="로그인" class="btn btn-primary">
	                    </td>
	                </tr>
	                <tr class="secret_login">
	                    <td><img src="./images/Lock.PNG" alt="보안접속">보안접속</td>
	                </tr>
	                <tr class="serch">
	                    <td>
	                        <a href="idseach.jsp">아이디찾기 <span>|</span></a>
	                        <a href="passwordseach.jsp">비밀번호찾기 <span>|</span></a> 
	                        <a href="signup.jsp">회원가입</a>
	                    </td>
	                </tr>
	            </table>
	        </form>
	        <div class="guest">
	            <a href="guest.jsp"><input type="button" value="비회원 주문조회"></a>
	        </div>
	    </section>
	    <section class="login">
	        <h1 class="guest_title">비회원주문조회</h1>
	        <h3 class="guest_title2">GUEST CHECKOUT</h3>
	        <form method="post" action="loginCtrl.jsp">
	            <table class="table2">
	                <tr class="guest_text">
	                    <td>비회원이실 경우, 주문시의 주문번호로 주문조회가 가능합니다.</td>
	                </tr>
	                <tr>
	                    <td><input type="text" name="id" placeholder="주문자명"></td>
	                </tr>
	                <tr>
	                    <td><input type="text" name="pw" placeholder="주문번호"></td>
	                </tr>
	                <tr>
	                    <td class="guest_btn"><input type="password" name="gpw" placeholder="비회원 주문비밀번호"></td>
	                </tr>
	                <tr class="login_btn">
	                    <td colspan="1">
	                        <input type="submit" value="비회원 로그인" style="font-size: 12px;" class="guest_login_btn">
	                    </td>
	                </tr>
	            </table>
	        </form>
	    </section>
        <footer class="F_include">
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
        <!-- /4.Footer -->
    </div>
</body>
<script src="./js/Calories_header.footer.js"></script>
<script src="./js/slide.js"></script>
</html>