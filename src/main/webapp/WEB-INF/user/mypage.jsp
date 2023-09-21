<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LeafPage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          crossorigin="anonymous">
    <link rel="stylesheet" href="../css/mypage.css">

</head>

<body>
<%@include file="../component/header.jsp" %>

<section class="mp_container">
    <div class="top">
        <div class="top_box">
            <h5 class="top_box_title">Guest</h5>
            <button type="button" class="btn1 btn-sm"><a href="myInfoView.do">내 정보 수정</a></button>
        </div>
        <div class="top_box">
            <h5 class="top_box_title">현재 대여 권수</h5>
            <p class="top_box_content">${books.size()}/5</p>
        </div>
        <div class="top_box">
            <h5 class="top_box_title">전체 대여 권수</h5>
            <p class="top_box_content">${totalRentals}</p>
        </div>
    </div>

    <div class="bottom">
        <ul class="flex bottom_tab">
            <li class="on"><a href="#">대여중 도서</a></li>
            <li><a href="#">반납한 도서</a></li>
        </ul>

        <div class="bottom_content on">
            <ul class="flex rent_book">
                <c:forEach var="book" items="${books}" begin="0" end="4" step="1">
                    <li id="bookLi">
                        <c:set var="dbViewerWidth" value="${book.modal_width}"/>
                        <c:set var="viewerY" value="${book.scroll_y}"/>
                        <div class="card" data-bs-toggle="modal"
                             data-bs-target="#${book.rental_no}">
                            <img src="image/마주.png" class="card-img-top" alt="..."/>
                            <c:if test="${book.modal_width eq 321}">
                                <img class="device-icon" src="../css/icons/phone_iphone.png"/>
                            </c:if>
                            <c:if test="${book.modal_width ne 321}">
                                <img class="device-icon"
                                     src="../css/icons/desktop_windows.png"/>
                            </c:if>
                            <div class="card-body">
                                <h5 class="card-title">${book.book_name}</h5>
                                <p class="card-author">${book.book_author_name}</p>
                                <p class="card-period">${book.rental_date} ~
                                        ${book.scheduled_return_date}</p>
                            </div>
                        </div>
                        <button type="button" class="btn1 btn-sm"
                                onclick="returnCheck(`${book.book_name}`, ${book.rental_no})">
                            반납하기
                        </button>
                    </li>
                    <%--책 뷰어--%>
                    <%@include file="../component/bookModal.jsp" %>

                </c:forEach>


                <%-- <li>--%>
                <%-- <div class="card-layout">--%>
                <%-- <div class="card">--%>
                <%-- <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
                <%-- <div class="card-body">--%>
                <%-- <h5 class="card-title">마주</h5>--%>
                <%-- <p class="card-author">최은미</p>--%>
                <%-- <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
                <%-- </div>--%>
                <%-- </div>--%>
                <%-- <button type="button" class="btn1 btn-sm"
                    href="#">반납하기</button>--%>
                <%-- </div>--%>
                <%-- </li>--%>

            </ul>
        </div>

        <div class="bottom_content">
            <ul class="flex return_book">
                <c:forEach var="userReturnedBook" items="${userReturnedBooks}">
                    <li>
                        <div class="card">
                            <img src="image/마주.png" class="card-img-top" alt="..."/>
                            <div class="card-body">
                                <h5 class="card-title">${userReturnedBook.book_name}</h5>
                                <p class="card-author">${userReturnedBook.book_author_name}</p>
                                <p class="card-period">반납일 : ${userReturnedBook.actual_return_date}
                                </p>
                            </div>
                        </div>
                        <button type="button" class="btn1 btn-sm" href="#">반납하기</button>
                    </li>
                </c:forEach>
                <%-- <li>--%>
                <%-- <div class="card">--%>
                <%-- <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
                <%-- <div class="card-body">--%>
                <%-- <h5 class="card-title">마주탭변</h5>--%>
                <%-- <p class="card-author">최은미</p>--%>
                <%-- <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
                <%-- </div>--%>
                <%-- </div>--%>
                <%-- </li>--%>
            </ul>
        </div>
    </div>
</section>


<script>
    let dbViewerWidth = ${ dbViewerWidth };
    let viewerY = ${ viewerY };
</script>
<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="../js/mypage.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>

</html>