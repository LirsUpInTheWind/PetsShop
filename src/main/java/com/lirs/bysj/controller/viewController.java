package com.lirs.bysj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("petshopview")
public class viewController {
	private  ModelAndView model = new ModelAndView();
	//员工管理
	@RequestMapping("Emp.do")
	public ModelAndView toStaff(){
		model.setViewName("empManage/empManage");
		return model;
	}
}
