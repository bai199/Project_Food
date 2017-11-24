package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.CateClassDao;
import cn.etc.Dao.CateClassDaoImpl;
import cn.etc.Model.CateClass;
@Service
public class CateClassBizImpl implements CateClassBiz {
	@Resource(name="cateClassDaoImpl")
	private CateClassDaoImpl ccd;
	
	@Override
	public CateClass SearchByName(CateClass cateclass) {
		return ccd.SearchByName(cateclass);
	}

	@Override
	public int Add(CateClass cateclass) {
		return ccd.Add(cateclass);
	}

	@Override
	public int Update(CateClass cateclass) {
		return ccd.Update(cateclass);
	}

	@Override
	public int Delete(int id) {
		return ccd.Delete(id);
	}

	@Override
	public List<CateClass> SearchAll() {
		return ccd.SearchAll();
	}

}
