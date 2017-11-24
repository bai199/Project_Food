package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.BusinessClass;

public interface BusinessClassDao {
	//导航页面加载显示多有分类
	public List<BusinessClass> searchBusinessClassAll();
	//增删改查管理员操作
	public int addBusinessClass(BusinessClass businessClass);
	public int updateBusinessClass(BusinessClass businessClass);
	public int deletetBusinessClass(BusinessClass businessClass);
}
