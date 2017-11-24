package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.CateClass;

public interface CateClassBiz{
	public CateClass SearchByName(CateClass cateclass); //管理员查询
	public int Add(CateClass cateclass);	//管理员增加
	public int Update(CateClass cateclass);	//管理员修改
	public int Delete(int id);	//管理员删除
	public List<CateClass> SearchAll();	//管理员查所有
}
