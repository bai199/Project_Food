package cn.etc.Biz;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.HealthDaoImpl;
import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;
@Service
public class HealthBizImpl implements HealthBiz {
	@Resource(name="healthDaoImpl")
	private HealthDaoImpl hd;
	@Override
	public List<Health> searchAll(){
		// TODO Auto-generated method stub
		return hd.searchAll();
	}

	@Override
	public List<Health> searchAll2(int a, int b) {
		// TODO Auto-generated method stub
		return hd.searchAll2(a, b);
	}

	@Override
	public int delete(Health health) {
		// TODO Auto-generated method stub
		return hd.delete(health);
	}

	@Override
	public int update(Health health) {
		// TODO Auto-generated method stub
		return hd.update(health);
	}

	@Override
	public int insert(Health health) {
		// TODO Auto-generated method stub
		return hd.insert(health);
	}

	@Override
	public List<Health> searchAllMr() {
		// TODO Auto-generated method stub
		return hd.searchAllMr();
	}
	@Override
	public List<Health> searchByHealthClass123Id(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return hd.searchByHealthClass123Id(map);
	}

	@Override
	public Health searchByID(int id) {
		// TODO Auto-generated method stub
		return hd.searchByID(id);
	}

	@Override
	public List<Health> LikeSearch(String string) {
		// TODO Auto-generated method stub
		return hd.LikeSearch(string);
	}

	@Override
	public Integer getCount(int a) {
		// TODO Auto-generated method stub
		return hd.getCount(a);
	}

}
