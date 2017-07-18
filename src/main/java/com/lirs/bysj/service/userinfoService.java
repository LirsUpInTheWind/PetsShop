package com.lirs.bysj.service;

import java.util.List;

import com.lirs.bysj.pojo.User;
import com.lirs.bysj.pojo.Userinfo;

public interface userinfoService {
	//查询所有注册用户信息
	List<Userinfo> selectAlluserservice();
	List<User> selectAlluser();
}
