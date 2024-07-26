<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <main id="main">
    
    

    
    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      		<div class="container"><h5>주문하기</h5>
			<form id = searchform name = searchform>
			 <div class="text-end"> 
			</div>
			<div class="card mb-3" >
            <div class="row g-0" id = "cartrider">
              
            </div>
          </div><!-- End Card with an image on left -->
          <h5>주문자정보</h5>
          <div>성명 : <font id='userName'></font></div>
          <div>연락처 :<font id='phone'></font></div>
          <div>주소 :<font id='addr'></font></div>
          
          <h5>수취인정보</h5><div>
        <input type="checkbox" id="sameAsBilling">
        <label for="sameAsBilling">주문자와 동일</label>
  		  </div>
          <div>성명 :<input type="text" id = "receiveName" name="receiveName"></div>
          <div>연락처 :<input type="text" id = "receivePhone"></div>
          <div>주소 :<input type="text" id = "receiveAddr" name="addr"></div>
           <fieldset class="row mb-3"><h5>결제정보</h5>
                  <legend class="col-form-label col-sm-2 pt-0">결제수단</legend>
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="payment" id="gridRadios1" value="ONLINE" checked>
                      <label class="form-check-label" for="gridRadios1">
                        온라인 입금
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="payment" id="gridRadios2" value="CARD">
                      <label class="form-check-label" for="gridRadios2">
                        카드결제
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="payment" id="gridRadios2" value="KAKAO">
                      <label class="form-check-label" for="gridRadios2">
                        카카오페이
                      </label>
                    </div>
                    <div class="form-check disabled">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios" value="option" disabled>
                      <label class="form-check-label" for="gridRadios3">
                        토스뱅크
                      </label>
                    </div>
                  </div>
                </fieldset>
                <div>결제금액<font id='totalPrice'></font></div>
                <div class="text-right"> <!-- 부모 요소 -->
    			<button type="button" class="btn btn-info" onclick="callOrder();">주문하기</button>
				</div>
      </form>
      </div>
     </section>
     </main>
     <form id="hiddenform">
  	<input type='hidden' id='goodsCd' name='goodsCd'>
  	<input type='hidden' id='buyQty' name='buyQty'>
  	  </form>
     <script>
     call_server(searchform, "/getCartList", getCart);
     
     function getCart(list){
    	 console.log(list);
    	 var MtotalPrice = 0;
    	 for(var i=0;i<list.length;i++){
    		str = "<div class=\"col-md-4\">";
            str+= "<img src=\'"+list[i].thumnailUrl+"' class=\"img-fluid rounded-start\" alt=\"...\">";
            str+= "</div>";
            str+= "<div class=\"col-md-8\">";
            str+= "<div class=\"card-body\">";
            str+= "<h5 class=\"card-title\">'"+list[i].goodsName+"'</h5>";
            str+= "<p class=\"card-text\">'"+list[i].sellPrice+"'원</p>";
            str+= "주문수량 :<input type=\"text\" id='buyQty"+i+"'value =\'"+list[i].buyQty+"'>"; 
            str+= "</div>";
            str+= "</div>";
            $('#cartrider').append(str);
            MtotalPrice += Number(list[i].sellPrice);
		}
    	 $('#totalPrice').text(MtotalPrice);
     }		
     
     call_server(searchform, "/getUserorderList", getUserorderList);
  	   function	getUserorderList(mvo){
    	 $('#userName').text(mvo.userName);
    	 $('#phone').text(mvo.phone);
    	 $('#addr').text(mvo.addr +""+ mvo.addrDtl);
    	 $('#receiveName').text(mvo.receiveName);
    	 
    	 document.getElementById('sameAsBilling').addEventListener('change', function() {
             if (this.checked) {
                 document.getElementById('receiveName').value = mvo.userName;
                 document.getElementById('receivePhone').value = mvo.phone;
                 document.getElementById('receiveAddr').value = mvo.addr + mvo.addrDtl;
             } else {
                 document.getElementById('receiveName').value = '';
                 document.getElementById('receivePhone').value = '';
                 document.getElementById('receiveAddr').value = '';
             }
         });
     }
  	   function callOrder(){
  		 call_server(searchform, "/realOrder", realOrder);
  	   }
  	   function realOrder(cnt){
  		 if(cnt>0){
				alert("주문완료");
				location.reload();
			}else{
				alert("주문실패");
			}
 		 }
  	  
  	 
     
     
     
     
     
     
     
     
     </script>