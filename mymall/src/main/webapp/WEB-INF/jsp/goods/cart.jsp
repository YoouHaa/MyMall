<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <main id="main">
    
    

    
    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      		<div class="container">
			<form id = searchform name = searchform>
			 <div class="text-end"> 
			<button type="button" class="btn btn-info" onclick='callOrder();'>주문하기</button>
			</div>
			<div class="card mb-3" >
            <div class="row g-0" id = "cartrider">
              
            </div>
          </div><!-- End Card with an image on left -->
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
    	 for(var i=0;i<list.length;i++){
    		str = "<div class=\"col-md-4\">";
            str+= "<img src=\'"+list[i].thumnailUrl+"' class=\"img-fluid rounded-start\" alt=\"...\">";
            str+= "</div>";
            str+= "<div class=\"col-md-8\">";
            str+= "<div class=\"card-body\">";
            str+= "<h5 class=\"card-title\">'"+list[i].goodsName+"'</h5>";
            str+= "<p class=\"card-text\">'"+list[i].content+"'</p>";
            str+= "<input type=\"number\" id='buyQty"+i+"' value =\'"+list[i].buyQty+"'>"; 
            str+= "<button type=\"button\" class=\"btn btn-primary\" onclick =\"updateQty(buyQty"+i+",'"+list[i].goodsCd+"');\">수정</button>";
            str+= "<button type=\"button\" class=\"btn btn-primary\" onclick =\"del('"+list[i].goodsCd+"');\">삭제</button>";
            str+= "</div>";
            str+= "</div>";
            $('#cartrider').append(str);
			}
     }
     function del(cd){
		 //$(obj).closest('tr').remove();
		 $('#goodsCd').val(cd);
    	 call_server(hiddenform, "/getDelCart", delCartList);
		}
     function delCartList(cnt){
    	 if(cnt>0){
				alert("삭제완료");
				location.reload();
			}else{
				alert("삭제실패");
			}
     }
     function updateQty(by,cd){
    	 $('#goodsCd').val(cd);
    	 $('#buyQty').val($(by).val());
    	 call_server(hiddenform, "getUpQty", upQty);
     }
     function upQty(cnt){
    	 if(cnt>0){
				alert("수정완료");
				location.reload();
			}else{
				alert("수정실패");
			}
     }
     function callOrder(){
   		location.href="/order";
   	}
     
     
     
     
     
     
     
     
     
     </script>