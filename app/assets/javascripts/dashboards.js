
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets

$(document).ready(function(){
    $(document).on('click','.add_fields',function(evt){
        var time = new Date().getTime();
        var regexp = new RegExp($(this).data('id'),'g');
        $(this).before($(this).data('fields').replace(regexp,time));
        evt.preventDefault();
    });

    $(document).on('click','.remove_fields',function(evt){
        var form_wrapper = $(this).closest(".form-wrapper");
        form_wrapper.find("input[type='hidden']").val(1);
        form_wrapper.hide();
        evt.preventDefault();
    });
});
