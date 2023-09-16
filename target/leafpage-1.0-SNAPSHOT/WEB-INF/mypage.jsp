<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LeafPage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/mypage.css">
</head>
<body>
<header>
    <nav class="navbar index-nav">
        <div class="container-fluid">
            <span class="navbar-brand mb-0 h1"><img src="../css/icons/nest_eco_leaf.png" /> </span>
            <span></span>
            <span>
            <button type="button" class="btn1 btn-sm" href="#">로그아웃</button>
          </span>
        </div>
    </nav>
</header>

<a href="mypageInfo.do"><h4>요청보내자</h4></a>

<%--<c:forEach var="books" items="${books}">--%>
<%--    <div>--%>
<%--        ${books.returned_book}--%>
<%--    </div>--%>
<%--</c:forEach>--%>

<section class="mp_container">
    <div class="top">
        <div class="top_box">
            <h5 class="top_box_title">Guest</h5>
          <button type="button" class="btn1 btn-sm"><a href="/myInfoView.do">내 정보 수정</a></button>
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
                   <li>
                       <div class="card">
                            <img src="image/마주.png" class="card-img-top" alt="..." />
                              <div class="card-body">
                                <h5 class="card-title">${book.book_name}</h5>
                                <p class="card-author">${book.author_name}</p>
                                <p class="card-period">${book.rental_date} ~ ${book.scheduled_return_date}</p>
                              </div>
                       </div>
                    <button type="button" class="btn1 btn-sm" href="#">반납하기</button>
                   </li>
               </c:forEach>
<%--                <li>--%>
<%--                    <div class="card-layout">--%>
<%--                        <div class="card">--%>
<%--                            <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                            <div class="card-body">--%>
<%--                                <h5 class="card-title">마주</h5>--%>
<%--                                <p class="card-author">최은미</p>--%>
<%--                                <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <button type="button" class="btn1 btn-sm" href="#">반납하기</button>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card-layout">--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <button type="button" class="btn1 btn-sm" href="#">반납하기</button>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card-layout">--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <button type="button" class="btn1 btn-sm" href="#">반납하기</button>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card-layout">--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <button type="button" class="btn1 btn-sm" href="#">반납하기</button>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card-layout">--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <button type="button" class="btn1 btn-sm" href="#">반납하기</button>--%>
<%--                    </div>--%>
<%--                </li>--%>
            </ul>
        </div>

        <div class="bottom_content">
            <ul class="flex return_book">
                <c:forEach var="userReturnedBook" items="${userReturnedBooks}">
                    <li>
                        <div class="card">
                            <img src="image/마주.png" class="card-img-top" alt="..." />
                            <div class="card-body">
                                <h5 class="card-title">${userReturnedBook.book_name}</h5>
                                <p class="card-author">${userReturnedBook.author_name}</p>
                                <p class="card-period">반납일 : ${userReturnedBook.actual_return_date}</p>
                            </div>
                        </div>
                        <button type="button" class="btn1 btn-sm" href="#">반납하기</button>
                    </li>
                </c:forEach>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <div class="card">--%>
<%--                        <img src="../image/마주.png" class="card-img-top" alt="..." />--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">마주탭변</h5>--%>
<%--                            <p class="card-author">최은미</p>--%>
<%--                            <p class="card-period">2023.08.31 ~ 2023.09.06</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</section>

<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
<script src="../js/mypage.js"></script>
</body>
</html>
