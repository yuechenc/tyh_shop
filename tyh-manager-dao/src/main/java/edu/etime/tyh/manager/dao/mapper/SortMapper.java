package edu.etime.tyh.manager.dao.mapper;

import java.util.List;

import edu.etime.tyh.pojo.Sort;

public interface SortMapper {
    int deleteByPrimaryKey(String sorid);

    int insert(Sort record);

    int insertSelective(Sort record);

    Sort selectByPrimaryKey(String sorid);

    int updateByPrimaryKeySelective(Sort record);

    int updateByPrimaryKey(Sort record);
    
    List<Sort> getSortList(Sort sort);
}