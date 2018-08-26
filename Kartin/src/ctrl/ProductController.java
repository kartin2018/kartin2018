package ctrl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	
	@RequestMapping("search.do")
	public String searchProduct(@RequestParam("brand") String brand, Map model) {
		model.put("Product", service.searchProduct(brand));
		return "products";
	}
	
	@RequestMapping("category.do")
	public String displayProduct(@RequestParam("category") String category, Map model) {
		model.put("AllProduct", service.displayProduct(category));
		return "allproducts";
	}
	
	@RequestMapping("single.do")
	public String displaysingleProduct(@RequestParam("id") String id, Map model) {
		model.put("SingleProduct", service.displaysingleProduct(id));
		//category
		//service upar vale ki
		//for each 1 list ... 1 to 5 
		
		return "single";
	}
}
