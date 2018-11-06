package lt.shopping.list.entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name="products")
@NamedQueries ({
	@NamedQuery(name="productList", query="FROM Product p WHERE p.onPurchase IS NULL"),
	@NamedQuery(name="historyList", query="FROM Product p WHERE p.onPurchase != ''"),
	@NamedQuery (name="historyByShop", query="FROM Product p WHERE p.shop.id = :id AND p.onPurchase != ''"),
	@NamedQuery (name="listByShop", query="FROM Product p WHERE p.shop.id = :id AND p.onPurchase IS NULL")
})
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	private int amount;
	
	@NotNull
	@Size (min=3, max=20, message="Incorrectly Introduced Product")
	private String name;

	@Column(name="on_purchase")
	private String onPurchase;
	
	@NotNull
	private int type;

	//bi-directional many-to-one association to Shop
	@ManyToOne 
	private Shop shop;

	public Product() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAmount() {
		return this.amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOnPurchase() {
		return this.onPurchase;
	}

	public void setOnPurchase(String onPurchase) {
		this.onPurchase = onPurchase;
	}

	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Shop getShop() {
		return this.shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}
	
	public String getType1() {
		String type = null;
		if (this.type==1) {
			type= "Maistas";
		} else if (this.type==2) {
			type= "Butinės prekės";
		} else if (this.type==3) {
			type= "Technika";
		} else if (this.type==4) {
			type= "Kita";
		}
		return type;
	}

	
	
	
}