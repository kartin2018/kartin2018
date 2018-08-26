package service;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.Product;


public interface ProductService {

	List<Product> searchProduct(String brand);
	List<Product> displayProduct(String category);
	List<Product> displaysingleProduct(String id);
}
