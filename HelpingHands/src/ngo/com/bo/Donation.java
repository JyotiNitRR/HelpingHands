package ngo.com.bo;

import java.util.Date;

public class Donation {
	private long id;
	private String category;
	private Date dob;
	private String firstName;
	private String lastName;
	private String email;
	private long phoneNumber;
	private String address;
	private String itemDetails;
	private Date created_at;
	
	

	public Donation(long id, String category, Date dob, String firstName,
			String lastName, String email, long phoneNumber, String address,
			String itemDetails, Date created_at) {
		super();
		this.id = id;
		this.category = category;
		this.dob = dob;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.itemDetails = itemDetails;
		this.created_at = created_at;
	}



	public Donation(String category, Date dob, String firstName,
			String lastName, String email, long phoneNumber, String address,
			String itemDetails) {
		super();
		this.category = category;
		this.dob = dob;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.itemDetails = itemDetails;
	}



	public Donation() {
		// TODO 
	}



	public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public Date getDob() {
		return dob;
	}



	public void setDob(Date dob) {
		this.dob = dob;
	}



	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public long getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getItemDetails() {
		return itemDetails;
	}



	public void setItemDetails(String itemDetails) {
		this.itemDetails = itemDetails;
	}



	public Date getCreated_at() {
		return created_at;
	}



	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	

}
