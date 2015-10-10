package com.kotkot.entry;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;


@Entity
public class Blop {

	private int id;
	private String titel;
	private String subject;
	private Date blopDate;
	private UserBlop userBlop ;


	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "userID")
	public UserBlop getUserBlop() {
		return userBlop;
	}

	/**
	 * @param userBlop the userBlop to set
	 */
	public void setUserBlop(UserBlop userBlop) {
		this.userBlop = userBlop;
	}

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
	 * @return the titel
	 */
	public String getTitel() {
		return titel;
	}

	/**
	 * @param titel
	 *            the titel to set
	 */
	public void setTitel(String titel) {
		this.titel = titel;
	}

	/**
	 * @return the subject
	 */
	@Lob
	public String getSubject() {
		return subject;
	}

	/**
	 * @param subject
	 *            the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * @return the blopDate
	 */
	public Date getBlopDate() {
		return blopDate;
	}

	/**
	 * @param blopDate
	 *            the blopDate to set
	 */
	public void setBlopDate(Date blopDate) {
		this.blopDate = blopDate;
	}


}
