
$(document).ready(function(){
    $(document).on('click','.tuto-home-leftbar .menu .list-group-item',function(){
        var current_list_item = $(this).parent();
        $(".tuto-home-leftbar .menu").not(current_list_item).find('ul').slideUp();
        $(".tuto-home-leftbar .menu").not(current_list_item).each(function(){
            $(this).find('a:first-child').addClass('disabled').removeClass("active");
        });
        $(".tuto-home-leftbar .menu").not(current_list_item).attr('data-status','close');

        if(current_list_item.attr('data-status') == "close") {
            current_list_item.find("ul").slideDown();
            current_list_item.find('a').filter(':first').removeClass("disabled");
            current_list_item.find('a').filter(':first').addClass("active");
            current_list_item.attr('data-status','open');
        }else{
            current_list_item.find("ul").slideUp();
            current_list_item.find('a').filter(':first').removeClass("active");
            current_list_item.find('a').filter(':first').addClass("disabled");
            current_list_item.attr('data-status','close');
        }



    });
});