<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../mannager.jsp"%>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="content" style="width:1000px;margin-left:225px;margin-top:45px;">
	<div class="admin-biaogelist">	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 消息推送</ul>    
      <dl class="am-icon-home" style="float: right;"> 当前位置： 小西推送> <a href="#">消息推送</a></dl>      
    </div>
	
    <div class="fbneirong">
      <form class="am-form">
        <div class="am-form-group am-cf">
          <div class="zuo">标题：</div>
          <div class="you">
            <input type="email" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入标题">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">关键词：</div>
          <div class="you">
            <input class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键词">
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">描述：</div>
          <div class="you">
            <textarea class="" rows="2" id="doc-ta-1"></textarea>
          </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="zuo">缩略图：</div>
          <div class="you"><input type="file" id="doc-ipt-file-1"> </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">产品图片：</div>
          <div class="you" style="height: 45px;">
            <input type="file" id="doc-ipt-file-1">
            <p class="am-form-help">请选择要上传的文件...</p>
          </div>
        </div>
        
        
        <div class="am-form-group am-cf">
          <div class="zuo">内容：</div>
          <div class="you">
            <textarea class="" rows="2" id="doc-ta-1"></textarea>
          </div>
        </div>
        
        <div class="am-form-group am-cf">
          <div class="zuo">其他信息：</div>
          <div class="you">
            <textarea class="" rows="2" id="doc-ta-1"></textarea>
          </div>
        </div>
        
        
        <div class="am-form-group am-cf">
        <div class="zuo">推荐：</div>
        <div class="you" style="margin-top: 5px;">
          <label class="am-checkbox-inline">
            <input type="checkbox" value="option1">
            选我 </label>
          <label class="am-checkbox-inline">
            <input type="checkbox" value="option2">
            同时可以选我 </label>
          <label class="am-checkbox-inline">
            <input type="checkbox" value="option3">
            还可以选我 </label>
            </div>
        </div>
        <div class="am-form-group am-cf">
          <div class="you" style="margin-left: 11%;">
              <button type="submit" class="am-btn am-btn-success am-radius">发布并关闭窗口</button>&nbsp;  &raquo; &nbsp; <button type="submit" class="am-btn am-btn-secondary am-radius">发布并继续发布</button>

          </div>
        </div>
      </form>
    </div>
	
</div>
	
</body>
</html>