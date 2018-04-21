package com.lirs.bysj.MapperDao;

import java.util.List;
import java.util.Map;

import com.lirs.bysj.pojo.Emp;

;

public interface EmpMapperDao {
	//根据索引返回员工信息
		public List<Emp> queryEmpByIndex(Map<String, Object> map);
		public int QueryEmpCount(Map<String, Object> map);
}
