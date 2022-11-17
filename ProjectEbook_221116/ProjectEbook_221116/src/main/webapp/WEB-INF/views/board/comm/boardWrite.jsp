<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form class="comment-form" action="/board/view/comment?postCategory=${board.postCategory}&postKey=${board.postKey}">
	<input type="hidden"  name="postCategory" value="${board.postCategory}"/>
	<input type="hidden"  name="postKey" value="${board.postKey}"/>
	<div class="input-form">
		<input type="text" name="userId" placeholder="아이디"/>
	</div>
	<div class="group-2">
		<textarea class="cont" name="commCont" placeholder="댓글을 작성하세요."></textarea>
		<button type="submit" class="btn btn-primary">등록</button>
	</div>
</form>