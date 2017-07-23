<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<%@ include file="mannager.jsp"%>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- bootstrap -->
	<link rel="stylesheet" href="<%=basePath%>/plugs/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="<%=basePath%>/plugs/bootstrap/js/bootstrap.min.js"></script>	
</head>


<div class="content" style="width:1000px;margin-left:225px;margin-top:45px;">		
	
	<div class="admin-biaogelist">	
	
		 <div class="listbiaoti am-cf">
			 <ul class="am-icon-users"> 会员管理</ul>     
				 <dl class="am-icon-home" style="float: right;">当前位置： 管理系统> <a href="#">会员管理</a></dl>
				 <dl><button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 手动添加会员</button> </dl>
      <!--这里打开的是新页面-->
		 </div>
		 
	<div class="am-form am-g">
		<div class="container">
			<div class="row">
			<!-- 搜索框 -->			
					 <div>						
						<input type="text" class="am-form-field am-input-sm am-input-xm" name="name" placeholder="请输入姓名" style="width:200px;margin-left:20px;">							
						<input type="text" class="am-form-field am-input-sm am-input-xm" name="phone" placeholder="请输入手机号" style="width:200px;margin-left:20px;">
						<button id="search" class="am-btn am-radius am-btn-xs am-btn-success" type="button" style="margin-top:10px;margin-left:20px">搜索!</button>									
					</div>
				<!-- 表格 -->
				<div class="col-xs-8">
					<table class="am-table am-table-bordered am-table-radius am-table-striped"></table>
				</div>
			</div>
		</div>		
   </div>
     
    <script type="text/javascript">    
   	 class BstpTable{
		constructor(obj) {
			this.obj=obj;
		}
		inint(searchArgs){
			 //---先销毁表格 ---
	         this.obj.bootstrapTable('destroy');  
	         //---初始化表格,动态从服务器加载数据--- 
			 this.obj.bootstrapTable({
			//【发出请求的基础信息】
		    	url: '<%=basePath%>memberMannager/selectByFy',
				method: 'post',
				contentType: "application/x-www-form-urlencoded",
			//【查询设置】
			/* queryParamsType的默认值为 'limit' ,在默认情况下 传给服务端的参数为：offset,limit,sort
	                            设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber */
	          queryParamsType:'', 
	           queryParams: function queryParams(params) {  
	              var param = {  
	                  pageNumber: params.pageNumber,    
	                  pageSize: params.pageSize
	              }; 
	              for(var key in searchArgs){
	            	  param[key]=searchArgs[key]
	              }  
	              return param;                   
	            }, 	  
	                        
				//【其它设置】
				locale:'zh-CN',	//中文支持
				pagination: true,	//是否开启分页（*）
	            pageNumber:1,	//初始化加载第一页，默认第一页
	            pageSize: 3,	//每页的记录行数（*）
	            pageList: [5,8,10],	//可供选择的每页的行数（*）
	            showToggle : true, // 是否显示详细视图和列表视图的切换按钮
	            sidePagination: "server", 	//分页方式：client客户端分页，server服务端分页（*）
	            showRefresh:false,	//刷新按钮	   
	            cache: false,   //缓存  不启用    
	            showRefresh: true,     
	            toolbar: '#toolbar',                //工具按钮用哪个容器
	            clickToSelect: true,				//选中行
	           // cardView: true,                    //是否显示详细视图
	           // detailView: true,                   //是否显示父子表
	            striped: true,                      //是否显示行间隔色
   
	           /*  //【样式设置】
	            height: 300,	//table的高度
	            //按需求设置不同的样式：5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
				rowStyle: function (row, index) {
				    var style = "active";
				    if (row.uiRname=="画画的真名") {style='success';}
				    return { classes: style }
				}, */
	            
	            //【设置列】
				columns: [
				 {field: 'uiId',
				  title: 'id',
				  }, 
				 {field: 'uiRname',
				  title: '真名'
				  },
				 {field: 'uiAdress',
				  title: '地址'
				},
				 {field: 'uiPhone',
				  title: '电话'
				 },
				 {field: 'uiScore',
				  title: '积分'
				 },
				 {field: 'user.uId',
				  title: '用户登录表id'
				 },
				 {field: 'tool',
				  title: '操作',	
					   formatter:function(value,row,index){								   
					    var element = 
					    "<button class='edite btn btn-success btn-sm'>编辑</button>"+" "+				   			    
					    "<button class='detail btn btn-success btn-sm'>详情</button>"+" "+				   			    
					    "<button class='delet btn btn-success btn-sm'>删除</button>";			    					
					    /*   可以分离点击事件函数
					    '<a onclick="edit(\''+ row.uiId + '\')">编辑</a> ';	 */	   			    
					    return element; 					    
					},events:{
				 	'click .detail':function(e,value,row,index){			 					 			
				 		$.ajax({
								type : 'post',
								contentType:'application/x-www-form-urlencoded; charset=UTF-8',
								dataType : 'json',
								url : '/PetsShop/memberMannager/getAlluserlogin?uid=' +row.user.uId,					
								success : function(data) {
									
								alert("用户昵称："+data.name+"\n\n"+
									  "用户注册时间: "+data.time+"\n\n"+
									  "用户登录账号: "+data.usernumber
									  
								);				
								} 
							});
				 		 }, 
				 	'click .edite':function(e,value,row,index){
				 					alert(row.uiPhone);
				 											  },
				 	'click .delet':function(e,value,row,index){
				 				var mymessage=confirm("操作不可逆,确定删除吗？");  			 	  			   
				 					if(mymessage==true)  
							 		    {  
				 						 $.ajax({
				 							 type:'post',
				 							 contentType:'application/x-www-form-urlencoded;charset=UTF-8',
				 							 dataType:'json',
				 							 url:'/PetsShop/memberMannager/deleteuserinfo?uiid='+row.uiId ,
				 							 success : function(data) {	
				 										 				 						 	 
				 						 	 }
				 						 });
				 						 alert("删除成功");
							 		    } else if(mymessage==false)  {  
							 	     //   document.write("不要删除");  
							 	    }  
				 		  }		 											  
					 }
				 
				  }
				]
	        })
		 }
	}	
   	
   	 var bstpTable=new BstpTable($("table"));
	bstpTable.inint({})	
	$("#search").click(function(){
		var searchArgs={
		 	name:$("input[name='name']").val(),
		 	phone:$("input[phone='phone']").val(),
		}
		bstpTable.inint(searchArgs)
    })  	    
    	function edit(a){
			alert(a);
	}
   
   	</script>
   <hr />   
    <div class="foods" Style="margin-top:125px;">
        <ul>
          若有疑问,请访问www.lirs.com <a href="http://www.cssmoban.com/" target="_blank" title="致电">后台管理</a> -  More information<a href="http://www.cssmoban.com/" title="网页模板" target="_blank">我的网站</a>
        </ul>
        <dl>
          <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
        </dl>
      </div>
</div>
</div>
