package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.MenuDaoImpl;
import cn.etc.Model.Menu;
@Service
public class MenuBizImpl implements MenuBiz {
	@Resource(name="menuDaoImpl")
private MenuDaoImpl mdi;
	@Override
	public List<Menu> searchMenuAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Menu> searchMenuByBusiness(Menu menu) {
		System.out.println(111);
		return mdi.searchMenuByBusiness(menu);
	}

	@Override
	public int addMenu(Menu menu) {
		// TODO Auto-generated method stub
		return mdi.addMenu(menu);
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
		return mdi.searchByFoodId(menu);
	}

}
