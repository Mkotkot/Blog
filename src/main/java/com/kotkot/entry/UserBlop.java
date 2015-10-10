package com.kotkot.entry;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;




import com.kotkot.entry.Address;

@Entity
public class UserBlop {

	private int id;
	private String name;
	private String email ;
	private String password ; 
	private Date dateOfBirth;
	private Address address;
	private List<Blop> blops;

	

	/**
	 * @return the id
	 */
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	
	

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the dateOfBirth
	 */
	@Temporal(TemporalType.DATE)
	public Date getDateOfBirth() {
//		System.out.println("the date    - -  - -  "+dateOfBirth.toString());
		
		return dateOfBirth;
		
//		return new Date();
	}

	/**
	 * @param dateOfBirth
	 *            the dateOfBirth to set
	 */
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return the address
	 */
	public Address getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(Address address) {
		this.address = address;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the blop
	 */

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, targetEntity = Blop.class)
	public List<Blop> getBlops() {
		return blops;
	}

	/**
	 * @param blops the blops to set
	 */
	public void setBlops(List<Blop> blops) {
		this.blops = blops;
	}
}
