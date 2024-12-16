$(document).ready(function() {
    IMP.init(userCode);

    $('.payment-form').submit(function () {
        var name=$(this).find('span.p-name').text();
        var amount=$(this).find('input.p-price').val();
        var csrf_token=$('meta[name="csrf-token"]').attr('content');

        $.post($(this).attr('action')+'.json',{'authenticity_token':csrf_token,'user_point_log[charge_point_id]': $(this).find('input[name="user_point_log[charge_point_id]"]').val() },function(data){
            var paymentData = {
            pg: data.pg,
            pay_method: "card",
            merchant_uid: data.merchant_uid,   //주문번호
            name: name+'충전',
            amount: amount,                         // 숫자타입
            buyer_email: data.user_email,
            buyer_name: data.user_name,
            buyer_tel: data.user_tel,
            buyer_addr: data.user_addr,
            buyer_postcode: data.user_postcode
            };

            paymentResult(paymentData);
        },'json');

        return false;
    });

    var paymentResult = function (paymentData) {
        if (typeof ReactNativeWebView === 'undefined') {
            IMP.request_pay(paymentData, function (rsp) {
                if (rsp.success) {
                    location.href = '/payments/complete';
                }
            });
        } else {
            /* 리액트 네이티브 환경에 대응하기 */
            var params = {
                cmd: 'PAYMENT',
                userCode: userCode,                             // 가맹점 식별코드
                data: paymentData,                                       // 결제 데이터
                type: 'payment',                            // 결제와 본인인증 구분을 위한 필드
            };
            ReactNativeWebView.postMessage(JSON.stringify(params));
        }
    }
});