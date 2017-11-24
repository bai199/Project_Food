package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;

@Repository
public class HealthClassDaoImpl implements HealthClassDao{
	@Autowired
	private HealthClassDao hd;

	@Override
	public List<HealthClass> searchAll() {
		// TODO Auto-generated method stub
		return hd.searchAll();
	}

	@Override
	public List<HealthClass> searchAll2(int a, int b) {
		// TODO Auto-generated method stub
		return hd.searchAll2(a, b);
	}

	@Override
	public Health searchById(int id) {
		// TODO Auto-generated method stub
		return hd.searchById(id);
	}

	@Override
	public int delete(HealthClass healthclass) {
		// TODO Auto-generated method stub
		return hd.delete(healthclass);
	}

	@Override
	public int update(HealthClass healthclass) {
		// TODO Auto-generated method stub
		return hd.update(healthclass);
	}

	@Override
	public int insert(HealthClass healthclass) {
		// TODO Auto-generated method stub
		return hd.insert(healthclass);
	}

	@Override
	public List<HealthClass> searchByHealthClass123Id(HealthClass healClass) {
		// TODO Auto-generated method stub
		return hd.searchByHealthClass123Id(healClass);
	}
	
}
