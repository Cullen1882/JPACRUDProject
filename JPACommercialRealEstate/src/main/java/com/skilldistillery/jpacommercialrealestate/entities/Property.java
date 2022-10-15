package com.skilldistillery.jpacommercialrealestate.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Property {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String street;
	
	private String street2;
	
	private String city;
	
	private String state;
	
	@Column(name="zip_code")
	private String zipCode;
	
	@Column(name="tax_id")
	private int taxId;
	
	@Column(name="owner_id")
	private int ownerId;
	
	@Column(name="property_type_id")
	private int propertyTypeId;
	
	@Column(name="num_units")
	private int numUnits;
	
	@Column(name="year_built")
	private int yearBuilt;
	
	@Column(name="owner_occupied")
	private boolean ownerOccupied;
	
	
	

	public Property() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getStreet2() {
		return street2;
	}

	public void setStreet2(String street2) {
		this.street2 = street2;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public int getTaxId() {
		return taxId;
	}

	public void setTaxId(int taxId) {
		this.taxId = taxId;
	}

	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	public int getPropertyTypeId() {
		return propertyTypeId;
	}

	public void setPropertyTypeId(int propertyTypeId) {
		this.propertyTypeId = propertyTypeId;
	}

	public int getNumUnits() {
		return numUnits;
	}

	public void setNumUnits(int numUnits) {
		this.numUnits = numUnits;
	}

	public int getYearBuilt() {
		return yearBuilt;
	}

	public void setYearBuilt(int yearBuilt) {
		this.yearBuilt = yearBuilt;
	}

	public boolean isOwnerOccupied() {
		return ownerOccupied;
	}

	public void setOwnerOccupied(boolean ownerOccupied) {
		this.ownerOccupied = ownerOccupied;
	}

	@Override
	public String toString() {
		return "Property [id=" + id + ", street=" + street + ", street2=" + street2 + ", city=" + city + ", state="
				+ state + ", zipCode=" + zipCode + ", taxId=" + taxId + ", ownerId=" + ownerId + ", propertyTypeId="
				+ propertyTypeId + ", numUnits=" + numUnits + ", yearBuilt=" + yearBuilt + ", ownerOccupied="
				+ ownerOccupied + "]";
	}
	
	
	
}
