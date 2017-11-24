package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.BusinessDaoImpl;
import cn.etc.Model.Business;
import cn.etc.Model.BusinessClass;
@Service
public class BusinessBizImpl implements BusinessBiz {
	@Resource(name="businessDaoImpl")
	private BusinessDaoImpl bdi;
	@Override
	public List<Business> searchBusinessAll() {
		// TODO Auto-generated method stub
		return bdi.searchBusinessAll();
	}

	@Override
	public List<Business> searchBusinessByType(BusinessClass businessClass) {
		// TODO Auto-generated method stub
		return bdi.searchBusinessByType(businessClass);
	}

	@Override
	public Business searchBusinessByName(Business business) {
		// TODO Auto-generated method stub
		return bdi.searchBusinessByName(business);
	}

	@Override
	public int addBusiness(Business business) {
		// TODO Auto-generated method stub
		return bdi.addBusiness(business);
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
		return bdi.searchBusinessById(business);
	}

	@Override
	public int updateBusinessCount(Business business) {
		// TODO Auto-generated method stub
		return bdi.updateBusinessCount(business);
	}

	@Override
	public List<Business> searchBusinessBySearch(Business business) {
		// TODO Auto-generated method stub
		return bdi.searchBusinessBySearch(business);
	}

}
