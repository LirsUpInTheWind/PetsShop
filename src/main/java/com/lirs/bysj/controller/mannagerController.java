package com.lirs.bysj.controller;


import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lirs.bysj.pojo.User;
import com.lirs.bysj.pojo.Userinfo;
import com.lirs.bysj.service.Imp.UserService;


@Controller
@RequestMapping("/mannager")
public class mannagerController {
	
	@Autowired
	private UserService userservice;
	@RequestMapping("/main")
	private String userList(HttpServletRequest request){
		/*HttpSession session =request.getSession();
		List<User> list =  userservice.selectAlluser();
			session.setAttribute("list", list);
			System.out.println(list);*/
		 return "mannager";
	}
		//会员管理界面
	@RequestMapping("/member")
	private String membermannager(HttpServletRequest request){
		 return "member";
	}
	
	@RequestMapping("/userinfolists")
	private String userinfoList(HttpServletRequest request){
		HttpSession session =request.getSession();
		List<Userinfo> list =  userservice.selectAlluserinfo();
		for(Userinfo userinfo:list){
			System.out.println(userinfo.getUiAdress()+""+userinfo.getUiRname()+""+userinfo.getUser().getName());
			System.out.println(userinfo.getUiAdress()+""+userinfo.getUiRname()+""+userinfo.getUser().getName());
		}
		
		session.setAttribute("list", list);
		return "userinfo";
	}
	
}
