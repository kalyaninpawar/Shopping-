package Sprint1.Eccomerce;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//import org.springframework.data.annotation.Immutable;

@Entity
@Table(name="Customer")
public class UserModel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	@Column(name="id")
	long id;
	
	@Column(name="name")
	String name;
	
	@Column(name="category")
	String category;
	
	@Column(name="price")
	String price;

	public long getId() {
		return id;
	}

	public void setId(long id) {
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
		return "Customer [id=" + id + ", name=" + name + ", category=" + category + 
				  ", price=" + price +", getId()="
				+ getId() + ", getName()=" + getName() + ", getCategory()=" + getCategory()
				+  ", getPrice()=" + getPrice()
				+  ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	public UserModel(long id, String name, String category, String price) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		
		this.price = price;
		
	}

	public UserModel() {
		super();
	}


 
			
}
