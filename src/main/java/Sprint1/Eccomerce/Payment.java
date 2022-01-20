package Sprint1.Eccomerce;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Payment")
public class Payment 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)


	private int pay_id;
	private String pay_desc ;
	private int pay_amt; 
	public int getPay_id() {
		return pay_id;
	}
	public void setPay_id(int pay_id)
	{
		this.pay_id = pay_id;
	}
	public String getPay_desc() 
	{
		return pay_desc;
	}
	public void setPay_desc(String pay_desc) 
	{
		this.pay_desc = pay_desc;
	}
	public int getPay_amt()
	{
		return pay_amt;
	}
	public void setPay_amt(int pay_amt) 
	{
		this.pay_amt = pay_amt;
	}
}