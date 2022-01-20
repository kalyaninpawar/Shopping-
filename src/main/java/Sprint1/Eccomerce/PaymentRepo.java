package Sprint1.Eccomerce;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepo extends JpaRepository <Payment, Integer>
{
	List<Payment> findAll();
}
