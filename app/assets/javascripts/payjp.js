document.addEventListener(
  "DOMContentLoaded", e => {
    if (document.getElementById("token_submit") != null) { 
      Payjp.setPublicKey("pk_test_e57e74be6e1f4285f2140bb5"); 
      let btn = document.getElementById("token_submit"); 
      btn.addEventListener("click", e => { 
        e.preventDefault(); 
        let card = {
          number: document.getElementById("payment_card_number").value,
          cvc: document.getElementById("payment_card_cvc").value,
          exp_month: document.getElementById("exp_month").value,
          exp_year: document.getElementById("exp_year").value
        }; 
        Payjp.createToken(card, (status, response) => {
          if (status === 200) { 
            $('#payment_card_number').removeAttr('name');
            $('#payment_card_cvc').removeAttr('name');
            $('#exp_month').removeAttr('name');
            $('#exp_year').removeAttr('name'); 
            $('#card_token').append(
              $('<input type="hidden" name="payjp-token">').val(response.id)
            );
            alert("登録が完了しました"); 
            document.inputForm.submit();
          } else {
            alert("カード情報が正しくありません。正しい情報でも登録されない場合は広告ブロックなどのgoogle拡張機能を一度切ってからお試しください"); 
          }
        });
      });
    }
  },
  false
);