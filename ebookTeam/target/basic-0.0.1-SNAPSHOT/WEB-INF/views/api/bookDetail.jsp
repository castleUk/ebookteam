<%--
  Created by IntelliJ IDEA.
  User: uk
  Date: 2022-11-19
  Time: 오후 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal modal-m" id="bookDetail">
  <div class="modal-content">
    <div class="modal-header">
      <h3 id="book_title"></h3>
      <div>
        <button type="button" data-dismiss="modal"><img class="ico" src="/img/icon/icon-close.svg"/></button>
      </div>
    </div>
    <div class="modal-body">
      <form id="detail-form" class="detail-form">
        <div class="detail">
          <div class="book-image" id="book_image" style="height:300px;">
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
