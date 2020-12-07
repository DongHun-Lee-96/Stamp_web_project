<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">

<title>STAMPING</title>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <h1>stamp INDEX</h1>
            <p>views/stamp/index.jsp</p>
        </div>
        <a href="<c:url value="/stamp/stamping"/>"
            class="btn btn-lg btn-primary">스탬프 등록</a>
    </div>
</body>
</html>

