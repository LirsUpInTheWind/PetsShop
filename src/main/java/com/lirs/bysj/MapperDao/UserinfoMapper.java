package com.lirs.bysj.MapperDao;

import java.util.HashMap;
import java.util.List;

import java.util.Map;

import com.lirs.bysj.pojo.User;
import com.lirs.bysj.pojo.Userinfo;


public interface UserinfoMapper {
    //删除会员信息，包括会员登陆信息
    int deleteByPrimaryKey(Integer uiId);
  
    int insert(Userinfo record);
    
    int insertSelective(Userinfo record);
    
    List<Userinfo> selectAlluserinfo();
    //bootstrap 分页
    List<Userinfo> selectByFy(Map<String,Object> param);
    
    Userinfo selectByPrimaryKey(Integer uiId);
    
    int updateByPrimaryKeySelective(Userinfo record);
    
    int updateByPrimaryKey(Userinfo record);
    
    /**
     * 分页操作，调用findByPage limit分页方法
     * @param map
     * @return
     */
    List<Userinfo> findByPage(HashMap<String,Object> map);
    
    /**
     * 查询用户记录总数
     * @return
     */
    int selectCount();
}