package com.propertytax.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class FormData {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column(name="owner_name")
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="YOA")
	private String YOA;
	
	@Column(name="address")
	private String address;
	
	@Column(name="zone")
	private char zone;
	
	@Column(name="description")
	private String description;
	
	@Column(name="status")
	private String status;
	
	@Column(name="YOC")
	private String YOC;
	
	@Column(name="area")
	private String area;
	
	@Column(name="total")
	private String total;
	
	

	

	public long getId() {
		return id;
	}





	public void setId(long id) {
		this.id = id;
	}





	public FormData(String name, String email, String yOA, String address, char zone, String description, String status,
			String yOC, String area, String total) {
		super();
		this.name = name;
		this.email = email;
		this.YOA = yOA;
		this.address = address;
		this.zone = zone;
		this.description = description;
		this.status = status;
		this.YOC = yOC;
		this.area = area;
		this.total = total;
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getYOA() {
		return YOA;
	}





	public void setYOA(String yOA) {
		YOA = yOA;
	}





	public String getAddress() {
		return address;
	}





	public void setAddress(String address) {
		this.address = address;
	}





	public char getZone() {
		return zone;
	}





	public void setZone(char zone) {
		this.zone = zone;
	}





	public String getDescription() {
		return description;
	}





	public void setDescription(String description) {
		this.description = description;
	}





	public String getStatus() {
		return status;
	}





	public void setStatus(String status) {
		this.status = status;
	}





	public String getYOC() {
		return YOC;
	}





	public void setYOC(String yOC) {
		YOC = yOC;
	}





	public String getArea() {
		return area;
	}





	public void setArea(String area) {
		this.area = area;
	}





	public String getTotal() {
		return total;
	}





	public void setTotal(String total) {
		this.total = total;
	}





	@Override
	public String toString() {
		return "FormData [id=" + id + ", name=" + name + ", email=" + email + ", YOA=" + YOA + ", address=" + address
				+ ", zone=" + zone + ", description=" + description + ", status=" + status + ", YOC=" + YOC + ", area="
				+ area + ", total=" + total + "]";
	}





	public FormData() {
		super();
	}
	
}
