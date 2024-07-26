<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mall.table.vo.UserInfoVO" %>
<%
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		System.out.println("=====================");
		if(uservo!=null){
		System.out.println(uservo.getUserId());
		}
 %>
  
  <main id="main" class="main">

    <section class="section">
    <form id = "searchform">
    <input type='hidden' id="currentPage" name="currentPage" value="1">
      <div class="row">
           <div class="card">
            <div class="card-body">
              <!-- Table with hoverable rows -->
              <table class="table table-hover" id="InquiryTable">
                <thead>
                <h5>회원문의</h5>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">문의유형</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">제목</th>
                    <th scope="col">문의 등록일</th>
                    <th scope="col">답변여부</th>
                    <th scope="col">답변등록일</th>
                  </tr>
                </thead>
                <tbody>
                  
                    
                </tbody>
              </table>
              <!-- End Table with hoverable rows -->
			  <nav aria-label="Page navigation example">
                <ul class="pagination" id = "inquiryPage">
                 
                </ul>
                <button type="button" class="btn btn-primary" onclick = 'newReply();'>문의하기</button>
              </nav><!-- End Pagination with icons -->
			   	
            </div>
          </div>
        </div>
        </form>
    </section>
  </main>
  
    <div class="modal fade" id="replyInfo" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
           <div class="modal-header">
             <h5 class="modal-title">문의상세</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  id = "DetailTable" >
                <thead>
                  <tr>
                    <th scope="col">제목</th>
                    <td id = "title"></td>
                    </tr>
                    <tr>
                    <th scope="col">유형</th>
                    <td id = "boardType"></td>
                    </tr>
                    <th scope="col">회원ID/명</th>
                    <td id = "userIdTxt"></td>
                    <tr>
                    <th scope="col">문의일</th>    
                    <td id = "replyDt"></td>                            
                    </tr>
                    <th scope="col">첨부파일</th>
                    <td id = attchFile></td>
                    <tr>
                    <th scope="col">문의내용</th>
                    <td id = "content"></td>
                    </tr>
                    <th scope="col">답변내용</th>
                    <td><textarea id="replyContent" rows="4" cols="50"></textarea></td>
                </thead>
           		<tbody>
           		</tbody>
              </table>
              </div>
              <div class="modal-footer">
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
              </div>
              </div>
              </div>
              
              <div class="modal fade" id="replyadd" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
         <form id = "modalaform">
           <div class="modal-header">
             <h5 class="modal-title">문의하기</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           
           <div class="modal-body">
             <table class="table table-hover"  id = "DetailTable" >
                <thead>
                  <tr>
                    <th scope="col">제목</th>
                    <td><input type = "text" id = "newtitle" name = "title"></td>
                    </tr>
                    <tr>
                    <th scope="col">유형</th>
                    <td>
                    <select class="form-control" id="newboardType" name="boardType">
                    	 <option value=''>선택</option>
                         <option value='로그인'>로그인</option>
                         <option value='배송'>배송</option>
                         <option value='상품'>상품</option>
                         <option value='기타'>기타</option>
                       </select>
                    </td>
                    </tr>
                    <tr>
                    <th scope="col">회원ID/명</th>
                    <td id = "userIdandname"></td>
                    </tr>
                    <tr>
                    <th scope="col">첨부파일</th>
                    <td><input type = "text" id = "newattchFile" name = "attchFile"></td>
                    </tr>
                    <tr>
                    <th scope="col">문의내용</th>
                    <td><textarea id="newContent" rows="4" cols="50" name = "content"></textarea></td>
                    </tr>
                    
                </thead>
           		<tbody>
           		</tbody>
              </table>
              </div>
              <div class="modal-footer">
              <div class="form-check form-check-inline mt-3">
   			 <input class="form-check-input" type="checkbox" name="secretYn" id="secret">
   			 <label class="form-check-label">비밀글 설정</label>
   			 <input type = "text" id = "secretPwd" name = "secretPwd">
			</div>
              <button type="button" class="btn btn-primary" onclick = 'realadd();'>문의등록</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
           </div>
           </form>
              </div>
              </div>
              </div>
              
              
               <div class="modal fade" id="secretP" tabindex="-1">
       <div class="modal-dialog modal-xl modal-dialog-centered">
         <div class="modal-content">
         <form id = "modalaform">
           <div class="modal-header">
             <h5 class="modal-title">비밀글입니다</h5>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
           </div>
           <div class="modal-body">
             <table class="table table-hover"  id = "DetailTable" >
                <thead>
                  <tr>
                    <th scope="col">비밀번호</th>
                    <td><input type = "text" id = "pwd" name = "secretPwd"></td>
                    <td>
                    <button type="button" class="btn btn-primary" onclick = 'secPwd();'>확인</button>
                    </td></tr>
                    </thead>
                    </table>
                    </div>
           </form>
              </div>
              </div>
              </div>
        
            <form id="hiddenform">
  	<input type='hidden' id='userId' name='userId'>
  	<input type='hidden' id='boardSeq' name='boardSeq'>
  	<input type='hidden' id='hsecretPwd' name='secretPwd'>
  	<input type='hidden' id='rContent' name='replyContent'>
  </form>
  
 <script src="/assets/js/paging.js"></script> 
 
