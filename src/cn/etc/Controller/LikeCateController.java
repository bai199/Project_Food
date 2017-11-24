package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.etc.Biz.LikeCateBiz;
import cn.etc.Model.LikeCate;

@Controller
public class LikeCateController {
	@Resource(name="likeCateBizImpl")
	private LikeCateBiz lcb;
	
	//所有
	@RequestMapping("searchAlllikecate.action")
	public String searchAlllikecate(LikeCate likecate,HttpServletRequest request,HttpServletResponse response,Model model){
		List<LikeCate> listAll=lcb.searchAllLike();
		model.addAttribute("likecate", listAll);
		return "LikeCateSearchAll";
	}
	//根据likeID
	@RequestMapping(value="searchByidlikecate.action")
	public String searchByIdlikecate(LikeCate likecate,HttpServletRequest request,HttpServletResponse response,Model model){
		LikeCate lc=lcb.searchByIdLike(likecate);
		
		model.addAttribute("likecateid", lc);
		return "TodayCate";
	}
	//根据用户ID查询喜好
	@RequestMapping(value="searchByUserIdlikecate.action")
	public String searchByUserIdlikecate(LikeCate likecate,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println("shenme"+likecate.getUser_id());
		List<LikeCate> lc=lcb.searchByUserIdlikecate(likecate);
		System.out.println(lc);
		model.addAttribute("likecateuserid", lc);
		/*return "LikeCateSearchAll";*/
		return "forward:searchByTypecate.action";
	}
	
	
	@RequestMapping(value="addlikecate.action",method=RequestMethod.POST)
	public String AddActionlikecate(LikeCate likecate,HttpServletRequest request,HttpServletResponse response){
		lcb.addLike(likecate);
		return "forward:searchAlllikecate.action";
	}
	@RequestMapping("updatelikecate.action")
	public String Updatelikecate(LikeCate likecate,HttpServletRequest request,HttpServletResponse response,Model model){
		lcb.updateLike(likecate);
		return "forward:searchAlllikecate.action";
	}
	@RequestMapping("deletelikecate.action")
	public String Deletelikecate(LikeCate likecate,HttpServletRequest request,HttpServletResponse response,Model model){
		lcb.deleteLike(likecate);
		return "forward:searchAlllikecate.action";
	}

}
