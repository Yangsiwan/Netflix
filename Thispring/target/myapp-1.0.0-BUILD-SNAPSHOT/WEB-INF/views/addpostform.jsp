<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<title>Add</title>
</head>
<body>
<h1>새 글쓰기</h1>
<form action="addok" method="post"> 
<table id="edit">
<tr><th>카테고리</th><td><input type="text" name="category"/></td></tr>
<tr><th>제목</th><td><input type="text" name="title"/></td></tr>
<tr><th>글쓴이</th><td><input type="text" name="writer"/></td></tr>
<tr><th>내용</th><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
<br/><button type="button" onclick="location.href='list'">목록보기</button>
<button type="submit">등록하기</button>
</form>

</body>
</html>