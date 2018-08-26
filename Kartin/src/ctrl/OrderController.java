package ctrl;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Cart;
import entity.Orders;
import entity.Product;
import entity.User;
import service.CartService;
import service.OrderService;
@Controller
public class OrderController {
	@Autowired
	private OrderService service;
		@RequestMapping("order.do")
		public String placeOrder(@RequestParam("payment")String payment,Map model,HttpSession session) {
			
			//getting user from session and getting cart from user
			User user = (User) session.getAttribute("User");
			Cart cart = user.getCart();
			Set<Product> products=new HashSet<Product>();
			products=cart.getProductsCart();
			model.put("Orderprod", products);
			//model.put("products", session.getAttribute("addedproducts"));
/*			System.out.println("Orderpage" + products);
*/			//redirecting to service for adding to cart 
			Orders order=service.placeOrder(user,payment);
			
			
			model.put("Orderadded", "order placed");
			model.put("Totalcost",order.getOrderPrice());
			return "order";
			
	}
	
}
