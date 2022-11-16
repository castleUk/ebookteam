<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 베스트 도서 -->
	<div class="content best-list">
		<div class="content-header">
			<h2 class="title">베스트 도서</h2>
			<a class="link" href="/api/searchList">더보기</a>
		</div>
		<div class="content-body">

<%-- 							<c:forEach var="best" items="${ bestlist.items }">
								<p>${best}</p>
								<p>${best.title}</p>
								<p><img src="${best.image}"/></p>
							</c:forEach> --%>
			<div class="row">
				<a class="book" href="/book/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
				<a class="book" href="/book/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
				<a class="book" href="/book/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
				<a class="book" href="/book/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- 베스트 도서 -->
	
	<!-- 신간도서 -->
	<div class="content new-list">
		<div class="content-header">
			<h2 class="title">신간 도서</h2>
			<a class="link" href="/api/searchList">더보기</a>
		</div>
		<div class="content-body">
			<div class="row">
				<a class="book" href="#">
					<div class="card book-cont">
						<div class="item-img"></div>
					</div>
				</a>
				<a class="book" href="#">
					<div class="card book-cont">
						<div class="item-img"></div>
					</div>
				</a>
				<a class="book" href="#">
					<div class="card book-cont">
						<div class="item-img"></div>
					</div>
				</a>
				<a class="book" href="#">
					<div class="card book-cont">
						<div class="item-img"></div>
					</div>
				</a>
			</div>
		</div>
		<h2 class="title"></h2>
	</div>
	<!-- 신간도서 -->
	
	<!-- 추천도서-->
	<div class="content rec-list">
		<div class="content-header">
			<h2 class="title">추천 도서</h2>
			<a class="link" href="/api/searchList">더보기</a>
		</div>
		<div class="content-body">
			<div class="row">
				<a class="book" href="/library/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
				<a class="book" href="/library/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
				<a class="book" href="/library/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
				<a class="book" href="/library/list">
					<div class="card book-cont">
						<div class="item-img">이미지 선택하면 도서 페이지로 이동</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- 추천도서-->
