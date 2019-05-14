package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Sort;

public interface SortMapper {
    int deleteByPrimaryKey(String sorid);

    int insert(Sort record);

    int insertSelective(Sort record);

    Sort selectByPrimaryKey(String sorid);

    int updateByPrimaryKeySelective(Sort record);

    int updateByPrimaryKey(Sort record);
}