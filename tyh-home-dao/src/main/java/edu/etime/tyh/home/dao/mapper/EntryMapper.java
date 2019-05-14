package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Entry;

public interface EntryMapper {
    int deleteByPrimaryKey(String entryid);

    int insert(Entry record);

    int insertSelective(Entry record);

    Entry selectByPrimaryKey(String entryid);

    int updateByPrimaryKeySelective(Entry record);

    int updateByPrimaryKey(Entry record);
}