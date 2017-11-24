package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;




import cn.etc.Biz.BusinessClassBiz;

import cn.etc.Model.BusinessClass;

@Controller
public class BusinessClassController {
	@Resource(name="businessClassBizImpl")
	private BusinessClassBiz bb;
	@RequestMapping(value="searchBusinessClassAll.action")
	public String searchBusinessClassAll(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(11);
		List<BusinessClass> businessClassList=bb.searchBusinessClassAll();
		model.addAttribute("businessClassList", businessClassList);
		return "forward:searchBusinessAll.action";
	}
	@RequestMapping(value="searchBusinessClassAllSearch.action")
	public String searchBusinessClassAllSearch(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(11);
		List<BusinessClass> businessClassList=bb.searchBusinessClassAll();
		model.addAttribute("businessClassList", businessClassList);
		return "OnlineMeal_order";
	}
}
