// ロード前jsロード前jsロード前jsロード前jsロード前jsロード前jsロード前js

$(function(){
    $('.title1').css({opacity:'0'});
    setTimeout(function(){
        $('.title1').stop().animate({opacity:'1'},1000);
    },1500);
});

$(function(){
    setTimeout(
        function(){
            $('.pannelleft00').animate({
                'left':'-8%'
            },600);
    },2500);
});

$(function(){
    setTimeout(
        function(){
            $('.pannelright00').animate({
                'right':'-8%'
            },600);
    },2500);
});

$(function(){
    setTimeout(
        function(){
            $('.title')
            .animate({'top':'10%'},400)
            .animate({'top':'-100%'},1000);
    },2500);
});

$(function(){
    setTimeout(
        function(){
            $('.beforewrap').fadeOut(1000);
    },3000);
});

$(function(){
    setTimeout(
        function(){
            $('.wrap').fadeIn(1000);
    },4000);
});

// ↓↓ここからロード後js↓↓ここからロード後js↓↓ここからロード後js



$(function() {
 
 
// トップ画のアニメーションスピードをコントロール
 
var fadeinSP = 500; //フェードインスピード
var fadeoutSP = 300; //フェードアウトスピード
 
 
// トップ画の通常非表示設定
 
$('.recommend01').hide();
$('.recommend02').hide();
$('.recommend03').hide();
$('.recommend04').hide();

$('#aboutus a').hover(
    function () {
        $('.recommend02').stop(true, true).fadeIn(0);
        }, function () {
        $('.recommend02').stop(true, true).fadeOut(0);
    }
);

$('#article a, .toparticlenext').hover(
    function () {
        $('.recommend03').stop(true, true).fadeIn(0);
        }, function () {
        $('.recommend03').stop(true, true).fadeOut(0);
    }
);

$('#contact a').hover(
    function () {
        $('.recommend04').stop(true, true).fadeIn(0);
        }, function () {
        $('.recommend04').stop(true, true).fadeOut(0);
    }
);

});


