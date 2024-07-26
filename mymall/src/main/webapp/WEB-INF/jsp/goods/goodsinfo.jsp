<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <main id="main">
    
    

    
    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">
          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center" id = "slide">
              </div>
              </div>
              <div class="swiper-pagination"></div>
            </div>
          <div class="col-lg-4" id = "contentt">
          </div>
        </div>
      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->
  
  <form id="hiddenform">
  	<input type='hidden' id='goodsCd' name='goodsCd' value='${goods.goodsCd}'>
  	<input type='hidden' id='buyQty' name='buyQty' >
  </form>
  
  <script>
  
  	call_server(hiddenform, "/goodsInfo", goodsInfoset);
  		
  	function goodsInfoset(vo){
  		
  		for(var i=0;i<vo.imglist.length;i++){ 
	  		str= 	"<div class=\"swiper-slide\">";
			str+=  	"<img src='"+vo.imglist[i].imgUrl+"' alt=\"\">";
			str+=	"</div>";
			$('#slide').append(str);
  		}
  		
  		str= "<h3>"+vo.goodsName+"</h3>";
  		str+=  "<ul>";
  		str+=  "<li><strong>제조국</strong>: 한국</li>";
  		str+=  "<li><strong>정상가</strong>: "+vo.normalPrice+" 원</li>";
  		str+=  "<li><strong>판매가</strong>: "+vo.sellPrice+" 원</li>";
  		str+=  "<li><input type =\"number\" id =\"buyQtying\" name =\"buyQty\" value = 1 ><li>";
  		str+=  "<li><button type=\"button\" class=\"btn btn-info\" onclick = 'bag();'>장바구니</button>";
  		str+=  "<button type=\"button\" class=\"btn btn-info\" onclick = 'buying();'>바로구매</button></li>";
  		str+=  "</ul>";
  		str+=  "</div>";
  		str+=  " <div class=\"portfolio-description\">";
  		str+=  "<h2>상품설명</h2>";
  		str+=  "<p>";
  		str+=  vo.content;
  		str+=  "</p>";
  		$('#contentt').html(str);
  	}
  	function bag(){
  		$('#buyQty').val($('#buyQtying').val());
  		call_server(hiddenform, "/cartInfo" , cartInto);
  	}
  	function cartInto(cnt){
  		if(cnt>0){
			alert("등록성공");
		}else{
			alert("등록실패");
		}
	}
  		
  		
  </script>