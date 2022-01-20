package Sprint1.Eccomerce;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/customer")
public class Controller123 {
	@Autowired
	ShoppingInterface si;
	@Autowired
	CartRepository cr;
	@Autowired
	UserService userService;
	
	@Autowired
	PaymentRepo pr;
	
	@GetMapping("/addpayment")
	public @ResponseBody String addpayment(
			@RequestParam int pay_id,
			String pay_desc,
			@RequestParam int pay_amt 
		
			
			) throws ParseException {
		Payment um = new Payment();
		um.setPay_id(pay_id);
		um.setPay_desc(pay_desc);
		um.setPay_amt(pay_amt);
		
		
		pr.save(um);
		return "Successfully Operated..";
	}
	
	@GetMapping(path = "/insertpayment")
	public String getUsers323() {
		return "PaymentInsert";
	}

	@GetMapping(path = "/paymentresult")
	public String getUsers32334() {
		return "paymentresult";
	}

	@GetMapping(path="/allpayment")
	public @ResponseBody Iterable<Payment> getAll() {
		
		// This returns a JSON or XML with the users
	System.out.println("inside all");
	return pr.findAll();

	}
	
	@GetMapping(path = "/productlist")
	public String getUsers2222() {
		return "productlist";
	}

	@GetMapping("/all")
	public @ResponseBody Iterable<UserModel> getAllUsers() {
		System.out.println("Inside all ");
		return si.findAll();
	}
	
	@GetMapping(path = "/home")
	public String getUsers2() {
		return "home";
	}
	
	@GetMapping(path = "/allproducts")
	public String getUsers34() {
		return "Allproducts";
	}

	@GetMapping(path = "/addproduct")
	public String getUsers21() {
		return "addProduct";
	}

 
	@GetMapping(path = "/result")
	public String getUsers9() {
		return "result";
	}


	@GetMapping(path="/Customer/name")
	
	   List<UserModel> getUsers2(String name){
		return si.findByName(name);
	}
	
	
		@GetMapping(path="/byid/{identity}")
		public Optional<UserModel> getAllUserbyid(@PathVariable("identity") Integer id) {
			return si.findById(id);
	}
		@GetMapping(path = "/insert")
		public String getUsers3() {
			return "insert";
		}
		
		@GetMapping(path = "/update")
		public String getUsers4() {
			return "insert";
		}

		
		@GetMapping({ "/delete" })
		public String delete() {
			return "delete";
		}
		
		@GetMapping({ "/Kids" })
		public String uu() {
			return "Kids";
		}
		
		@GetMapping({ "/men" })
		public String uu23() {
			return "men";
		}
		
		@GetMapping({ "/women" })
		public String uu45() {
			return "women";
		}


		@GetMapping({ "/aboutus" })
		public String uu67() {
			return "aboutus";
		}
		
		@GetMapping({ "/contactus" })
		public String uu88() {
			return "contactus";
		}


		@GetMapping({ "/Index" })
		public String uu1() {
			return "Index";
		}
		
		
		@GetMapping({ "/main" })
		public String user() {
			return "Index";
		}
		
		@GetMapping({ "/cartInsert" })
		public String uu4() {
			return "cartinsert";
		}

		
		@GetMapping({ "/cart" })
		public String uu3() {
			return "cart";
		}

		
		/*@RequestMapping(value="/login1",method=RequestMethod.GET)
		public String loginPage()
		{
			return "login1";
		}
		
		@RequestMapping(value="/login1",method=RequestMethod.POST)
		public String welcomePage(ModelMap model,@RequestParam String userId,@RequestParam String password) {
			if(userId.equals("admin")&& password.equals("root")) {
				return "home";
			}
			model.put("errorMsg", "plz provide correct ");
			return "login1";
		}*/
		
		
		@RequestMapping(value = "/login1", method = RequestMethod.GET)
		public String loginPage() {
			return "login1";
		}

		@RequestMapping(value = "/login1", method = RequestMethod.POST)
		public String adminPage(ModelMap model, @RequestParam String userId, @RequestParam String password) {
			Pattern P = Pattern.compile("[A-Za-z]{4}[0-9]{2}");
			Matcher M = P.matcher(userId);
			if (userId.equalsIgnoreCase("admin") && password.equals("root")) {
				return "home";
			} else if (M.matches() && password.equals("user")) {
				return "Index";
			}
			model.put("errormsg", "Wrong Credentials!!");
			return "login1";
		}	
		
		/*@PostMapping("/add")
		public @ResponseBody Iterable<UserModel> addNewUser(@RequestParam int id, String name,
				 String category,String price) {
			System.out.println("Inside add " + id + ", " + name + " and " + category+" add "+price);
			UserModel userobj = new UserModel();
			userobj.setId(id);
			userobj.setName(name);
			userobj.setCategory(category);
			userobj.setPrice(price);
			
			//userobj.setDOB(DOB);
		
			si.save(userobj);
			return si.findAll();
		}*/
		
		
		@GetMapping("/add")
		public @ResponseBody String inserted(
				@RequestParam int id, 
				String name, 
			
				String category,
				String price) throws ParseException {
			UserModel um = new UserModel();
			um.setId(id);
			um.setName(name);
			um.setCategory(category);
			um.setPrice(price);
			si.save(um);
			return "Successfully Operated..";
		}
		
		@GetMapping("/add123")
		public @ResponseBody String addedtocart(
				@RequestParam int id, 
				String name, 
			
				String category,
				String price) throws ParseException 
		{
			CartModel cm = new CartModel();
			cm.setId(id);
			cm.setName(name);
			cm.setCategory(category);
			cm.setPrice(price);
			cr.save(cm);
			
			
			return "Sucessfully added to cart";
			
		}
		
		@GetMapping(path = "/rel")
		public String getUs() {
			return "cartresult";
		}

		@PostMapping("/delete")
		public @ResponseBody String getusers3(@RequestParam Integer id) {
			si.deleteById(id);
			return "success";
		}
		
		

}