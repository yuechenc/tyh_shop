package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Sysfunction;

public interface SysfunctionMapper {
    int deleteByPrimaryKey(String funid);

    int insert(Sysfunction record);

    int insertSelective(Sysfunction record);

    Sysfunction selectByPrimaryKey(String funid);

    int updateByPrimaryKeySelective(Sysfunction record);

    int updateByPrimaryKey(Sysfunction record);
}