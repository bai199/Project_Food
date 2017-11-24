package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.CateDao;
import cn.etc.Model.Cate;
@Service
public class CateBizImpl implements CateBiz {
	@Resource(name="cateDaoImpl")
	private CateDao cd;
	
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
		return cd.getCount(cate);
	}

	@Override
	public Cate SearchByIdcate(Cate cate) {
		return cd.SearchByIdcate(cate);
	}

	@Override
	public List<Cate> SearchByTypecate(Cate cate,int s,int e) {
		return cd.SearchByTypecate(cate, s, e);
	}

	@Override
	public List<Cate> SearchByHot(Cate cate) {
		return cd.SearchByHot(cate);
	}

}
