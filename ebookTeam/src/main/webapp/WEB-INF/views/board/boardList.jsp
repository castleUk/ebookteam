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
							<h2>${ pageMenu.menu_name }</h2>
						</div>
						<div class="content-middle">
							<form id="boardSearch" name="boardSearch" action="/board/list/search" method="GET">
								<div class="group-3">
									<select name="search" id="search" onchange="chageSelect()">
										<option value="all">전체</option>
										<option value="postTitle">제목</option>
										<option value="userId">작성자</option>
									</select>
									<input type="search" name="keyword" id="keyword" required/>
									<button type="submit" id="btnSearch" class="btn btn-primary">검색</button>
								</form>
							</div>
						</div>

						<c:choose>
							<c:when test="${postCategory eq 'qna' or postCategory eq 'notice'}">
								<%@ include file="/WEB-INF/views/board/notice/boardList.jsp" %>
							</c:when>
							
							<c:when test="${postCategory eq 'commu'}">
								<%@ include file="/WEB-INF/views/board/comm/boardList.jsp" %>
							</c:when>
							
							<c:when test="${postCategory eq 'bookrequest'}">
								<div class="content-body">
									<!-- 도서요청 작성 -->
									<c:choose>
										<c:when test="${not empty user}">
											<%@ include file="/WEB-INF/views/board/request/boardWrite.jsp" %>
										</c:when>
										<c:otherwise>
											<div class="t-center" style="padding: 10px;">
												로그인 후 도서 요청 가능합니다.
											</div>
										</c:otherwise>
									</c:choose>
									<!-- 도서요청 작성 -->
									
									<!-- 도서요청 목록 -->
									<%@ include file="/WEB-INF/views/board/request/boardList.jsp" %>
									<!-- 도서요청 목록 -->
								</div>
							</c:when>
						</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>