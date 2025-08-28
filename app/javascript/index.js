var ready=function(){
    // 페이지 로드 시 체크박스 해제
    $("#user_remember_me").prop("checked", false);

    $("#user_remember_me").change(function(){
        if ($(this).is(':checked')) {
            const confirmed = confirm("1달간 로그인이 유지 됩니다. 공공장소 PC에서 사용 주의\n  로그인 정보 기억하시겠습니까?");
            if (!confirmed) {
                $(this).prop('checked', false); // 취소 시 체크 해제
            }
        }
    });
}

document.addEventListener("turbo:load", ready);
