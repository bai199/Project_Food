package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.HealthClassDaoImpl;
import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;

@Service
public class HealthClassBizImpl implements HealthClassBiz{
	@Resource(name="healthClassDaoImpl")
	private HealthClassDaoImpl hl;
	@Override
	public List<HealthClass> searchAll() {
		// TODO Auto-generated method stub
		return hl.searchAll();
	}

	@Override
	public List<HealthClass> searchAll2(int a, int b) {
		// TODO Auto-generated method stub
		return hl.searchAll2(a, b);
	}

	@Override
	public Health searchById(int id) {
		// TODO Auto-generated method stub
		return hl.searchById(id);
	}

	@Override
	public int delete(HealthClass healthclass) {
		// TODO Auto-generated method stub
		return hl.delete(healthclass);
	}

	@Override
	public int update(HealthClass healthclass) {
		// TODO Auto-generated method stub
		return hl.update(healthclass);
	}

	@Override
	public int insert(HealthClass healthclass) {
		// TODO Auto-generated method stub
		return hl.insert(healthclass);
	}

	@Override
	public List<HealthClass> searchByHealthClass123Id(HealthClass healClass) {
		// TODO Auto-generated method stub
		return hl.searchByHealthClass123Id(healClass);
	}

}
