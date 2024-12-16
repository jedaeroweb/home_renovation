$(document).ready(function(){
    $("a.simple_image").fancybox({
        'opacity'   : true,
        'overlayShow'        : true,
        'overlayColor': '#000000',
        'overlayOpacity'     : 0.9,
        'titleShow':true,
        'openEffect'  : 'elastic',
        'closeEffect' : 'elastic'
    });

    $(".select-smallthumb li a").click(function(){
        var img_src=$(this).find('img').attr('src');
        $("#product-image").attr('src',img_src.replace('small_thumb','medium_thumb')).closest('.simple_image').attr('href',img_src.replace('small_thumb','large_thumb'));

        return false;
    });

    $(".select-smallthumb-large li a").click(function(){
        var img_src=$(this).find('img').attr('src');
        $("#product-image").attr('src',img_src.replace('small_thumb','large_thumb')).closest('.simple_image').attr('href',img_src.replace('small_thumb','large_thumb'));

        return false;
    });

    $('#family-site').change(function(){
        window.open($(this).val(), '_blank');
    });

    $("#mobile-menu").click(function(){
        $('#mobile-menu-back').show();
        $('#top-user-menu').show().animate({"right":"0px"}, 500);

        return false;
    });

    $("#show-menu").click(function(){
        if($("#sub-menu").is(':visible')) {
            $("#sub-menu").hide();
        }  else {
            $("#sub-menu").show();
        }
    });

    $('html').click(function(e) {
        if(!$(e.target).hasClass("material-icons")) {
            $("#sub-menu").hide();
        }
    });

    $('#main,#hm-hide').hover(function(e){
        if(!$(e.target).hasClass("material-icons")) {
            $("#sub-menu").hide();
        }
    });

    $('header nav .main-menu').hover(function(){
        $("#sub-menu").show();
    });

    $('#mobile-menu-close').click(function(){
        $('#top-user-menu').animate({"right":"-290px"}, 500,function(){
            $(this).hide();
            $('#mobile-menu-back').hide();
        });

        return false;
    });

    $('.mobile-sub-menu').change(function(){
        if($(this).attr('name')=='category' || $(this).attr('name')=='speciality') {
            location.href = $(this).find('option[value="'+$(this).val()+'"]').attr('data-url');
        } else {
            location.href = $(this).val();
        }
    });

    $('[data-toggle="tooltip"]').tooltip();
    if (typeof ReactNativeWebView !== 'undefined') {
        $('.google-b-icon').click(function(){
            alert('현재는 앱에서는 구글로그인이 진행되지 않습니다.'+"\n"+'추후 업데이트시 되도록 수정하겠습니다. 죄송합니다.');
            return false;
        });
    }

    $(".modal-link").click(function(event){
        event.preventDefault();
        $('#myModal').removeData("modal");

        let link=$(this).attr('href');

        if(link.includes("?")) {
            link+='&popup=1';
        } else {
            link+='?popup=1';
        }

        $('#myModal').load(link,function(){
            $('#myModal').modal();
        });

        return false;
    });

    $("#postcode").on("click", function(){
        if (typeof ReactNativeWebView === 'undefined') {
            new daum.Postcode({
                shorthand: false,
                popupName: 'postcode',
                oncomplete: function(data){
                    $("#zonecode").val(data.zonecode);
                    $("#addrDefault").val(data.address);
                    $("#addrDetail").focus();
                }
            }).open();
        } else {
            var element_wrap = document.getElementById('address-wrap');
            var element_body = document.getElementById('address-wrap-body');
            element_wrap.style.display = 'block';
            $("#wrap").addClass("on-modal");

            var width=$('#modal-wrap .modal-body').width()+27;

            new daum.Postcode({
                width : width,
                height : 550,
                shorthand: false,
                popupName: 'postcode',
                oncomplete: function(data){
                    $("#zonecode").val(data.zonecode);
                    $("#addrDefault").val(data.address);
                    $("#address-wrap .modal-head .close").click();
                    $("#addrDetail").focus();
                }
            }).embed(element_body);
        }
    });
});
