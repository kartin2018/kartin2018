package repo;

import java.util.List;

import bean.ForgetBean;
import bean.LoginBean;
import entity.Cart;
import entity.Product;
import entity.User;

public interface UserRepo {
	User authenticate(LoginBean login);

	boolean validate(ForgetBean forget);

	boolean changePassword(LoginBean change);

	boolean persist(User user);

	List<Product> displayproducts();

}
