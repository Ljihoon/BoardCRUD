// 메인 슬라이드
$(function(){
    $('.bg_slider').bxSlider({
        mode: 'fade',
        auto:true,
        pause: 5000,
        autoControls: false,
        autoHover: false,
        pager: false,
        controls: false,
    });
});
$(function(){
    $('.bg_slider').bxSlider({
        mode: 'fade',
        auto:true,
        pause: 5000,
        autoControls: false,
        autoHover: false,
        pager: false,
        controls: false,
    });
});

// 아이템 슬라이드
$(function(){
    $('.md_pick_area').bxSlider({
        auto:true,
        pause: 5000,
        autoControls: false,
        autoHover: true,
        pager: false,
        slideWidth : 440,
        controls: false,
    });
});
$(function(){
    $('.md_pick_area').bxSlider({
        mode : 'fade',
        auto:true,
        pause: 5000,
        autoControls: false,
        autoHover: true,
        pager: false,
        slideWidth : 440,
        controls: false,
    });
});


// 메인슬라이드 버튼으로 이미지 변경
$(function(){
    $('article .slider_btn li:first-child').click(function(){
       document.getElementById('li2').style.display = 'none';
       document.getElementById('li1').style.display = 'block';
    //$('article .slider_btn li:first-child').attr('style','float: none; list-style: none; position: absolute; width: 2543.33px; z-index: 0; display: none;');

    });
});

$(function(){
    $('article .slider_btn li:last-child').click(function(){
        document.getElementById('li1').style.display = 'none';
        document.getElementById('li2').style.display = 'block';
    });
});

