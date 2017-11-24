package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.BusinessClass;
@Repository
public class BusinessClassDaoImpl implements BusinessClassDao {
	@Autowired
	private BusinessClassDao bcd;
	@Override
	public List<BusinessClass> searchBusinessClassAll() {
		return bcd.searchBusinessClassAll();
	}

	@Override
	public int addBusinessClass(BusinessClass businessClass) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBusinessClass(BusinessClass businessClass) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletetBusinessClass(BusinessClass businessClass) {
		// TODO Auto-generated method stub
		return 0;
	}

}
