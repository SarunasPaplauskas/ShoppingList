package lt.shopping.list.services;

import java.util.List;

import lt.shopping.list.entity.Product;

public interface ProductService {
	public List<Product> getProductList();
	public List<Product> getHistoryList();
	public List<Product> gethistoryByShop(int shopId);
	public List<Product> getListByShop(int shopId);
	public Product getProduct (int id);
	public void deleteProduct(Product product);
	public void addProduct(Product product);
	public void updateProduct (Product product);

}
