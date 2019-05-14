package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Custom;

public interface CustomMapper {
    int deleteByPrimaryKey(String userid);

    int insert(Custom record);

    int insertSelective(Custom record);

    Custom selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(Custom record);

    int updateByPrimaryKey(Custom record);
}