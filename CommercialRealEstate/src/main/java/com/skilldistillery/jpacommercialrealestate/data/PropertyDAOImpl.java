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
	public Property findById(int id) {
//		String jpql = "SELECT street, numUnits FROM Property WHERE id= :param";
//		return em.createQuery(jpql, Property.class).setParameter("param", id).getSingleResult();
		return em.find(Property.class, id);
	}

	@Override
	public Property create(Property property) {
		em.persist(property);
		return  property;
	}

	@Override
	public Property update(int id, Property property) {
		Property updateProp = em.find(Property.class, id);
		if(updateProp != null) {
			updateProp.setId(property.getId());
			updateProp.setStreet(property.getStreet());
			updateProp.setStreet2(property.getStreet2());
			updateProp.setCity(property.getCity());
			updateProp.setState(property.getState());
			updateProp.setZipCode(property.getZipCode());
			updateProp.setTaxId(property.getTaxId());
			updateProp.setOwnerId(property.getOwnerId());
			updateProp.setPropertyTypeId(property.getPropertyTypeId());
			updateProp.setNumUnits(property.getNumUnits());
			updateProp.setYearBuilt(property.getYearBuilt());
			updateProp.setOwnerOccupied(property.isOwnerOccupied());
			
		}
		return updateProp;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
