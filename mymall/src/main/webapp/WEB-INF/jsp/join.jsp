<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>My Shop Join</title>

<!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">
</head>


<body>
	<main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              
              <div class="card mb-3">

                <div class="card-body">
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">회원가입</h5>
                  </div>

                  <form id="joinform" class="row g-3 needs-validation" novalidate>

                    <div class="col-12">
                      <label for="yourUsername" class="form-label">회원 ID</label>
                      <div class="input-group has-validation">
                        <input type="text" id="userId" name="userId" class="form-control" required style="width:200px;">
                        <div class="invalid-feedback">아이디를 입력하시오.</div>
                        
                      </div>
                      <div class="input-group has-validation">
                      	<button class="btn btn-primary w-20" type="button" onclick="idChk();">중복체크</button>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">성명</label>
                      <input type="text" id="userName" name="userName" class="form-control" required>
                      <div class="invalid-feedback">패스워드를 입력하시오.</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">패스워드</label>
                      <input type="password" id="userPwd" name="userPwd" class="form-control" required>
                      <div class="invalid-feedback">성명을 입력하시오.</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">전화번호</label>
                      <input type="text" id="phone" name="phone" class="form-control" required>
                      <div class="invalid-feedback">전화번호를 입력하시오.</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">이메일</label>
                      <input type="text" id="email" name="email" class="form-control" required>
                      <div class="invalid-feedback">이메일을 입력하시오.</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">거주지 ex)서울,의정부시</label>
                      <input type="text" id="addr" name="addr" class="form-control" required>
                      <div class="invalid-feedback">거주지를 입력하시오.</div>
                    </div>

                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="button" onclick="userJoin();">join</button>
                    </div>
                    
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <b>이젠아카데미</b>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/assets/vendor/quill/quill.min.js"></script>
  <script src="/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>
  <script src="/assets/js/jquery-3.7.1.js"></script>
  <script src="/assets/js/common.js"></script>
  
  <script>
   
   var chkId = false;
  
   function userJoin(){
	   if(!chkId){
		   alert("아이디 중복체크를 하십시오.");
		   return;
	   }
	   call_server(joinform, "/joinProcess", joinUser)
   }
   function joinUser(cnt){
	   if(cnt>0){
			alert("가입완료");
			location.href="/login";
		}else{
			alert("가입실패");
		}
}
   function idChk(){
	   call_server(joinform, "/chkJoinId", validationId);
   }
   function validationId(cnt){
	   if(cnt>0){
		   alert("중복된 아이디입니다.");
		   chkId = false;
	   }else{
		   alert("사용가능한 아이디입니다.");
		   chkId = true;
	   }
	   
   }
   
   
  </script>

</body>
</html>