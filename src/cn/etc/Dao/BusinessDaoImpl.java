package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Business;
import cn.etc.Model.BusinessClass;
@Repository
public class BusinessDaoImpl implements BusinessDao {
	@Autowired
	private BusinessDao bd;
	@Override
	public List<Business> searchBusinessAll() {
		return bd.searchBusinessAll();
	}

	@Override
	public List<Business> searchBusinessByType(BusinessClass businessClass) {
		return bd.searchBusinessByType(businessClass);
	}

	@Override
	public Business searchBusinessByName(Business business) {
		return bd.searchBusinessByName(business);
	}

	@Override
	public int addBusiness(Business business) {
		return bd.addBusiness(business);
	}

	@Override
	public int deleteBusiness(Business business) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBusiness(Business business) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Business searchBusinessById(Business business) {
		// TODO Auto-generated method stub
		return bd.searchBusinessById(business);
	}

	@Override
	public int updateBusinessCount(Business business) {
		// TODO Auto-generated method stub
		return bd.updateBusinessCount(business);
	}

	@Override
	public List<Business> searchBusinessBySearch(Business business) {
		// TODO Auto-generated method stub
		return bd.searchBusinessBySearch(business);
	}

}
