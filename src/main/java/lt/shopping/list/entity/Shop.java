package lt.shopping.list.entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Size;

import java.util.List;


/**
 * The persistent class for the shops database table.
 * 
 */
@Entity
@Table(name="shops")

public class Shop implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Size (min=10, message="Address must be minimum 10 letter")
	private String address;

	@Size (min=4, message="Shop name must be minimum 4 letter")
	private String name;

	//bi-directional many-to-one association to Product
	@OneToMany(mappedBy="shop", fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Product> products;

	public Shop() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Product> getProducts() {
		return this.products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Product addProduct(Product product) {
		getProducts().add(product);
		product.setShop(this);

		return product;
	}

	public Product removeProduct(Product product) {
		getProducts().remove(product);
		product.setShop(null);

		return product;
	}

}