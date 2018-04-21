package com.lirs.bysj.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lirs.bysj.MapperDao.EmpMapperDao;
import com.lirs.bysj.pojo.Emp;
import com.lirs.bysj.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService{
	
	@Autowired
	private EmpMapperDao mapper;
	//根据员工索引返回
	public List<Emp> QueryEmpByIndex(Map<String, Object> map) {	
		return mapper.queryEmpByIndex(map);
	}
	
	public int QueryEmpCount(Map<String, Object> map) {
		
		return mapper.QueryEmpCount(map);
	}


}
