<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<script>
	function delete_ok(id){
		var a =confirm("정말 삭제하시겠습니까?");
    	if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>
	자유게시판
</h1>
<table id="list" width="90%">
<tr>
	<th>아이디</th>
	<th>카테고리</th>
	<th>제목</th>
	<th>글쓴이</th>
	<th>내용</th>
	<th>등록일</th>
	<th>수정하기</th>
	<th>삭제하기</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
	</tr>
</c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">새 글쓰기</button>
</body>
</html>