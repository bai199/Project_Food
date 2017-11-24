package cn.etc.Dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;
@Repository
public class HealthDaoImpl extends SqlSessionDaoSupport implements HealthDao {
	@Autowired
	private HealthDao hd;
	
	@Resource
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public List<Health> searchAll() {
		return hd.searchAll();
	}

	@Override
	public List<Health> searchAll2(int a, int b) {
		//第一个参数从几开始截取，第二个参数显示几行；
		RowBounds rb = new RowBounds(a,b);
		List<Health> ll= this.getSqlSession().selectList("cn.etc.Dao.searchByHealthClass123Id", null, rb);
		return ll;
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
