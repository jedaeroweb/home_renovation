$(document).ready(function() {
    var csrf_token=$('meta[name="csrf-token"]').attr('content');


    // 자바스크립트가 지원될때 Tr 커서 선택
    $(".table-td-click tbody tr").css('cursor','pointer');

    $(".table-td-click tbody td").click(function(){
        location.href=$(this).parent().find('a').attr('href');
    });

    $('.accepted-biddings').css('cursor','pointer').click(function(){
        location.href=$(this).find('a').attr('href');
    }).mouseover(function(){
       // $(this).css('border-color','blue');
       // $(this).find('h3').css({'background-color':'#d6104b','color':'#fff'});
    }).mouseout(function(){
       // $(this).find('h3').css({'background-color':'#fff'});
    });


    $('#ad_process_date').change(function(){
        change_budget();
        change_endate();
    });

    $('input[name="ad[ad_service_time_attributes][service_time_id]"]').change(function(){
        change_budget();
    });

    $('#ad_form').submit(function(){
        if(!$('#speciality_pay').length) {
            return true;
        }

        if($('#nav-home-tab').hasClass('active')) {
            if(Number($('#e-price').text())!=Number($('#ad_budget').val())) {
                $('#ad_budget').val($('#e-price').text());
            }
        }
    });

    $('#parent_address_id').change(function(){
        var csrf_token=$('meta[name="csrf-token"]').attr('content');
        var parent_address_id=$(this).val();

        $.getJSON('/addresses.json',{parent_address_id: parent_address_id,csrf_token: csrf_token},function(data){
            $('#address_id').empty();
            $.each(data,function(index,value){
                var option=$('<option value="'+value.id+'">'+value.title+'</option>');
                $('#address_id').append(option);
            });

            $('#address_id').effect('highlight').focus();
        });
    });

    $('#ad_start_date').change(function(){
        if(!$('#speciality_pay').length) {
            return true;
        }

        change_budget();
        change_endate();
    });

    $("#main-contact-form-link").click(function(event){
        event.preventDefault();
        $('#myModal').removeData("modal");

        var link=$(this).attr('href')+'?popup=1';
        $('#myModal').load(link,function(){
            $('#myModal').modal();
        });

        return false;
    });

    $("#shoppings article.product").css('cursor','pointer').click(function(){
        location.href=$(this).find('a:first').attr('href');
    }).mouseover(function(){
       $(this).css('background','#eee');
    }).mouseout(function(){
        $(this).css('background','#fff');
    });



    $('#speciality-men-list .speciality-men-count').change(change_budget);

    change_budget();
    function change_endate()
    {
        if(!$('#ad_start_date').val()) {
            return false;
        }

        var ad_start_date=$('#ad_start_date').val();
        var ad_process_date=$('#ad_process_date').val();

        var start_date = new Date(ad_start_date);
        start_date.setDate(start_date.getDate()+Number(ad_process_date));
        $('#ad_end_date').val(start_date.toISOString().slice(0, 10));
    }

    function change_budget()
    {
        var default_value=0;

        if($('#speciality-men-list').length) {
            $('#speciality-men-list li').each(function () {
                default_value += $(this).find('.speciality-pay').val() * $(this).find('.speciality-men-count').val();
            });
        }

        var da_v=$('#ad_process_date').val();
        var da_t=3;

        if($('input[name="ad[ad_service_time_attributes][service_time_id]"]:checked').length) {
            da_t=$('input[name="ad[ad_service_time_attributes][service_time_id]"]:checked').siblings('span').text()
        }

        var e_price=default_value*da_v*da_t;

        $('#e-price').text(e_price).effect('highlight');
        $('#ad_budget').val(e_price);
    }

    $('#shoppings .product,#ads .ad,.ads .ad').css('cursor','pointer').click(function(e){
        location.href=$(this).find('a:first').attr('href');
    });

    if($('#new-ad').length || $('#edit-ad').length) {
        var title_change=false;

        if($('input[name="ad[ad_category_id]"]').val()) {
            if(!title_change) {
                $('#ad_title').val($(this).closest('label').find('span').text()+' '+$('#category-title').text()+'해주세요');
            }
        }

        $('input[name="ad[ad_category_id]"]').change(function(){
            if(!title_change) {
                $('#ad_title').val($(this).closest('label').find('span').text()+' '+$('#category-title').text()+'해주세요');
            }
        });
    }

    var swiper = new Swiper("#slides .swiper-container", {
        loop: true, // loop 를 true 로 할경우 무한반복 슬라이드, false 로 할경우 슬라이드의 끝에서 더보여지지 않음

        autoplay: {
            delay: 2500,
        },

        navigation: {
            nextEl: '#slides .swiper-button-next',
            prevEl: '#slides .swiper-button-prev',
        },
        // If we need pagination
        pagination: {
            el: "#slides .swiper-pagination",
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            type: 'bullets', // And if we need scrollbar 진행바
        },
    });


    var swiper = new Swiper("#simulation-slide .swiper-container", {
        slidesPerView: 5,
        spaceBetween: 30,
        autoplay: {
            delay: 5000,
        },

        navigation: {
            nextEl: '#simulation-slide .swiper-button-next',
            prevEl: '#simulation-slide .swiper-button-prev',
        },
        // If we need pagination
        pagination: {
            el: "#simulation-slide .swiper-pagination",
            clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
            type: 'bullets', // And if we need scrollbar 진행바
        },
    });


    $('input[name="no_order"],input[name="no_code"]').change(function(){
        $(this).closest('form').submit();
    });


    $("#faqCategoryList a.title").click(getList);
    $("#faqList dt a.title").click(getContent);

    function getList() {
        var tt=$(this);

        $.getJSON($(this).attr('href')+'.json',function(data){
            $("#faqList").empty();
            if(data.faqs.length) {
                $.each(data.faqs,function(index,value){
                    var a=$('<a class="title" href="/faqs/'+value.id+'">'+value.title+'<span><i class="material-icons">add</i></span></a>').click(getContent);
                    $('<dt>').appendTo("#faqList").append(a);
                });
            } else {
                $('<dt>글이 없습니다.</dt>').appendTo("#faqList");
            }

            $("#faqCategoryList li a").removeClass('active');
            tt.addClass('active');
        });
        return false;
    }

    function getContent(){
        var parent=$(this).parent();
        $.getJSON($(this).attr('href')+'.json',function(value){
            if(parent.next().get(0)) {
                if(parent.next().get(0).tagName!='DD') {
                    parent.after('<dd>');
                }
            } else {
                parent.after('<dd>');
            }
            $("#faqList dt").removeClass('active').find('i').text('add');
            $("#faqList dd").hide();
            parent.addClass('on').find('i').text('remove');
            parent.next().effect('highlight').html('<p>'+nl2br(value.content)+'</p>').slideDown();
            if (history && history.pushState) {
                history.pushState('','faq_'+value.id,'/faqs/'+value.id);
            }
        });

        return false;
    }

    function nl2br (str, is_xhtml) {
        var breakTag = (is_xhtml || typeof is_xhtml === 'undefined') ? '<br ' + '/>' : '<br>';
        return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2');
    }
});

