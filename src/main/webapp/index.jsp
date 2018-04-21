<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

    <head>
        <meta charset="utf-8">

        <title>自在宠物商店管理</title>
        <%@include file="/WEB-INF/jsp/pub/tag.jsp"%>
        <link rel="stylesheet" href="${ctx}/css/index.css" />
    </head>
    <body>
     <div class="main">
    <header id="header" charset="utf-8">
    	<%@include file="/WEB-INF/jsp/pub/header.jsp"%>
    </header>
    <hr>
		<div class="sidebar-menu">
		    <a href="#repairMsg" class="nav-header menu-first collapsed" data-toggle="collapse">
		    <i class="icon-wrench icon-large"></i>修车信息管理</a>
		    <ul id="repairMsg" class="nav nav-list collapse menu-second">
		        <li><a href="${ctx}/sys/repairList.do" target="mainFrame"><i class="icon-pencil"></i>修车登记管理</a></li>
		        <li><a href="${ctx}/sys/order.do" target="mainFrame"><i class="icon-edit"></i>订单管理</a></li>
		        <li><a href="${ctx}/sys/invoice.do" target="mainFrame"><i class="icon-list-alt"></i>发票管理</a></li>
		    </ul>
		    
		    
		    <a href="#staffMsg" class="nav-header menu-first collapsed" data-toggle="collapse">
		    <i class="icon-user icon-large"></i>我的员工管理</a>
		    <ul id="staffMsg" class="nav nav-list collapse menu-second">
		        <li><a href="${ctx}/sys/staff.do" target="mainFrame"><i class="icon-star"></i>员工信息管理</a></li>
		        <li><a href="${ctx}/sys/salary.do" target="mainFrame"><i class="icon-certificate"></i>工资信息管理</a></li>
		    </ul>
		    
		    
		    <a href="#partsMsg" class="nav-header menu-first collapsed" data-toggle="collapse">
		    <i class="icon-cogs icon-large"></i>零件管理</a>
		    <ul id="partsMsg" class="nav nav-list collapse menu-second">
		        <li><a href="${ctx}/sys/parts.do" target="mainFrame"><i class="icon-asterisk"></i>零件信息管理</a></li>
		        <li><a href="${ctx}/sys/partsOrder.do" target="mainFrame"><i class="icon-truck"></i>零件订单管理</a></li>
		        <li><a href="${ctx}/sys/partsRR.do" target="mainFrame"><i class="icon-shopping-cart"></i>零件领用以及回收</a></li>
		    </ul>
		    <a href="#Msg" class="nav-header menu-first collapsed" data-toggle="collapse">
		    <i class="icon-comment icon-large"></i>消息中心</a>
		    <ul id="Msg" class="nav nav-list collapse menu-second">
		        <li><a href="${ctx}/sys/log.do" target="mainFrame"><i class="icon-book" ></i>操作日志</a></li>
		    </ul>
		</div>
		<div id="content" >
			<iframe id="mainFrame" name="mainFrame" src="${ctx}/kong.jsp" frameborder="0" name="right" width="100%" height="100%" style="margin-left: 20px;background-color: white;border: 0px;padding: 0px;" ></iframe>
		</div>
</div>
    </body>

</html>