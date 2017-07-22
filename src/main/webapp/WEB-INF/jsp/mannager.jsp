<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>This is main jsp</title>

<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<%=basePath%>/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="<%=basePath%>/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<%=basePath%>/assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="<%=basePath%>/assets/css/admin.css">
<script src="<%=basePath%>/assets/js/jquery.min.js"></script>
<script src="<%=basePath%>/assets/js/app.js"></script>
<script src="<%=basePath%>/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<!-- 分页插件 -->
		<link rel="stylesheet" href="<%=basePath%>plugs/bootstrap-table/bootstrap-table.min.css">
	    <script type="text/javascript" src="<%=basePath%>plugs/bootstrap-table/bootstrap-table.min.js"></script>
	    <script type="text/javascript" src="<%=basePath%>plugs/bootstrap-table/bootstrap-table-locale-all.min.js"></script>

</head>

<body>

<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="<%=basePath%>/assets/i/logo.png"></div>
  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">
   			<li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  <ul class="am-dropdown-content">
  	<li class="am-dropdown-header">所有消息都在这里</li>
	<li><a href="#">查看留言<span class="am-badge am-badge-danger am-round">556</span></a></li>
    <li><a href="#">商品评价<span class="am-badge am-badge-danger am-round">69</span></a></a></li> 
  </ul>
	</li>

		 <li class="kuanjie">          
			<a href="#">奖金管理</a> 
			<a href="#">订单管理</a>   
			<a href="#">产品管理</a> 
			<a href="#">个人中心</a> 
			<a href="#">系统设置</a>
		 </li>

		<li class="soso">
		<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="请输入关键字" /></p>
		<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
		 </li>

<li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>

  </div>
</header>



<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
		<!-- 通过session拿到系统管理员-->
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：lirs</div>
    <div class="sideMenu">
    
      <h3 class="am-icon-flag"><em></em> <a href="#">商品管理</a></h3>
	      <ul>
	        <li><a href="../GoodsMannager/goodslist">商品列表</a></li>
	        <li><a href="../memberMannager/main">商品分类管理</a></li>
	        <li><a href="../GoodsMannager/goodcomments">商品用户评论</a></li>
	        <li><a href="../GoodsMannager/goodsrecyclebin">商品回收站</li>
	        <li><a href="../GoodsMannager/goodsstock">库存管理 </li>
	      </ul>

      <h3 class="am-icon-cart-plus"><em></em> <a href="#">商品订单管理</a></h3>
      <ul>
        <li>今日订单列表</li>
        <li>历史订单</li>
        <li>发货单列表</li>
        <li>换货单列表</li>
      </ul>

      <h3 class="am-icon-users"><em></em> <a href="#">注册会员管理</a></h3>
      <ul>
        <li><a href="../mannager/member">会员管理</a></li>
        <li><a href="../memberMannager/loseinfo">信息未补全会员</a></li>
      </ul>

      <h3 class="am-icon-volume-up"><em></em> <a href="#">信息通知</a></h3>
      <ul>
        <li><a href="../emp/list">站内消息/留言</a> </li>
        <li><a href="../infomannager/infoput">站内消息推送</a></li>
        <li>服务评论区</li>
        <li>微信</li>
        <li>客服</li>
      </ul>

      <h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>
      <ul>
        <li>数据备份</li>
        <li>邮件/短信管理</li>
        <li>上传/下载</li>
        <li>权限</li>
        <li>网站设置</li>
       </ul>

    </div>
     
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script> 
  
</div>

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs"><a href="">首页</a> </li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">帮助中心<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">产品管理<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close="">×</a></button></li>			
			</ul>
</div>

</div>

<!-- 
使用include接口
-->
<div class="content">
	
</div>

</div>
 <script type="text/javascript">jQuery(".slideTxtBox").slide();</script> 
<script src="<%=basePath%>/assets/js/amazeui.min.js"></script>
</body>
</html>