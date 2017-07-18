package com.lirs.bysj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lirs.bysj.pojo.User;
import com.lirs.bysj.pojo.Userinfo;
import com.lirs.bysj.service.Imp.UserService;
import com.sun.tools.internal.ws.processor.model.Request;

@Controller
@RequestMapping("/user")
public class UserInfoController {
	
	@Autowired
	private UserService userservice;
 
	@RequestMapping("/userlists")
	private String userList(HttpServletRequest request){
		HttpSession session =request.getSession();
		List<User> list =  userservice.selectAlluser();
			session.setAttribute("list", list);
			System.out.println(list);
		 return "user";
	}
}
