$(function(){

    /*建立一个函数*/
    $(".btn").click(function(){
        /*获取到id执行点击事件*/
        if ($(this).attr("data-key")=="on") {
            $(this).addClass("on");
            var num=Number($(this).find("span").html())+1;
            /*给变量赋值当.btn点击执行b标签内容=+1*/
            $(this).find("span").html(num);
            $(this).attr("data-key","")


            var css_ele=document.getElementById("thumb_up_css")
            css_ele.style.setProperty("color",'red')

        }else{

            $(this).removeClass("on");
            var num=Number($(this).find("span").html())-1;
            $(this).find("span").html(num);
            $(this).attr("data-key","on");

            var css_ele=document.getElementById("thumb_up_css")
            css_ele.style.setProperty("color",'black')
        }

    })
})