<script>

		call_server(searchform,'/getInquiryList',getInquiry);
		
		function getInquiry(vo){
					list = vo.list;
				$('#InquiryTable > tbody').empty();
				for(var i=0;i<list.length;i++){
					str="<tr onclick=\"Detail('"+list[i].userId+"','"+list[i].boardSeq+"','"+list[i].secretYn+"');\" style=\"cursor:pointer;\">";
					str+="<th scope=\"row\">"+((Number(vo.currentPage)-1)*vo.countPerPage+(i+1))+"</th>";
					str+="<td>"+list[i].boardType+"</td>";
					str+="<td>"+list[i].userId+"</td>";
					str+="<td>"+list[i].userName+"</td>";
					str+="<td>"+list[i].title+"</td>";
					str+="<td>"+list[i].regDt+"</td>"; 
					str+="<td>"+list[i].replyYn+"</td>";
					str+="<td>"+list[i].replyDt+"</td>";
					str+="</tr>";
					$('#InquiryTable tbody').append(str);	
				}
				setPaging(inquiryPage, vo.startPage, vo.endPage, 'inquirySearch');

		}
				</script>
				<script>
				function Detail(Id, seq , yn){
					$('#userId').val(Id);
					$('#boardSeq').val(seq);
					if(yn == "on"){
						$('#secretP').modal('show');	
					}else{
					call_server(hiddenform,'/getDetailReply',InquiryDetail);
					}
					}
				function secPwd(){
					//$('#hsecretPwd').val( $('#pwd').val() );
					call_server(hiddenform,'/getDetailReply',InquiryDetail);
				}
				function InquiryDetail(vo){
					if(vo.secretPwd!=$('#pwd').val()){
						alert("비밀번호가 일치하지 않습니다.");
						return;
					}else{
						$('#DetailTable > tbody').empty();
						$('#title').text(vo.title);
						$('#boardType').text(vo.boardType);
						$('#userIdTxt').text(vo.userId + '/' + vo.userName);
						$('#replyDt').text(vo.replyDt);
						$('#attchFile').text(vo.attchFile);
						$('#content').text(vo.content);
						$('#replyContent').text(vo.replyContent);
						$('#secretP').modal('hide');	
						$('#replyInfo').modal('show');		//모달 열기
					}
					}	
				</script>
				<script>
				function replyAdd(){
					$('#rContent').val($('#replyContent').val());
					call_server(hiddenform,'/getReplyAdd',replyAdding);
				}
				function replyAdding(cnt){
					if(cnt>0){
						alert("답변등록");
						$('#replyInfo').modal('hide');	//모달 닫기.
						inquirySearch();
					}else{
						alert("답변실패");
					}
				}
				function inquirySearch(no){
					$('#currentPage').val(no);
					call_server(searchform,'/getInquiryList',getInquiry);
				}
				function newReply(){
					<% if(uservo!=null && uservo.getUserId()!=null ) {%>
					$('#userIdandname').text('<%=uservo.getUserId()%>/<%=uservo.getUserName()%>');
					$('#replyadd').modal('show');
					<% } else { %>
						alert("로그인후 사용가능합니다")
						location.href="/login";
					<% } %>
				}
				function realadd(){
					call_server(modalaform,'/getReplyadding',insertReply);
				}
				function insertReply(cnt){
					if(cnt>0){
						alert("문의등록");
						$('#replyadd').modal('hide');
						inquirySearch();
					}else{
						alert("등록실패");
					}
				}
				</script>
				
				
				
				
				
		

