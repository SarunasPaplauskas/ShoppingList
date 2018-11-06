package lt.shopping.list.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lt.shopping.list.DAO.ProductDAO;
import lt.shopping.list.entity.Product;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAOImpl;
	
	@Override
	@Transactional
	public List<Product> getProductList() {
		return productDAOImpl.getProductList();
	}
	
	@Override
	@Transactional
	public List<Product> getHistoryList() {
		return productDAOImpl.getHistoryList(); 
	}
	@Override
	@Transactional
	public List<Product> gethistoryByShop(int shopId) {
		return productDAOImpl.gethistoryByShop(shopId);
	}
	@Override
	@Transactional
	public List<Product> getListByShop(int shopId) {
		return productDAOImpl.getListByShop(shopId);
	}

	@Override
	@Transactional
	public Product getProduct(int id) {
		return productDAOImpl.getProduct(id);
	}

	@Override
	@Transactional
	public void deleteProduct(Product product) {
		productDAOImpl.deleteProduct(product);
	}

	@Override
	@Transactional
	public void addProduct(Product product) {
		productDAOImpl.addProduct(product);
	}

	@Override
	@Transactional
	public void updateProduct(Product product) {
		productDAOImpl.updateProduct(product);
	}

}
