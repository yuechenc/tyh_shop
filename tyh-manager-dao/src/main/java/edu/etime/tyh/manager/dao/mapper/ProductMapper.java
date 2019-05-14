package edu.etime.tyh.manager.dao.mapper;

import java.util.List;

import edu.etime.tyh.pojo.Product;

public interface ProductMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(String proid);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKeyWithBLOBs(Product record);

    int updateByPrimaryKey(Product record);
    
    List<Product> getProductList(Product product);
}