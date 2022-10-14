package com.skilldistillery.jpacommercialrealestate.data;

import java.util.List;

import com.skilldistillery.jpacommercialrealestate.entities.Property;


public interface PropertyDAO {
	
	List<Property> findAll();
	Property findById(int propertyId);
	Property create(int propertyId, Property property);
	Property update(int propertyId, Property property);
	boolean deleteById(int propertyId);

}
