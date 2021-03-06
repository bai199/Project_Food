package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.Menu;

public interface MenuDao {
	//
	public List<Menu> searchMenuAll();
	//
	public List<Menu> searchMenuByBusiness(Menu menu);
	//
	public Menu searchByFoodId(Menu menu);
	public int addMenu(Menu menu);
	public int deleteMenu(Menu menu);
	public int updateMenu(Menu menu);
}
