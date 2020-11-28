<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>

<h1>수정하기</h1>
<form:form commandName="u" method="POST" action="../editok">
<form:hidden path="seq"/>
<table id ="edit">
<tr><th>카테고리</th><td><form:input path="category"/></tr>
<tr><th>제목</th><td><form:input path="title"/></td></tr>
<tr><th>글쓴이</th><td><form:input path="writer"/></td></tr>
<tr><th>내용</th><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
</table>
<br /><button type="submit">수정하기</button>
<button type="button"onclick="history.back()">돌아가기</button>
</form:form>

</body>
</html>