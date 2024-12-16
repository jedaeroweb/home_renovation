$(document).ready(function() {
    IMP.init(userCode);

    $('.payment-form').submit(function () {
        if($('#user_addresses_count').val()=='0') {
            if(!confirm('배송주소등록 후 주문할수 있습니다. 배송주소등록을 진행하겠습니까?')) {
                return false;
            }

            var shopping_id=$('#shopping_id').val();

            $('#myModal').load('/user_addresses/new?popup=1&shopping_id='+shopping_id,function(){
                $('#myModal').modal();
            });

            return false;
        }

        var name=$('#order_title').val();
        var quantity=$('#order_order_products_attributes_0_quantity').val();
        var amount=$('#order_total_price').val();
        var csrf_token=$('meta[name="csrf-token"]').attr('content');
        
        $.post($(this).attr('action')+'.json',{'authenticity_token':csrf_token,'order[title]':name,'order[total_price]':amount,'order[order_products_attributes][0][product_id]':$('#order_order_products_attributes_0_product_id').val() ,'order[order_products_attributes][0][quantity]':  quantity},function(data){
            var paymentData = {
            pg: data.pg,
            pay_method: "card",
            merchant_uid: data.merchant_uid,   //주문번호
            name: name+'구입',
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

    $('.number-button-set span.button').click(function(){
        var input=$(this).parent().find('input');
        if($(this).text()=='-') {
            if(input.val()!=1) {
                input.val(Number(input.val())-1).change();
            }
        } else {
            if(input.val()>=30) {
                alert('최대 30개 까지 구입가능합니다.');
                input.val(30);
                return false;
            }
            input.val(Number(input.val()) + 1).change();
        }
    });

    $('#order_order_products_attributes_0_quantity').change(function(){
        var certain_price=$('#certain-price').val();
        var quantity=$(this).val();
        var product_title=$('#show-shopping h2 span.title').text();

        if(quantity>1) {
            product_title+='/'+quantity+'개';
        }

        var total_price=certain_price*quantity;
        $('#order_title').val(product_title);
        $('#order_total_price').val(total_price);
        $('#total-price-text').text(new Intl.NumberFormat().format(total_price)+'원').effect('highlight');
    });

    var paymentResult = function (paymentData) {
        if (typeof ReactNativeWebView === 'undefined') {
            IMP.request_pay(paymentData, function (rsp) {
                if (rsp.success) {
                    location.href = '/payments/complete';
                }
            });
        } else {
            // 리액트 네이티브 환경에 대응하기
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