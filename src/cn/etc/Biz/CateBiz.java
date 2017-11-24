package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.Cate;

public interface CateBiz {
	public Cate SearchByName(Cate cate); //管理员查询
	public int Add(Cate cate);	//管理员增加
	public int Update(Cate cate);	//管理员修改
	public int Delete(Cate cate);	//管理员删除
	public List<Cate> SearchAll();	//管理员查所有
	public Cate SearchByIdcate(Cate cate);
	public List<Cate> SearchByTypecate(Cate cate,int s,int e); //根据喜好表查询对应的美食
	public Cate getCount(Cate cate); //分页计数
	public List<Cate> SearchByHot(Cate cate); //分类查询
}
