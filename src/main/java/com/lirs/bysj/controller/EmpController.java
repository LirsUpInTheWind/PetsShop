package com.lirs.bysj.controller;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.lirs.bysj.pojo.Emp;
import com.lirs.bysj.service.EmpService;

@Controller
@RequestMapping("Emp")
public class EmpController {	
	
	@Autowired
	private EmpService empservice;
	
	@RequestMapping(value = "QueryEmp",produces = "application/json;charset=utf-8")
	public @ResponseBody String queryStaff(Integer pageIndex,Integer pageSize,String key){
		JSONObject json = new JSONObject();
		String page = null;
		List<Emp> list = new ArrayList<Emp>();
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			map.put("pageIndex", (pageIndex-1)*pageSize);
			map.put("pageSize", pageSize);
			map.put("key", key);
			list = empservice.QueryEmpByIndex(map);
			int count = empservice.QueryEmpCount(map);
			json.put("rows", list);
			json.put("total", count);
			page = json.toString();
		} catch (Exception e) {
		}
		return page;
	}
	

}
