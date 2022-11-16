<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="sidebar">
	<ul class="nav">
		<li class="link-item active">
			<a class="link">도서</a>
		</li>
		<ul class="sub-nav">
			<li class="link-item">
				<a class="link" href="#">소설</a>
				<%-- <c:forEach var="menu" items="${boardMenu}">
					<a class="link" href="/board/${menu.postCategory}/list">${menu.menu_name}</a>
				</c:forEach> --%>
			</li>
		</ul>
		<li class="link-item">
			<a class="link">마이페이지</a>
		</li>
		<ul class="sub-nav">
			<li class="link-item">
				<c:forEach var="menu" items="${myMenu}">
					<a class="link" href="/user/${menu.postCategory}">${menu.menu_name}</a>
				</c:forEach>
			</li>
		</ul>
	</ul>
</nav>