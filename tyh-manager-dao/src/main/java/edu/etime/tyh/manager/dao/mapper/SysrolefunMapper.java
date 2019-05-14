package edu.etime.tyh.manager.dao.mapper;

import edu.etime.tyh.pojo.Sysrolefun;

public interface SysrolefunMapper {
    int deleteByPrimaryKey(String rfid);

    int insert(Sysrolefun record);

    int insertSelective(Sysrolefun record);

    Sysrolefun selectByPrimaryKey(String rfid);

    int updateByPrimaryKeySelective(Sysrolefun record);

    int updateByPrimaryKey(Sysrolefun record);
}