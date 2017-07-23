package com.lirs.bysj.service.Imp;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lirs.bysj.MapperDao.UserMapper;
import com.lirs.bysj.MapperDao.UserinfoMapper;
import com.lirs.bysj.pojo.PageBean;
import com.lirs.bysj.pojo.Userinfo;
import com.lirs.bysj.service.userinfoService;
@Service
public class UserService implements userinfoService{
	
	@Autowired
	private UserinfoMapper userinfomapper;
	@Autowired
	private UserMapper usermapper;
	public List<Userinfo> selectAlluserinfo() {
		List<Userinfo> list = userinfomapper.selectAlluserinfo();
		return list;
	}


	//基于bootstrap table 分页 
	@Override
	public Map<String, Object> selectByFy(Map<String, Object> param) {
		
		//bootstrap-table要求服务器返回的json须包含：totlal，rows		
        Map<String,Object> result = new HashMap<String,Object>();
        int total=userinfomapper.selectByFy(null).size();
        List<Userinfo> rows= userinfomapper.selectByFy(param);
        result.put("total",total);
        result.put("rows",rows);
        return result;
	}
	
	//分页测试
	@Override
	public PageBean<Userinfo> findByPage(int currentPage) {
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<Userinfo> pageBean = new PageBean<Userinfo>();		
	    //封装当前页数
        pageBean.setCurrPage(currentPage);       
		//每页显示的数据
		int pageSize=2;
		pageBean.setPageSize(pageSize);		
		//封装总记录数
		int totalCount = userinfomapper.selectCount();
		pageBean.setTotalCount(totalCount);		
		//封装总页数
		double tc = totalCount;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
      
		map.put("start",(currentPage-1)*pageSize);
		map.put("size", pageBean.getPageSize());
		//封装每页显示的数据
		List<Userinfo> lists = userinfomapper.findByPage(map);
		pageBean.setLists(lists);		
		return pageBean;
	}

	@Override
	public int deleteUserinfo(Integer uiid) {	
		return userinfomapper.deleteByPrimaryKey(uiid);
	}


}
