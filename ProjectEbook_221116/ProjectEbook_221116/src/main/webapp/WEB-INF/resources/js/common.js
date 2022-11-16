/**
 * 
 */

$(function(){
	
	// 상단 메뉴
	$('#btnMenu').on('click', function(){
		$('#headMenu').toggle('slow');
	});
	
	
	// 로그인
	$('#btnLogin').on('click',function(){
	  $('#Login').fadeIn();
	});

	// 로그인 버튼
	$('#btn_login').on('click', function () {
		$.ajax({
			url: "/user/login",
			type: 'post',
			data: {
				userId: $("#userId"),
				userPass: $("#userPass"),
			},
			success: function (data) {
				alert("전송성공")
			},
			error: function () {
				alert("error");
			}
		});
	})

	
	$('#btnClose').on('click',function(){
	  $('#Login').fadeOut();
	});
	
	// 회원가입
	$('#btnRegister').on('click',function(){
	    $('#Register').fadeIn();
  });	
	
	$('#btnClose').on('click',function(){
	  $('#Register').fadeOut();
	});

	// $('#btnDelete').on('click',function (){
	// 	$('bookDetail').fadeIn();
	// });

	// $('#btnDetail').on('click',function(){
	// 	alert("")
	// 	$('#detailmodal').fadeIn();
	// });











	//이미지 슬라이드(좌우)
	var currentIndex = 0;
	
	setInterval(function(){
    if(currentIndex < 2){
        currentIndex++;
    } else {
        currentIndex = 0;
    }
    var slidePosition = currentIndex * (-100)+"%";
    $(".slide-content").animate({ left:slidePosition },600);
},6000);

});