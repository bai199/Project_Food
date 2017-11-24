package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.BusinessClassDaoImpl;
import cn.etc.Model.BusinessClass;
@Service
public class BusinessClassBizImpl implements BusinessClassBiz {
	@Resource(name="businessClassDaoImpl")
	private BusinessClassDaoImpl bcdi;
	@Override
	public List<BusinessClass> searchBusinessClassAll() {
		return bcdi.searchBusinessClassAll();
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
