package lt.shopping.list.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lt.shopping.list.DAO.ShopDAO;
import lt.shopping.list.entity.Shop;

@Repository
public class ShopDAOImpl implements ShopDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Shop> shopList() {
		Session session = sessionFactory.getCurrentSession();
		List<Shop> shopList = session.createQuery("FROM Shop", Shop.class).getResultList();
		return shopList;
	}

	@Override
	public void addShop(Shop shop) {
		Session session = sessionFactory.getCurrentSession();
		session.save(shop);
	}

	@Override
	public void deleteShop(int id) {
		Session session = sessionFactory.getCurrentSession();
		Shop shop = session.find(Shop.class, id);
		session.delete(shop);
	}

	@Override
	public Shop getShopById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Shop shop = session.find(Shop.class, id);
		return shop;
	}

}
