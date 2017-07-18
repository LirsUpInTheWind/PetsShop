<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
		<table>
			<tr>
				<td>用户id</td>
				<td>用户姓名</td>
				<td>用户地址</td>
				<td>用户电话</td>
				<td>用户用户积分</td>
				<td>用户关联id</td>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
				<td>${list.uiId}</td>
				<td>${list.uiRname}</td>
				<td>${list.uiAdress}</td>
				<td>${list.uiPhone}</td>
				<td>${list.uiScore}</td>
				<td>${list.uId}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</body>
</html>