package ctrl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import bean.ForgetBean;
import bean.LoginBean;
import entity.Cart;
import entity.Product;
import entity.User;
import service.UserService;

@Controller
@SessionAttributes("User")
public class UserController {
	@Autowired
	private UserService service;

	@RequestMapping("login.do")
	public String checkLogin(LoginBean login, HttpSession session, Map model) {
		User user = service.authenticate(login);
		if (user != null) {
			session.setAttribute("User", user);
			return "home";
		} else {
			model.put("Prompt", "User Id/Password is incorrect");
			return "account";
		}
	}

	@RequestMapping("forget.do")
	public String forgetPass(ForgetBean forget, Map model, HttpSession session) {
		if (service.validate(forget)) {
			session.setAttribute("Id", forget.getEmail());
			session.setAttribute("mno", forget.getContact());
			System.out.println(forget.getContact());
			return "otpprocess";
		} else {
			model.put("Invalid", "User Id & Email does not match");
			return "forget";
		}
	}

	@RequestMapping("change.do")
	public String changePass(LoginBean change, Map model, HttpSession session) {
		change.setEmail((String) session.getAttribute("Id"));
		if (service.changePassword(change)) {
			model.put("Prompt", "Password successfully changed");
			return "home";
		} else {
			model.put("Invalid", "Passwords does not match");
			return "change";
		}
	}

	@RequestMapping("register.do")
	public String persist(User user, Map model) {
		if (service.persist(user)) {
			model.put("Prompt", "Thank you for registration");
			return "account";
		} else {
			model.put("Invalid", "User Id already exist");
			return "register";
		}
	}

	@RequestMapping("logout.do")
	public String logout(Map model, HttpSession session) {
		session.invalidate();
		model.put("Prompt", "Logout successfully");
		return "home";
	}

	@RequestMapping(value= "home.do",method= RequestMethod.GET)
	public List<Product> displayproducts(Map model, HttpSession session) {
		System.out.println("yeh run karega");
		List<Product> products = service.displayproducts();
		model.put("AllProducts", products);
		return products;
	}

}
