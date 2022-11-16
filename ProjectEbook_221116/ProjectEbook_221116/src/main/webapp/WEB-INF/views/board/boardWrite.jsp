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
	<script src="/js/common.js"></script>
	<script type="text/javascript">
		$(function(){ 
			// 벨리데이션 체크
			var formEl = $('form');
			formEl.addEventListener('submit', function(e){
				// 필수 입력
				const titleEl = $('[name=postTitle]');
				const contEl = $('[name=postContent]');
				if(titleEl.value.trim() == ""){
					alert("제목을 입력하세요.");
					$('input').css('border-color', '#F25041');
					return false;
				}
				
				if(contEl.value.trim() == ""){
					alert("내용을 입력하세요.");
					$('input').css('border-color', '#F25041');
					return false;
				}
			});
			
			// 목록 버튼
			$('#btnList').on('click', function(){
				let url = '/board/list?postCategory=${board.postCategory}';
				location.href = url;
			})
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
							<h2>게시글 작성</h2>
						</div>
						<div class="content-body">
							<form class="form-table" action="/board/write?postCategory=${board.postCategory}">
								<input type="hidden"  name="postCategory" value="${postCategory}"/>
								<table class="table">
									<tr>
										<th>제목</th>
										<td><input type="text" class="chk" name="postTitle" placeholder="제목을 입력하세요."/></td>
									</tr>
									<tr>
										<th>작성자</th>
										<td><input type="text" class="chk" name="userId" placeholder="아이디"/></td>
									</tr>
									<tr>
										<th>내용</th>
										<td class="cont">
											<textarea name="postContent" class="chk" placeholder="내용을 입력하세요."></textarea>
										</td>
									</tr>
									<c:if test="${postCategory eq 'refer'}" var="refer" scope="session">
										<tr>
											<th>첨부 파일</th>
											<td><input type="file" name="postFileurl"/></td>
										</tr>
									</c:if>
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