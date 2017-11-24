package cn.etc.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.etc.Biz.CateBiz;
import cn.etc.Model.Cate;
import cn.etc.Model.CateClass;
import cn.etc.Model.LikeCate;

@Controller
public class CateController {
	@Resource(name="cateBizImpl")
	private CateBiz cb;
	//管理员查询所有
	@RequestMapping("seachAllcate.action")
	public String SearchAll(HttpServletRequest request,HttpServletResponse response,Model model){
		List<Cate> listAll=cb.SearchAll();
		model.addAttribute("cateli",listAll);
		return "CateSearchAll";
	}
	//管理员增加美食
	@RequestMapping(value="addcate.action",method=RequestMethod.POST)
	public String AddAction(Cate cate,HttpServletRequest request,HttpServletResponse response){
		System.out.println(cate);
		cb.Add(cate);
		return "forward:seachAllcate.action";
	}
	//管理员根据名称查询
	@RequestMapping("SearchBynamecate.action")
	public String SearchByname(Cate cate,HttpServletRequest request,HttpServletResponse response,Model model){
		Cate c=cb.SearchByName(cate);
		model.addAttribute("cate", c);
		return "SearchBynameSuccess";
	}
	
	//前台做法根据ID获取
	@RequestMapping("SearchByIdcate.action")
	public String SearchByIdcate(Cate cate,HttpServletRequest request,HttpServletResponse response,Model model) {
		System.out.println(cate);
		Cate c=cb.SearchByIdcate(cate);
		model.addAttribute("cateid",c);
		return "TC_PracticeFood";
		
	}
	//管理员修改美食
	@RequestMapping("updatecate.action")
	public String Update(Cate cate,HttpServletRequest request,HttpServletResponse response,Model model){
		cb.Update(cate);
		return "forward:seachAllcate.action";
	}
	//管理员删除美食
	@RequestMapping("deletecate.action")
	public String Delete(Cate cate,HttpServletRequest request,HttpServletResponse response,Model model){
		cb.Delete(cate);
		return "forward:seachAllcate.action";
	}
	//通过searchByUserIdlikecate传过来的喜好查询类型返回主页面推荐
	@RequestMapping(value="searchByTypecate.action")
	public String SearchByTypecate(Cate cate,HttpServletRequest request,HttpServletResponse response,Model model){
			List<LikeCate> list=(List<LikeCate>) request.getAttribute("likecateuserid");
			for (LikeCate l : list) {
				cate.setCate_hot(l.getCate_hot());
				cate.setCate_taste(l.getCate_taste());
				cate.setCate_area(l.getCate_area());
				cate.setCate_makeClass(l.getCate_makeclass());
				cate.setCate_other(l.getLike_other());
				cate.setCate_class1(l.getCate_class1());}
			System.out.println("进入catecontoroller");
				//分页
				String pageNumber=request.getParameter("pageNumber");//获取当前页码
				
				if(pageNumber==null||pageNumber==""){
					pageNumber="1";
				}
				int number=Integer.parseInt(pageNumber);//当前页码
				System.out.println(number);
				//获取总条数
				Cate cc=cb.getCount(cate);
				//计算总页数
				System.out.println(222);
				int count=cc.getTotal()/3;
				if(cc.getTotal()%3!=0){
					count++;
				}
				if(number<1||number>count){
					number=1;
				}
				System.out.println("进入catecontoroller2");
		
			List<Cate> c=cb.SearchByTypecate(cate,(number-1)*3,6);
			System.out.println(cate+"+"+number);
			System.out.println(c);
			model.addAttribute("catetype", c);
			model.addAttribute("count", count);
			model.addAttribute("pageNumber", number);
		
		return "TodayCate";
	}
	
	@RequestMapping(value="searchByDh.action")
	public String SearchByHot(Cate cate,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(cate);
		List<Cate> list=cb.SearchByHot(cate);
		System.out.println(list);
			/*for (Cate l : list) {
				cate.setCate_hot(l.getCate_hot());
				cate.setCate_taste(l.getCate_taste());
				cate.setCate_area(l.getCate_area());
				cate.setCate_makeClass(l.getCate_makeClass());
				cate.setCate_other(l.getCate_other());
				cate.setCate_class1(l.getCate_class1());}*/
			System.out.println("进入catecontoroller");
				//分页
				String pageNumber=request.getParameter("pageNumber");//获取当前页码
				
				if(pageNumber==null||pageNumber==""){
					pageNumber="1";
				}
				int number=Integer.parseInt(pageNumber);//当前页码
				System.out.println(number);
				//获取总条数
				Cate cc=cb.getCount(cate);
				//计算总页数
				System.out.println(222);
				int count=cc.getTotal()/3;
				if(cc.getTotal()%3!=0){
					count++;
				}
				if(number<1||number>count){
					number=1;
				}
				System.out.println("进入catecontoroller2");
		
			List<Cate> c=cb.SearchByTypecate(cate,(number-1)*3,6);
			System.out.println(c);
			System.out.println(cate+"+"+number);
			System.out.println(c);
			model.addAttribute("catetype", c);
			model.addAttribute("count", count);
			model.addAttribute("pageNumber", number);
		
		return "TodayCate2";
	}
}
