<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 목록</title>
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="./bootstrap-4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/common.css"/>
    <link rel="stylesheet" href="/css/custom.css"/>
    <link rel="stylesheet" href="/css/media.css"/>

    <script type="text/javascript">
    </script>
</head>
<body>
<div class="wrapper">
	<div class="components">
	 	<!-- header -->
		<%@ include file="/WEB-INF/include/common/header.jsp" %>
		<!-- header -->
		
		<div class="contents view">
			<!-- sidebar -->
			<%@ include file="/WEB-INF/include/common/bookSidebar.jsp" %>
			<!-- sidebar -->
			<div class="container">
				<!-- content -->
				<div class="content w-setting">
					<!-- 검색 -->
					<form class="search-from group-3" name="search_form" action="/api/searchList" method="post">
						<select name="type" required>
                <option selected value="">검색 내용 선택</option>
                <option value="title">제목</option>
                <option value="author">저자</option>
                <option value="publisher">출판사</option>
            </select>
            <input type="text" name="keyword" value=""/>
            <button type="submit" value="검색">검색</button>
					</form>
					<!-- 검색 -->
					
					<!-- 목록 -->
					<div class="list-content">
						<table class="table">
		          <thead>
			          <tr style="display: none">
			              <th>사진</th>
			              <th>제목</th>
			              <th>isbn</th>
			              <th>저자</th>
			              <th>출판사</th>
			              <th style="display:none;">책 설명</th>
			              <th>상세페이지</th>
			          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${list}" var="list">
			              <tr onclick="PopupEmpInfo(this)">
			                  <td><img src="${list.image}" width="230" height="270" class="card-img-top"
			                           alt="..."></td>
			                  <td>${list.title}</td>
			                  <td>${list.isbn}</td>
			                  <td>${list.author}</td>
			                  <td>${list.publisher}</td>
			                  <td style="display:none" ;>${list.description}</td>
			                  <td>
			                      <button class="view" data-toggle="modal" data-target="#bookDetail">상세보기</button>
			                  </td>
			              </tr>
			          </c:forEach>
		          </tbody>
		          <tfoot>
		          	<td colspan="5" class="tablefoot"></td>
		          </tfoot>
	      		</table>
      		</div>
					<!-- 목록 -->
        </div>   
			</div>
		</div>
	</div>
</div>
</body>





<!-- 모달 시작-------------------------------------------------------------------------------------------->
<div class="modal modal-m" id="bookDetail">
    <div class="modal-content">
        <div class="modal-header">
            <h3 id="book_title"></h3>
            <div>
                <img id="modalClose" class="ico" src="/img/icon/icon-close.svg"/>
            </div>
        </div>
        <div class="modal-body">
            <form id="detail-form" class="detail-form">
                <div class="detail">
                    <div class="book-image" id="book_image" style="height:400px;width: 200px">
                    </div>

                    <div class="book-inf">
                        <div class="content-header">
                            <h3>책 정보</h3>
                        </div>
                        <div class="content-body">
                            <ul>
                                <li>
                                    <span>저자</span>
                                    <span id="book_author"></span>
                                </li>

                                <li>
                                    <span>출판사</span>
                                    <span id="book_publisher"></span>
                                </li>

                                <li>
                                    <span>ISBN</span>
                                    <span id="book_isbn"></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="book-cont">
                    <div class="content-header">
                        <h3>도서 내용</h3>
                    </div>
                    <div class="content-body">
                        <p id="book_description"></p>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button id="gobook" class="btn btn-primary">내서재</button>
        </div>
    </div>
</div>


<script>
    function PopupEmpInfo(clicked_element) {
        var row_td = clicked_element.getElementsByTagName("td");
        // var modal = document.getElementById("myModal");
        document.getElementById("book_image").innerHTML = row_td[0].innerHTML;
        document.getElementById("book_title").innerHTML = row_td[1].innerHTML;
        document.getElementById("book_isbn").innerHTML = row_td[2].innerHTML;
        document.getElementById("book_author").innerHTML = row_td[3].innerHTML;
        document.getElementById("book_publisher").innerHTML = row_td[4].innerHTML;
        document.getElementById("book_description").innerHTML = row_td[5].innerHTML;
    }
    //==============================================================================
    var close = document.getElementById('modalClose')
    close.addEventListener("click", close_modal)
    function close_modal(event) {
        $('#bookDetail').modal('hide')
    }
    //=====================================================================
    var gobook = document.getElementById('gobook')
    gobook.addEventListener("click", go_book)
    function go_book(event) {
        var isbn = $('#book_isbn').text()
        console.log(isbn)
        $.ajax({
            url: "/book/libinsert",
            method: "post",
            data: {"isbn": isbn},
            success: function (data) {
                alert("전송성공");
            },
            error: function (error) {
                alert("전송실패!");
            }
        });
    }
</script>
</html>