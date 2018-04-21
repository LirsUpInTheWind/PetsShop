package com.lirs.bysj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Emp")
public class EmpController {
	@RequestMapping("EmpTest")
	public String empa(){
		return "empManage/empManage";
	}

}
