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
		        <p class="home2"><a href="#"><img src="./images/Home.PNG" alt="홈아이콘"></a>> 아이디 찾기</p>
		    </div>
		    <div class="id_find_text w1280">
		        <div class="runded cf"></div><h4>아이디 찾기</h4>
		        <p>가입하신 방법에 따라 아이디 찾기가 가능합니다.</p>
		        <p>법인사업자 회원 또는 외국인 회원의 경우 법인명과 법인번호 또는 이름과
		            등록번호를 입력해 주세요.</p>
		     </div> 
		    <div class="box3 w1280">
		        <section class="id_find">
		                <h1>아이디 찾기</h1>
		                <form method="post" action="Idserch">
		                    <table class="table3">
		                        <tr>
		                            <td class="table3_text">회원유형</td>
		                            <td class="member_category1">
		                                <select name="member_cgy" id="member_category">
		                                    <option value="개인회원">개인회원</option>
		                                    <option value="개인사업자 회원">개인사업자회원</option>
		                                    <option value="법인사업자 회원">법인사업자회원</option>
		                                    <option value="외국인회원">개인회원</option>
		                                </select>
		                            </td>
		                        </tr>
		                        <tr class="radio_btn">
		                            <td>
		                                <fieldset>
		                                    <label>
		                                        <input type="radio" name="contact" value="email2" checked />
		                                        <span>이메일</span>
		                                    </label>
		                                    <label>
		                                        <input type="radio" name="contact" value="phone2" />
		                                        <span>휴대폰번호</span>
		                                      </label>
		                                </fieldset>
		                            </td>
		                        </tr>
		                        <tr class="input_text">
		                            <td class="table3_text">이름</td>
		                            <td><input type="text" name="name"></td>
		                        </tr>
		                        <tr class="input_text">
		                            <td class="table3_text">이메일로 찾기</td>
		                            <td><input type="email" name="email"></td>
		                        </tr>
		                    </table>
		                    <button type="submit" value="id_serch_btn" id="id_btn2">확인</button>
		                </form>
		        </section>
		    </div>
        <footer class="F_include">
			<jsp:include page="/include/Calories_footer.jsp"/>
		</footer>
        <!-- /4.Footer -->
    </div>
</body>
<script src="./js/Calories_header.footer.js"></script>
<script src="./js/slide.js"></script>
</html>