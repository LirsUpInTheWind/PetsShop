package com.lirs.bysj.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lirs.bysj.MapperDao.UserMapper;
import com.lirs.bysj.pojo.User;
import com.lirs.bysj.service.UserServiceInter;
@Service
public class userservice2 implements UserServiceInter{
	@Autowired
	private UserMapper usermapper;
	@Override
	public List<User> selectUserList() {
		return this.usermapper.selectUserList();
	}
	@Override
	public User selectAlluser(Integer uid) {
		// TODO Auto-generated method stub
		return usermapper.selectByPrimaryKey(uid);
	}
	
	
}
