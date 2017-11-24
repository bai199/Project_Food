package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.etc.Biz.UserNamesBiz;
import cn.etc.Model.Menu;
import cn.etc.Model.UserNames;

@Controller
public class UserNamesController {
	@Resource(name="userNamesBizImpl")
	private UserNamesBiz unb;
	@RequestMapping(value="searchByTel.action")
	public String searchByTel(UserNames userNames,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(userNames);
		UserNames userByTel= unb.searchByTel(userNames);
		//userByTel==null&&
		
		if(userByTel!=null&&(userByTel.getUser_pass()).toString().equals(userNames.getUser_pass().toString())){
			model.addAttribute("userByTel", userByTel);
			
		}else{
			model.addAttribute("error", "用户名或密码错误，请重新登录");
		
		}
		return "OnlineMeal";
		
	}
	
	@RequestMapping(value="searchByTelPerson.action")
	public String searchByTelPerson(UserNames userNames,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(userNames);
		UserNames userByTel= unb.searchByTel(userNames);
		System.out.println(userByTel);
		model.addAttribute("userByTel", userByTel);
		return "OnlineMeal_person";
		
	}
	
}
