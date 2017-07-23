package com.lirs.bysj.service;

import java.util.List;

import java.util.Map;

import com.lirs.bysj.pojo.PageBean;
import com.lirs.bysj.pojo.User;
import com.lirs.bysj.pojo.Userinfo;


public interface userinfoService {
	//查询所有注册用户信息
	List<Userinfo> selectAlluserinfo();
	Map<String,Object> selectByFy(Map<String,Object> param);
	PageBean<Userinfo> findByPage(int currentPage);
	//删除用户信息,包括注册信息
	int deleteUserinfo(Integer uiid);
}
