//서브메뉴 노출 
$('.gnb_2dtp').on('mouseenter',function(){
  $('.gnb_2dtp').children('ul').hide();
  $(this).children('ul').stop().slideDown();
});
$('.gnb_2dtp').on('mouseleave',function(){
  $('.gnb_2dtp').children('ul').hide();
  $(this).children('ul').stop().slideUp();
});

//전체메뉴 노출
$('.button').on('mouseenter',function(){
  $(this).next('li').css({"border-bottom":"1px solid #000"});
  $(this).css({"border":"1px solid #000","border-bottom":"none"});
});
$('.button').on('mouseleave',function(){
  $(this).next('li').css({"border-bottom":"none"});
  $(this).css({"border":"1px solid #ccc"});
});

//스크롤 위치에 따라 상단 메뉴 브라우저에 고정
$(window).on('scroll',function(){
  var sc_top = $(this).scrollTop();
  if(sc_top>110){
    $('.line_2nd').css({"position":"fixed",'top':'42px','left':'50%','transform':'translateX(-50%)','z-index':'970'});
    $('header h1').css({"padding-bottom":"52px"});
  }else{
    $('.line_2nd').css({"position":"relative",'top':'0','transform':'translateX(-50%)'});
    $('header h1').css({"padding-bottom":"0"});
  }
});

//즐겨찾기, 바로가기 버튼 

function addMark(url,title){
	if(confirm('즐겨찾기 추가하시겠습니까?')){
		if (window.sidebar) { // Mozilla Firefox
		    window.sidebar.addPanel(title, url, "");
		}
		else if (window.opera && window.print) {
		    window.external.AddFavorite(url, title);
		}
		else {
		    alert('이용하시는 브라우저에서는 기능이 지원되지 않습니다.Ctrl+D키를 누르면 즐겨찾기에 추가하실수 있습니다.');
		}
	}
}

function logout() {
   if(confirm('로그아웃 하시겠습니까?')){
	   location.href='LogoutCtrl';
	}
}