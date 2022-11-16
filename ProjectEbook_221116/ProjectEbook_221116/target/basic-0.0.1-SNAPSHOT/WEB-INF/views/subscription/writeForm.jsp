<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>이북 저북</title>
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/css/common.css"/>
    <link rel="stylesheet" href="/css/custom.css"/>
    <link rel="stylesheet" href="/css/media.css"/>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="/js/common.js"></script>
    <script type="text/javascript">

    </script>
</head>
<body>
<div class="wrapper">
    <div class="components">
        <!-- header -->
        <%@ include file="/WEB-INF/include/common/header.jsp" %>
        <!-- header -->
        <div class="contents">
            <div class="container">
                <div class="content-header">
                    <h2>구독 신청</h2>
                </div>
                <div class="content-body">
                    <form class="form-table" action="">
                        <table class="table">
                            <tr>
                                <th>아이디</th>
                                <td><input type="text" name="userId" placeholder="아이디"/></td>
                            </tr>
                            <tr>
                                <th>결제 방법</th>
                                <td>
                                    <input type="text" name="payMent" value="카드"/>
                                    <!-- <select name="payMent">
                                        <option value="card">카드</option>
                                    </select> -->
                                </td>
                            </tr>
                            <tr>
                                <th>카드 번호</th>
                                <td><input type="number" name="cardNum" placeholder="카드 번호"/></td>
                            </tr>
                            <tr>
                                <th>카드 비밀번호</th>
                                <td><input type="number" name="cardPw" placeholder="카드 비밀번호"/></td>
                            </tr>
                        </table>

                        <div class="btn-group">
                            <a class="btn btn-secondary" href="/">홈</a>
                            <button type="submit" class="btn btn-primary right">등록</button>
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