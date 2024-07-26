<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/backimg1.jpg);">
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/backimg2.jpg);">
          <div class="carousel-container">
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/backimg3.jpg);">
          <div class="carousel-container">
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bx bx-left-arrow" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bx bx-right-arrow" aria-hidden="true"></span>
      </a>

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
  </section><!-- End Hero -->
    
<main id="main">
<form id = "hotform">
    <!-- ======= Portfolio Section ======= -->
    <section id="SectionhotItem" class="portfolio">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2> <strong>HOT ITEMS</strong></h2>
        </div>

        <div class="row" data-aos="fade-up" style='cursor:pointer;' id='hotItem'>
        </div>

      </div>
    </section>
    </form>
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
    <form id = "cateform">
      <div class="container">

        <div class="row" data-aos="fade-up">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">전체</li>
              
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" id = "goodsItem">
          
          

        </div>

      </div>
      </form>
    </section><!-- End Portfolio Section -->

    

  </main><!-- End #main -->
 
 
  <form id =hiddenform>
                	<input type='hidden' id='goodsCd' name='goodsCd'>
                  </form>	
  <script>
  
  	function goodsView(cd){
  		location.href="/goods/view?goodsCd="+cd;
  	}
  	
  	
  	
  	
  	call_server(hotform,'/getGoodsthumnail',hotThumnail);
  	function hotThumnail(list){
  		for(var i=0;i<list.length;i++){
  	   		str="<div class=\"col-lg-3 col-md-6 \" onclick=\"goodsView('"+list[i].goodsCd+"');\">";
  	   		str+=" <img src='"+list[i].thumnailUrl+"' class=\"img-fluid\" >";
  	   		str+="  <div>";
  			str+="      <h6>"+list[i].goodsName+"</h6>";
  			str+="   <p>"+list[i].sellPrice+"원</p>";
  			str+=" </div>";
  			str+=" </div>";
  		
      		$('#hotItem').append(str);
  		}
  	}
  	
  	call_server(cateform,'/getctCdList',selectctCd);
  	
  	function selectctCd(list) {
  	    console.log(list);
  	    for (var i = 0; i < list.length; i++) {
  	         str = '<li data-filter=".filter-' + list[i].ctCd + '">' + list[i].ctName + '</li>';
  	        $('#portfolio-flters').append(str);
  	    }
  	    
  	}
  	call_server(cateform,'/getsthumnail',thumnailget);
  	function thumnailget(list){
  		for(var i = 0; i< list.length; i++){
  	 		str ="<div class=\"row portfolio-container\" data-aos=\"fade-up\">";
      		str+="	<div class=\"col-lg-4 col-md-6 portfolio-item filter-"+ list[i].ctCd +"\">";
      		str+="   <img src="+list[i].thumnailUrl+" class=\"img-fluid\" >";
      		str+="	<div class=\"portfolio-info\">";
      		str+="	<h4>"+list[i].goodsName+"</h4>";
      		str+=" 	<p>"+list[i].sellPrice+"</p>";
      		str+=" 	<a href=" +list[i].thumnailUrl+"data-gallery=\"portfolioGallery\" class=\"portfolio-lightbox preview-link\" title=\"App 1\"><i class=\"bx bx-plus\"></i></a>";
      		str+="	<a href= class=\"details-link\" title=\"More Details\"><i class=\"bx bx-link\"></i></a>";
      		str+="	</div>";
      		str+="	</div>";
      		$('#goodsItem').append(str);
  	    }
  		
  	}
  	
  	
  	
  </script>
    