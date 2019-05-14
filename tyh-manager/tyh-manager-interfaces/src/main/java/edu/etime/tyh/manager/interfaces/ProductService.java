package edu.etime.tyh.manager.interfaces;

import java.util.List;

import edu.etime.tyh.pojo.Product;

public interface ProductService {
	List<Product> getProductList(Product product);
	Product getProductById(Product product);
	int insertProduct(Product product);
	int updateProduct(Product product);
}
