package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Sysrole;

public interface SysroleMapper {
    int deleteByPrimaryKey(String roleid);

    int insert(Sysrole record);

    int insertSelective(Sysrole record);

    Sysrole selectByPrimaryKey(String roleid);

    int updateByPrimaryKeySelective(Sysrole record);

    int updateByPrimaryKey(Sysrole record);
}