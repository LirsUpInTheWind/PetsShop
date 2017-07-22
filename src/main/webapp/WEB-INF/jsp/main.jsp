<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
	
	<c:if test="${empty requestScope.pagemsg}">
		没有任何用户信息！
	</c:if>
	<c:if test="${!empty requestScope.pagemsg}">
		<table class="am-table am-table-bordered am-table-radius am-table-striped">
		<thead>
			<tr>
				<td>编号</td>
				<td>真名</td>
				<td>地址</td>
				<td>电话</td>
				<td>积分</td>
				<td>登陆信息用户</td>
				<td>操作</td>
				<td>操作2</td>
			</tr>
			</thead>
			<c:forEach items="${requestScope.pagemsg.lists}" var="u">
				<tr>
					<th>${u.uiId }</th>
					<th>${u.uiRname }</th>
					<th>${u.uiAdres }</th>
					<th>${u.uiPhone }</th>
					<th>${u.uiScore }</th>
					<th>${u.user.name }</th>
					<th><a href="edit?id=${u.uiId}">Edit</a></th>
					<th><a href="delete?id=${u.uiId}" onclick="return confirm('确定要删除吗')">Delete</a></th>
				</tr>
			</c:forEach>		
		</table>	
	</c:if>
	
<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td class="td2">
   <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/main?currentPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>
       
       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</td>
</tr>
</table>
</body>
</html>