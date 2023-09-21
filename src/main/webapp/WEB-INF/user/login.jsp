<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>LeafPage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/login.css?ver=2023091401">
</head>
<body>
<%@include file="../component/header.jsp"%>


<div class="main container-fluid">
    <h3>LeafPage</h3>
    <form name="login_form" method="post" action="login.do">
        <input class="idInput" name="userId" id="loginUserId" type="text" placeholder="ID">

        <input class="pwInput" name="userPassword" id="loginUserPassword" type="text" placeholder="Password">
        <a class="findid" href="findId.jsp">아이디 찾기</a> <p>|</p> <a class="findpw" href="findPw.jsp">비밀번호 찾기</a>
        <div class="login_check_area"></div>
        <div class="form-floating">
            <input type="button"  class="login btn btn-success"  value="Login" onclick="loginCheck();">
        </div>

        <input type="button" class="signup" onclick="location.href='userSignupView.do' ">
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
<script src="../../js/login.js"></script>
</body>
</html>