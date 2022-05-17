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
document.addEventListener("DOMContentLoaded",function() {
    var menu = document.querySelectorAll('div.container');
    var menu = menu[0];
        //Truy xuất div menu
    var trangthai="scoll";
    window.addEventListener("scroll",function(){
        var x = pageYOffset;
		var offsetHeight = document.getElementById('main-right-home').offsetHeight;
        if(x > offsetHeight-300){
            if(trangthai == "scoll")
            {
                trangthai="non-scoll";
                document.getElementById('now-banner').style.position='absolute'; 
				document.getElementById('now-banner').style.top = offsetHeight-400+ "px";
            }
        }
        else{
            if(trangthai=="non-scoll"){
				document.getElementById('now-banner').style.position = 'fixed';
				document.getElementById('now-banner').style.top = '70px';
            trangthai="scoll";}
        }
    
    })
})