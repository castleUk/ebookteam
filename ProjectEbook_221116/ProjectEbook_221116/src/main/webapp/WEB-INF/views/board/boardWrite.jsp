<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이북저북</title>
	<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/css/common.css" />
	<link rel="stylesheet" href="/css/custom.css" />
	<link rel="stylesheet" href="/css/media.css" />
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
	<script src="/js/common.js"></script>
	<script type="text/javascript">
	$(function(){ 
		// 벨리데이션 체크
		$.extend( $.validator.messages, {
			required: "필수 항목입니다.",
			remote: "항목을 수정하세요.",
			email: "유효하지 않은 E-Mail주소입니다.",
			url: "유효하지 않은 URL입니다.",
			date: "올바른 날짜를 입력하세요.",
			dateISO: "올바른 날짜(ISO)를 입력하세요.",
			number: "유효한 숫자가 아닙니다.",
			digits: "숫자만 입력 가능합니다.",
			creditcard: "신용카드 번호가 바르지 않습니다.",
			equalTo: "같은 값을 다시 입력하세요.",
			extension: "올바른 확장자가 아닙니다.",
			maxlength: $.validator.format( "{0}자를 넘을 수 없습니다. " ),
			minlength: $.validator.format( "{0}자 이상 입력하세요." ),
			rangelength: $.validator.format( "문자 길이가 {0} 에서 {1} 사이의 값을 입력하세요." ),
			range: $.validator.format( "{0} 에서 {1} 사이의 값을 입력하세요." ),
			max: $.validator.format( "{0} 이하의 값을 입력하세요." ),
			min: $.validator.format( "{0} 이상의 값을 입력하세요." ),
		} );
		
		$('#WriteForm').validate({
			submitHandler: function(form){
				$.ajax({
					url : "/board/write?postCategory=${board.postCategory}",
					type : "POST",
					data : $("#WriteForm").serialize() ,
					dataType: 'JSON',
					success : function(data){
						alert("등록 되었습니다.");
					}
				});
			} ,
			rules:{
				postTitle : {required:true},
				userId : {required:true},
				postContent : {required:true}
			}
		});
		});
	</script>
</head>
<body>
	<div class="wrapper">
		<div class="components">
			<!-- header -->
			<%@ include file="/WEB-INF/include/common/header.jsp" %>
			<!-- header -->
			<div class="contents view">
				<%@ include file="/WEB-INF/include/common/BoardSidebar.jsp" %>
				<div class="content">
					<div class="container">
						<div class="content-header">
							<h2>${ pageMenu.menu_name } 작성</h2>
						</div>
						<div class="content-body">
							<form id="WriteForm" class="form-table" action="/board/write?postCategory=${board.postCategory}">
								<input type="hidden"  name="postCategory" value="${postCategory}"/>
								<table class="table">
									<tr>
										<th>제목</th>
										<td><input type="text" name="postTitle" placeholder="제목을 입력하세요."/></td>
									</tr>
									<tr>
										<th>작성자</th>
										<td><input type="text" name="userId" placeholder="아이디"/></td>
									</tr>
									<tr>
										<th>내용</th>
										<td class="cont">
											<textarea name="postContent" placeholder="내용을 입력하세요."></textarea>
										</td>
									</tr>

								</table>
							
								<div class="btn-group">
									<button id="btnList" class="btn btn-secondary">목록</button>
									<button type="submit" id="btnCreate" class="btn btn-primary right">등록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>