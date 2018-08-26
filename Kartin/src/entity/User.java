package entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "userkart")
public class User {
	@Id
	@Column(length = 50)
	private String email;
	@Column(length = 65)
	private String password;

	@Column(name = "name")
	private String userName;

	private String address;

	private String city;

	@Column(name = "mobno")
	private long contact;

	@OneToMany(mappedBy = "user", cascade = { CascadeType.ALL },fetch= FetchType.EAGER)
	private Set<Orders> order = new HashSet<>();

	@OneToOne(mappedBy="user",cascade= {CascadeType.ALL},fetch= FetchType.EAGER)
	private Cart cart;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	
	public Set<Orders> getOrder() {
		return order;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public void setOrder(Set<Orders> order) {
		this.order = order;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public long getContact() {
		return contact;
	}


	

}
