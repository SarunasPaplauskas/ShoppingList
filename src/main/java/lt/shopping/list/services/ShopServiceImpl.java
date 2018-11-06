package lt.shopping.list.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lt.shopping.list.DAO.ShopDAO;
import lt.shopping.list.entity.Shop;

@Service
@Transactional
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDAO ShopDAOImpl;
	
	@Override
	public List<Shop> shopList() {
		return ShopDAOImpl.shopList();
	}

	@Override
	public void addShop(Shop shop) {
		ShopDAOImpl.addShop(shop);
	}

	@Override
	public void deleteShop(int id) {
		ShopDAOImpl.deleteShop(id);
	}

	@Override
	public Shop getShopById(int id) {
		return ShopDAOImpl.getShopById(id);
	}
	
	
}
