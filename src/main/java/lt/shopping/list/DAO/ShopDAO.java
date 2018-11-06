package lt.shopping.list.DAO;

import java.util.List;

import lt.shopping.list.entity.Shop;

public interface ShopDAO {
	public List<Shop> shopList();
	public void addShop (Shop shop);
	public void deleteShop (int id);
	public Shop getShopById(int id);
}
