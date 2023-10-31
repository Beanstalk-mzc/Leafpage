<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>LeafPage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="../../css/login.css?ver=2023091401">
</head>
<body>
<%@include file="../component/header.jsp"%>

<section class="container mt-3" style="max-width:560px;">
    <div class="alert alert-danger mt-4" role="alert">
        유효하지 않은 인증입니다. 나중에 다시 이메일 인증을 시도해 주시기 바랍니다.
    </div>
    <button class="btn btn-danger" onclick="location.href='indexInfo.do'">메인페이지로 이동</button>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="../../js/alertMsg.js"></script>
</body>
</html>