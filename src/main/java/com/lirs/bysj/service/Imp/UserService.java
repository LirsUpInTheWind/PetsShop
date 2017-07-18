package com.lirs.bysj.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lirs.bysj.MapperDao.UserMapper;
import com.lirs.bysj.MapperDao.UserinfoMapper;
import com.lirs.bysj.pojo.User;
import com.lirs.bysj.pojo.Userinfo;
import com.lirs.bysj.service.userinfoService;

@Service
public class UserService implements userinfoService{
	
	@Autowired
	private UserinfoMapper userinfomapper;
	@Autowired
	private UserMapper usermapper;
	public List<Userinfo> selectAlluserservice() {
		List<Userinfo> list = userinfomapper.selectAll();
		return list;
	}

	@Override
	public List<User> selectAlluser() {
		List<User> list = usermapper.selectAll();
		return list;
	}


}
