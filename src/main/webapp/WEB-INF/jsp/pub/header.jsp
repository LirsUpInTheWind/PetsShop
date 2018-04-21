<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../../css/header.css" />
<div id="header">
	<ul>
		<li><img src="../../img/img-header-logo.jpg" /></li>
		<li id="logo"><h2>自在宠物店管理系统</h2></li>
		<li id="help"></li>
	</ul>
</div>
<!-- <script type="text/javascript">
	$(function(){
		$.ajax({
			url : '${ctx}/sys/getUser.do',
			type : 'get',
			async:false,
		  	cache : false,
		  	success:function(data){
		  		console.log(data);
		  		var user = data.user;
		  		if (user==null) {
		  			window.location.href="${ctx}/sys/login.do";
				}else{
					$("#help").append('<span id="nickName" style="font-size:"微软雅黑"">'+user.nickName+'&nbsp;|&nbsp;<a href="${ctx}/sys/login.do"><i class="icon-off icon-large" title="注销" ></i></a></span>');
				}
		  	}
		})
	})
</script> -->