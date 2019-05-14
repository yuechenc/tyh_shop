package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(String admid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(String admid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}