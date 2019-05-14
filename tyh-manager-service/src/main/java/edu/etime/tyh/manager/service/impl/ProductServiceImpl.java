package edu.etime.tyh.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.tyh.manager.dao.mapper.ProductMapper;
import edu.etime.tyh.manager.dao.mapper.SortMapper;
import edu.etime.tyh.manager.interfaces.ProductService;
import edu.etime.tyh.pojo.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper; 
	@Autowired
	private SortMapper sortMapper;
	
	@Override
	public List<Product> getProductList(Product product) {
		// TODO Auto-generated method stub
		List<Product> list= productMapper.getProductList(product);
		for(int i=0;i<list.size();i++){
			list.get(i).setSorname(sortMapper.selectByPrimaryKey(list.get(i).getSorid()).getSorname());
		}
		
		return list;
	}

	@Override
	public Product getProductById(Product product) {
		// TODO Auto-generated method stub
		return productMapper.selectByPrimaryKey(product.getProid());
	}

	@Override
	public int insertProduct(Product product) {
		// TODO Auto-generated method stub
		return productMapper.insertSelective(product);
	}

	@Override
	public int updateProduct(Product product) {
		// TODO Auto-generated method stub
		return productMapper.updateByPrimaryKeySelective(product);
	}

}
