package lt.shopping.list.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lt.shopping.list.DAO.ProductDAO;
import lt.shopping.list.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getProductList() {
		Session session = sessionFactory.getCurrentSession();
		List<Product> productsList = session.createNamedQuery("productList").getResultList();
		return productsList;
	}
	
	@Override
	public List<Product> getHistoryList() {
		Session session = sessionFactory.getCurrentSession();
		List<Product> historyList = session.createNamedQuery("historyList").getResultList();
		return historyList;
	}
	
	@Override
	public List<Product> gethistoryByShop(int shopId) {
		Session session = sessionFactory.getCurrentSession();
		List<Product> productsList = session.createNamedQuery("historyByShop").setParameter("id", shopId).getResultList();
		return productsList;
	}
	
	@Override
	public List<Product> getListByShop(int shopId) {
		Session session = sessionFactory.getCurrentSession();
		List<Product> productsList = session.createNamedQuery("listByShop").setParameter("id", shopId).getResultList();
		return productsList;
	}
	
	@Override
	public Product getProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = session.find(Product.class, id);
		return product;
	}

	@Override
	public void deleteProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(product);		
	}

	@Override
	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.save(product);
	}

	@Override
	public void updateProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.update(product);	
	}


	
}
