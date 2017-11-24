package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.etc.Biz.HealthClassBiz;
import cn.etc.Model.HealthClass;

@Controller
public class HealthClassController {
	@Resource(name="healthClassBizImpl")	
	private HealthClassBiz bz;
	@RequestMapping(value="SearchAllClass.action")
	public String SearchAll(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(1);
			List<HealthClass> li = bz.searchAll();
			model.addAttribute("li",li);
		return "forward:SearchAllMr.action";
		
	}
	
}
