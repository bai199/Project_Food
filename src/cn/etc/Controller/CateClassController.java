package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.etc.Biz.CateClassBiz;
import cn.etc.Model.Cate;
import cn.etc.Model.CateClass;

@Controller
public class CateClassController {
	@Resource(name="cateClassBizImpl")
	private CateClassBiz ccb;
	@RequestMapping("seachAllcateclass.action")
	public String SearchAll(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(1);
		List<CateClass> listAll=ccb.SearchAll();
		System.out.println(listAll);
		model.addAttribute("cateclassli",listAll);
		return "CateClassSearchAll";
	}
	//ajax��ѯ����
	@RequestMapping("seachAllcateclassAjax.action")
	public @ResponseBody List<CateClass> SearchAllAjax(HttpServletRequest request,HttpServletResponse response,Model model){
		
		List<CateClass> listAll=ccb.SearchAll();
		//System.out.println(listAll);
		return listAll;
	}

	@RequestMapping(value="addcateclass.action",method=RequestMethod.POST)
	public String AddAction(CateClass cateclass,HttpServletRequest request,HttpServletResponse response,Model model){
		ccb.Add(cateclass);
		return "forward:seachAllcateclass.action";
	}
	//����Ա�������Ʋ�ѯ
	@RequestMapping("SearchBynamecateclass.action")
	public String SearchByname(CateClass cateclass,HttpServletRequest request,HttpServletResponse response,Model model){
		CateClass cc=ccb.SearchByName(cateclass);
		model.addAttribute("cate", cc);
		return "CateClassSearchBynameSuccess";
	}
	//����Ա�޸���ʳ
	@RequestMapping("updatecateclass.action")
	public String Update(CateClass cateclass,HttpServletRequest request,HttpServletResponse response,Model model){
		ccb.Update(cateclass);
		return "forward:seachAllcateclass.action";
	}
	//����Աɾ����ʳ
	@RequestMapping("deletecateclass.action")
	public String Delete(Integer cateclass_id,HttpServletRequest request,HttpServletResponse response,Model model){
		ccb.Delete(cateclass_id);
		return "forward:seachAllcateclass.action";
	}
}
