package edu.etime.tyh.home.dao.mapper;

import edu.etime.tyh.pojo.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(String proid);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKeyWithBLOBs(Product record);

    int updateByPrimaryKey(Product record);
}