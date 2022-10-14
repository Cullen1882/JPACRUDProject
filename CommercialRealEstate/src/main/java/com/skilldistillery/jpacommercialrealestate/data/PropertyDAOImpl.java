package com.skilldistillery.jpacommercialrealestate.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacommercialrealestate.entities.Property;


@Service
@Transactional
public class PropertyDAOImpl implements PropertyDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Property> findAll() {
		String jpql = "SELECT p FROM Property p";
		return em.createQuery(jpql, Property.class).getResultList();
	}

	@Override
	public Property findById(int propertyId) {
		return em.find(Property.class, 1);
	}

	@Override
	public Property create(int propertyId, Property property) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Property update(int propertyId, Property property) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int propertyId) {
		// TODO Auto-generated method stub
		return false;
	}

}
