package Sprint1.Eccomerce;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CartRepository  extends JpaRepository<CartModel,Integer> 
{

}
