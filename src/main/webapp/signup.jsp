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
		        <p class="home2"><a href="index.jsp"><img src="./images/Home.PNG" alt="홈아이콘"></a>> 회원가입</p>
		    </div>
		    <section class="signup w1280">
		        <div class="runded cf"></div><h1>회원가입</h1>
		        <hr class="hr1">
		        <hr class="hr2">
		        <form method="post" id="signup_btn" onsubmit="return checks()" action="signupCtrl.do">
		            <table class="table w1280">
		                <tr>
		                    <td>아이디<span>*</span></td>
		                    <td><input type="text" name="id" id="id" maxlength="16"><strong>(영문소문자/숫자, 4~16자)</strong></td>
		                </tr>
		                <tr>
		                    <td>비밀번호<span>*</span></td>
		                    <td><input type="password" name="pw1" id="pw1" maxlength="16"><strong>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</stron></td>
		                </tr>
		                <tr>
		                    <td>비밀번호확인<span>*</span></td>
		                    <td><input type="password" name="pw2" id="pw2" maxlength="16"></td>
		                </tr>
		                <tr>
		                    <td>이름<span>*</span></td>
		                    <td><input type="text" name="name" id="name"></td>
		                </tr>
		                <tr class="phone_tr">
		                    <td>휴대전화</td>
		                    <td>
		                        <select class="ph1" name="phone">
		                            <option value="010">010</option>
		                            <option value="011">011</option>
		                            <option value="016">016</option>
		                            <option value="017">017</option>
		                            <option value="019">019</option>
		                        </select>
		                        -
		                        <input class="ph2" type="tel" size="4" name="phone">
		                        -
		                        <input class="ph3" type="tel" size="4" name="phone">
		                    </td>
		                </tr>
		                <tr>
		                    <td class="emailline">이메일<span>*</span></td>
		                    <td><input type="email" name="email" id="email"></td>
		                </tr>
		            </table>
		            <h2 class="h2">전체 동의</h2>
		                <div class="agree">
		                    <p class="allcheck">
		                        <input type="checkbox" name="agree_all" id="cb1">&nbsp;&nbsp;이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.
		                        <label for="cb1"></label>
		                    </p>
		                    <h3>[필수] 이용약관 동의</h3>
		                    <div class="text">
		                        제1조(목적)
		                        이 약관은 도쿄마요네즈가 운영하는 칼로리를 부탁해(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.
		                        
		                        ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」
		                        
		                        제2조(정의)
		                        ①“몰” 이란 OO 회사가 재화 또는 용역(이하 “재화등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
		                        
		                        ②“이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
		                        
		                        ③ ‘회원’이라 함은 “몰”에 개인정보를 제공하여 회원등록을 한 자로서, “몰”의 정보를 지속적으로 제공받으며, “몰”이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
		                        
		                        ④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.
		                    </div>
		                    <div class="ag1">
		                        이용약관에 동의하십니까?<input type="checkbox" name="agree2" id="cb2">동의함                    
		                    </div>
		                    <h3>[필수] 개인정보 수집 및 이용 동의</h3>
		                    <div class="text">
		                        '도쿄마요네즈'  은 (이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.
		                        회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
		                        
		                        회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
		                        
		                        o 본 방침은  :  2010 년 12 월 25 일 부터 시행됩니다.■ 수집하는 개인정보 항목
		                        
		                        회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
		                        
		                        
		                        o 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 비밀번호 질문과 답변 , 자택 전화번호 , 자택 주소 , 휴대전화번호 , 이메일
		                        o 개인정보 수집방법 : 홈페이지(회원가입)
		                    </div>
		                    <div class="ag1">
		                        개인정보 수집 및 이용에 동의하십니까?<input type="checkbox" name="agree2" id="cb3">동의함                    
		                    </div>
		                    <h3>[선택] 쇼핑정보 수신 동의</h3>
		                    <div class="text">
		                        할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.
		    
		                        단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.
		    
		                        선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.
		                    </div>
		                    <div class="ag1">
		                        이메일 수신을 동의하십니까?<input type="checkbox" name="agree2" id="cb4" value="agree">동의함                    
		                    </div>
		                </div>
		                <div class="box1">
		                    <input type="submit" value="회원가입" class="box2">
		                </div>
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