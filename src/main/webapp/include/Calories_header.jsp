<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="line">
   <aside class="gnb_head w1260">
     <div class="favorites">
       <a onclick="addMark('http://localhost:8093/Project999_Ateam/index_Prodect.jsp','칼로리를 부탁해 구매페이지');"><i class="fa fa-star-o" aria-hidden="true"></i>&nbsp;즐겨찾기</a>
       &nbsp;&nbsp;|&nbsp;&nbsp;
       <a onclick="addMark('http://localhost:8093/Project999_Ateam/index_Prodect.jsp','칼로리를 부탁해 구매페이지');"><i class="fa fa-bookmark-o" aria-hidden="true"></i>&nbsp;바로가기</a>
     </div>
     <div class="login_btn">
       <ul>
       <c:if test="${id == null }">
         <li><a href="login.jsp">로그인</a></li>|
         <li><a href="signup.jsp">회원가입</a></li>|
       </c:if>
       <c:if test="${id != null }">
         <li><a onclick="logout();">로그아웃</a></li>|
       </c:if>
         <li><a href="#">장바구니</a></li>|
         <li><a href="#">관련상품</a></li>|
         <li class="gnb_2dtp">
           <a href="#">마이샵</a><i class="fa fa-angle-down" aria-hidden="true"></i>&nbsp;
           <ul>
             <li><a href="#">주문조회</a></li>
             <li><a href="#">배송조회</a></li>
             <li><a href="#">적립금</a></li>
             <li><a href="#">좋아요</a></li>
           </ul>
         </li>|
         <li class="gnb_2dtp">
           <a href="#">커뮤니티</a><i class="fa fa-angle-down" aria-hidden="true"></i>
           <ul>
             <li><a href="Etc_notice_board_list">공지사항</a></li>
             <li><a href="QnaBoardList.do">문의게시판</a></li>
             <li><a href="ReviewBoardList.do">사용후기</a></li>
             <li><a href="Etc_notice_board_list.jsp">이용안내</a></li>
           </ul>
         </li>
         <li><input type="search" name="searck"></li>
       </ul>
     </div>
   </aside>
 </div>
 <h1><a href="index.jsp"><img src="https://mayo0615.cafe24.com/web/upload/category/logo/ab6a48d31b59aa02577fadb724ccb645_5_top.jpg" alt="`logo"></a></h1>
 <div class="line_2nd">
   <div class="gnb_main">
     <ul class="w1260">
       <li class="button gnb_2dtp">
         <span></span>
         <span></span>
         <span></span>
         <ul class="w1260 cf::after">
           <li>
             <h2> : 카테고리 전체 보기</h2>
             <ul>
               <li>
                 <a href="Etc_faq_board_list.jsp">공지사항</a>
                 <ul>
                   <li><a href="Etc_faq_board_list.jsp">공지사항</a></li>
                   <li><a href="Etc_notice_board_list.jsp">FAQ</a></li>
                 </ul>
               </li>
               <li>
                 <a href="index_Prodect.jsp">제품 구매하기</a>
                 <ul>
                   <li><a href="index_Prodect.jsp?num=1&items=3">칼로리를 부탁해</a></li>
                   <li><a href="index_Prodect.jsp?num=2&items=3">액티브 L-카르니틴</a></li>
                 </ul>
               </li>
               <li>
                 <a href="QnaBoardList.do">제품문의/후기</a>
                 <ul>
                   <li><a href="QnaBoardList.do">제품문의</a></li>
                   <li><a href="ReviewBoardList.do">제품후기</a></li>
                 </ul>
               </li>
             </ul>
           </li>
           <li>
             <h3>커뮤니티</h3>
             <ul>
               <li><a href="Etc_faq_board_list.jsp">공지사항</a></li>
               <li><a href="QnaBoardList.do">문의게시판</a></li>
               <li><a href="ReviewBoardList.do">사용후기</a></li>
               <li><a href="Etc_notice_board_list.jsp">이용안내 FAQ</a></li>
             </ul>
           </li>
         </ul>
       </li>
       <li>
         <ul>
           <li class="gnb_2dtp">
             <a href="index_Prodect.jsp">제품 구매하기</a>
             <ul>
               <li><a href="index_Prodect.jsp?num=1&items=3">칼로리를 부탁해</a></li>
               <li><a href="index_Prodect.jsp?num=2&items=3">액티브 L-카르니틴</a></li>
               <li><a href="index_Prodect.jsp">액티브 비오틴</a></li>
             </ul>
           </li>
           <li class="gnb_2dtp">
             <a href="QnaBoardList.do">제품 문의/후기</a>
             <ul>
               <li><a href="QnaBoardList.do">제품 문의</a></li>
               <li><a href="ReviewBoardList.do">제품 후기</a></li>
             </ul>
           </li>
           <li class="gnb_2dtp">
             <a href="Etc_faq_board_list.jsp">공지사항</a>
             <ul>
               <li><a href="Etc_faq_board_list.jsp">공지사항</a></li>
               <li><a href="Etc_notice_board_list.jsp">FAQ</a></li>
             </ul>
           </li>
         </ul>
       </li>
     </ul>
   </div>
 </div>