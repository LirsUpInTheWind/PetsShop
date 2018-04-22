package com.lirs.bysj.service;

import java.util.List;
import java.util.Map;

import com.lirs.bysj.pojo.Emp;


public interface EmpService {
	//根据索引返回员工信息
	public List<Emp> QueryEmpByIndex(Map<String, Object> map);
	//返回员工总数
	public int 	QueryEmpCount(Map<String, Object> map);
}
