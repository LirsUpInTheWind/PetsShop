package com.lirs.bysj.MapperDao;

import java.util.List;

import com.lirs.bysj.pojo.Userinfo;

public interface UserinfoMapper {
    
    int deleteByPrimaryKey(Integer uiId);
  
    int insert(Userinfo record);
    
    int insertSelective(Userinfo record);
    
    List<Userinfo> selectAll();
    
    Userinfo selectByPrimaryKey(Integer uiId);
    
    int updateByPrimaryKeySelective(Userinfo record);
    
    int updateByPrimaryKey(Userinfo record);
}