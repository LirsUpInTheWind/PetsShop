package com.lirs.bysj.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lirs.bysj.pojo.Userinfo;
import com.lirs.bysj.service.userinfoService;
import com.lirs.bysj.service.Imp.UserService;

/*
 * title:会员管理界面控制器
 * author:lirs
 * date:2017 7 20
 * */
@Controller
@RequestMapping("/memberMannager")
public class memberController {

	@Autowired
	private userinfoService userservice;
	
	
	//手鲁分页测试
	@RequestMapping("/main")
	public String  main(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model){
		model.addAttribute("pagemsg", userservice.findByPage(currentPage));//回显分页数据
		return "GoodsMannager/main";
	}
	
	
	//分页控制  先查询出所有数据放到首页上
		 @RequestMapping("/selectByFy")
		    @ResponseBody
		    public  Map<String,Object> selectByFy(int pageSize,int pageNumber,String name,String phone ){
		        /*所需参数*/
		        Map<String, Object> param=new HashMap<String, Object>();
		        int a=(pageNumber-1)*pageSize;
		        int b=pageSize;
		        param.put("a", a);
		        param.put("b", b);
		        param.put("name", name);
		        param.put("phone", phone); 
			      return userservice.selectByFy(param);
		    }
		 //信息未不全会员界面
		 @RequestMapping("/loseinfo")
		 private String loseInfor(){
			 return "memberMannager/loseinfo";
		 }
}
