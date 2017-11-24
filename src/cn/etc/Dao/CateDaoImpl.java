package cn.etc.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Cate;
@Repository
public class CateDaoImpl extends SqlSessionDaoSupport implements CateDao {
	@Autowired
	private CateDao cd;
	
	@Resource
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	
	@Override
	public List<Cate> SearchByTypecate(Cate cate,int s,int e) {
		
		RowBounds rb=new RowBounds(s,e);
		List<Cate> li=this.getSqlSession().selectList("cn.etc.Dao.CateDao.SearchByTypecate", cate, rb);
		return li;
	}
	
	
	
	@Override
	public Cate SearchByName(Cate cate) {
		return cd.SearchByName(cate);
	}

	@Override
	public int Add(Cate cate) {
		return cd.Add(cate);
	}

	@Override
	public int Update(Cate cate) {
		return cd.Update(cate);
	}

	@Override
	public int Delete(Cate cate) {
		return cd.Delete(cate);
	}

	@Override
	public List<Cate> SearchAll() {
		return cd.SearchAll();
	}

	@Override
	public Cate getCount(Cate cate) {
		System.out.println("sss");
		return cd.getCount(cate);
	}

	@Override
	public Cate SearchByIdcate(Cate cate) {
		return cd.SearchByIdcate(cate);
	}


	@Override
	public List<Cate> SearchByHot(Cate cate) {
		return cd.SearchByHot(cate);
	}

	/*@Override
	public List<Cate> SearchByTypecate(Cate cate,int s,int e) {
		return cd.SearchByTypecate(cate,s,e);
	}*/

}
