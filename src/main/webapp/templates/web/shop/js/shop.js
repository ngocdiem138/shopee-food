$(window).scroll(function(){
    if($(window).scrollTop() >= 400) {
        $('.topcontrol').show();
    } else {
        $('.topcontrol').hide();
    }
});
function page_scroll2top(){
    $('html,body').animate({
        scrollTop: 0
    }, 'fast');
}
       