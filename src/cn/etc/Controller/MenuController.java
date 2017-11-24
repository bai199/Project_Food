package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.etc.Biz.MenuBiz;
import cn.etc.Model.Business;
import cn.etc.Model.Menu;

@Controller
public class MenuController {
	@Resource(name="menuBizImpl")
	private MenuBiz mb;
	@RequestMapping(value="searchMenuByBusiness.action")
	public String searchMenuByBusiness(Menu menu,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(menu);
		List<Menu> menuList=mb.searchMenuByBusiness(menu);
		System.out.println(menuList);
		model.addAttribute("menuList",menuList);
		return "OnlineMeal_businessMenu";
		
	}
	
	@RequestMapping(value="searchMenuByBusinessShowUser.action")
	public String searchMenuByBusinessShowUser(Menu menu,HttpServletRequest request,HttpServletResponse response,Model model){
		
		System.out.println(menu);
		List<Menu> menuList=mb.searchMenuByBusiness(menu);
		System.out.println(menuList);
		model.addAttribute("business_id", menu.getBusiness_id());
		model.addAttribute("menuList",menuList);
		return "forward:searchBusinessById.action";
	}
	//ajax使用的点击菜价钱等信息
	@RequestMapping(value="searchByFoodId.action")
	public @ResponseBody Menu searchByFoodId(Menu menu,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(menu);
		Menu me=mb.searchByFoodId(menu);
		return me;
		
	}
	
}
