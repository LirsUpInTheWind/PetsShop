package com.lirs.bysj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/infomannager")
public class infomannager {	
	
	@RequestMapping("/infoput")
	private String infoput(){
		return "messionput/myinfoput";
		
	}

}
