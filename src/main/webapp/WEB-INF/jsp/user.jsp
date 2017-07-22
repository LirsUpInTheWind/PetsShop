<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
</head>
<body>
<body>
		<table border="10px">
			<tr>
				<td>用户id</td>
				<td>用户姓名</td>
				<td>用户地址</td>
				<td>用户电话</td>
				<td>用户用户积分</td>
				<td>用户类型</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
				<td>${list.uId}</td>
				<td>${list.usernumber}</td>
				<td>${list.userpwd}</td>
				<td>${list.name}</td>
				<td>${list.time}</td>
				<td>${list.type}</td>
				<td><input type="button" value="更新" name="gx"></td>
				</tr>
			</c:forEach>
		</table>
		<a href="userinfolists">点击这里</a>
	</body>
</body>
	<script type="text/javascript">
		$("#gx").click(function(){
			var date1={"name":"小红",
						"sex":"女",
						"age":"12",
						"time":"2017 5 6"
					  };
			saveDataAry.push(data1);
		$.ajax({
			type:"post",
			url:"/user/josntest",
			dataType:"",
			contentType:"application/json",
			data:JSON.stringify(saveDataAry), 
			success:function(){
				
			}
			  });
		            });
	</script>


</html>