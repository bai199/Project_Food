package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.CateClass;
@Repository
public class CateClassDaoImpl implements CateClassDao {
	
	@Autowired
	private CateClassDao cc;
	
	@Override
	public CateClass SearchByName(CateClass cateclass) {
		return cc.SearchByName(cateclass);
	}

	@Override
	public int Add(CateClass cateclass) {
		return cc.Add(cateclass);
	}

	@Override
	public int Update(CateClass cateclass) {
		return cc.Update(cateclass);
	}

	@Override
	public int Delete(int id) {
		return cc.Delete(id);
	}

	@Override
	public List<CateClass> SearchAll() {
		return cc.SearchAll();
	}

}
