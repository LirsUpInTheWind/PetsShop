package com.lirs.bysj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lirs.bysj.pojo.User;
import com.lirs.bysj.service.UserServiceInter;
import com.lirs.bysj.util.Msg;

@Controller
@RequestMapping("/emp")
public class UserPagehelpTest {
	
		@Autowired
	private UserServiceInter userinter;
	 @RequestMapping(value = {"/list"}, method = {RequestMethod.GET})
	  @ResponseBody
	  public Msg getEmpList(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo){
		 	
		 PageHelper.startPage(pageNo, 5);
	       List<User> employeeList = userinter.selectUserList();
	       PageInfo pageInfo = new PageInfo(employeeList, 5);
	       return Msg.success().add("pageInfo", pageInfo);
	       
	 }
	 }
	    