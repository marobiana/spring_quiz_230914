<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<%-- AJAX를 사용하려면 jquery 원본 필요 --%>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<!-- 외부 stylesheet -->
<link rel="stylesheet" type="text/css" href="/css/booking/style.css">
</head>
<body>
	<div id="wrap" class="container">
	    <header class="d-flex justify-content-center align-items-center">
	        <div class="display-4">통나무 펜션</div>
	    </header>
	    <nav>
	        <ul class="nav nav-fill">
	            <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">팬션소개</a></li>
	            <li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">객실보기</a></li>
	            <li class="nav-item"><a href="/booking/make-booking-view" class="nav-link text-white font-weight-bold">예약하기</a></li>
	            <li class="nav-item"><a href="/booking/booking-list-view" class="nav-link text-white font-weight-bold">예약목록</a></li>
	        </ul>
	    </nav>
	    <section class="banner bg-info">
            <img id="bannerImage" src="/img/test06_banner1.jpg" alt="banner" width="1110" height="500">
        </section>
        <section class="reserve bg-primary d-flex">
            <section class="real-time-reserved col-4 d-flex justify-content-center align-items-center">
                <div class="display-4 text-white">실시간<br>예약하기</div>
            </section>
            <section class="confirm col-4">
                <div id="memberBox" class="mr-3 pt-3">
                	<span class="reserve-confirm-text">예약 확인</span>
                    <div class="d-flex align-items-center justify-content-end mt-3">
                        <span class="text-white mr-2">이름</span>
                        <input type="text" id="name" class="form-control col-9">
                    </div>
                    <div class="d-flex align-items-center justify-content-end mt-3">
                        <span class="text-white mr-2">전화번호</span>
                        <input type="text" id="phoneNumber" class="form-control col-9">
                    </div>

                    <!-- 버튼 -->
                    <div class="d-flex justify-content-end mt-3">
                        <button type="button" id="checkBookingBtn" class="btn btn-success">조회하기</button>
                    </div>
                </div>
            </section>
            <section class="inquiry col-4 d-flex justify-content-center align-items-center">
                <div class="text-white">
                    <h4 class="font-weight-bold">예약문의:</h4>
                    <h1>010-<br>0000-1111</h1>
                </div>
            </section>
        </section>
	    <footer>
	        <small class="text-secondary">
	            제주특별자치도 제주시 애월읍<br>
	            사업자등록번호: 111-22-255222 / 농어촌민박사업자지정 / 대표:김통목<br>
	            Copyright 20XX tongnamu. All right reserved.
	        </small>
	    </footer>
	</div>
	
<script>
	$(document).ready(function() {
		// 조회하기 버튼 클릭
		$('#checkBookingBtn').on('click', function() {
			//alert("클릭");
			let name = $('#name').val().trim();
			let phoneNumber = $('#phoneNumber').val().trim();
			
			if (!name) {
				alert("이름을 입력하세요.");
				return;
			}
			
			if (!phoneNumber) {
				alert("전화번호를 입력하세요.");
				return;
			}
			
			$.ajax({
				// request
				type:"post"
				, url:"/booking/check-booking"
				, data:{"name":name, "phoneNumber":phoneNumber}
				
				// response
				, success:function(data) {
					
				}
				, error:function(request, status, error) {
					alert("조회하는데 실패했습니다.");
				}
			});
		});
	});
</script>
</body>
</html>



