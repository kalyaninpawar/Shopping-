package Sprint1.Eccomerce;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class CartModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	@Column(name="id")
	int id;
	
	@Column(name="name")
	String name;
	
	@Column(name="category")
	String category;
	
	@Column(name="price")
	String price;
	
	
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "cart [id=" + id + ", name=" + name + ", category=" + category + 
				  ", price=" + price +", getId()="
				+ getId() + ", getName()=" + getName() + ", getCategory()=" + getCategory()
				+  ", getPrice()=" + getPrice()
				+  ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	public CartModel(int id, String name, String category, String price) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		
		this.price = price;
		
	}

	public CartModel() {
		super();
	}			
}