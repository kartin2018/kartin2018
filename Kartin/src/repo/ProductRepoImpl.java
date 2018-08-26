package repo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Product;

@Repository
public class ProductRepoImpl implements ProductRepo {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public List<Product> searchProduct(String brand) {
		Session session = factory.openSession();
		String hql="from Product where pbrand='"+brand+"'";
		Query query = session.createQuery(hql);
		return query.list();
	}
	
	@Override
	public List<Product> displayProduct(String category) {
		Session session = factory.openSession();
		String hql="from Product where pcategory='"+category+"'";
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public List<Product> displaysingleProduct(String id) {
		Session session = factory.openSession();
		String hql = "from Product where pid='"+id+"'"; 
		Query query = session.createQuery(hql);
		return query.list();
	}





	}


