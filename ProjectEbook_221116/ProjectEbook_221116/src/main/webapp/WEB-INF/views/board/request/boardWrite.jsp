<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<script type="text/javascript">
	$(function(){
		// 벨리데이션 체크
		var formEl = $('form');
		formEl.addEventListener('submit', function(e){
			// 필수 입력
			const idEl = $('#userId');
			const titleEl = $('#reqBook');
			const contEl = $('#reqCont');
			
			if(idEl == ""){
				alert("아이디를 입력하세요.");
				$('input').css('border-color', '#F25041');
				return false;
			}
			
			if(titleEl == ""){
				alert("책 제목을 입력하세요.");
				$('input').css('border-color', '#F25041');
				return false;
			}
			
			if(contEl == ""){
				alert("내용을 입력하세요.");
				$('textarea').css('border-color', '#F25041');
				return false;
			}
		});
	});
</script>

<form class="request-form" action="/board/list/requestWrite?postCategory=${postCategory}" >
	<input type="hidden"  name="postCategory" value="${postCategory}"/>
	<input type="hidden" name="req_process" value="요청"/>
	<div class="input-form">
		<input type="text" id="userId" name="userId" placeholder="아이디"/>
		<input type="text" id="reqBook" name="req_book" placeholder="책 제목"/>
		<input type="text" id="reqProcess" name="req_process" value="요청" disabled/>
	</div>
	<div class="group-2">
		<textarea class="cont" id="reqCont" name="req_cont" placeholder="댓글을 작성하세요."></textarea>
		<button type="submit" class="btn btn-primary">등록</button>
	</div>
</form>
