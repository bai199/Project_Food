package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Menu;
@Repository
public class MenuDaoImpl implements MenuDao {
	@Autowired
	private MenuDao md;
	@Override
	public List<Menu> searchMenuAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Menu> searchMenuByBusiness(Menu menu) {
		// TODO Auto-generated method stub
		return md.searchMenuByBusiness(menu);
	}

	@Override
	public int addMenu(Menu menu) {
		// TODO Auto-generated method stub
		return md.addMenu(menu);
	}

	@Override
	public int deleteMenu(Menu menu) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Menu searchByFoodId(Menu menu) {
		// TODO Auto-generated method stub
		return md.searchByFoodId(menu);
	}

}
