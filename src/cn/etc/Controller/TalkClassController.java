package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.etc.Biz.TalkClassBiz;
import cn.etc.Model.TalkClass;
@Controller
public class TalkClassController {
	@Resource(name="talkClassBizImpl")
	private TalkClassBiz tb;
	@RequestMapping(value="addClass.action")
	public String addAction(TalkClass class1,HttpServletRequest request,HttpServletResponse response){
		tb.add(class1);
		return "TalkFood1";
	}
	@RequestMapping(value="deleteClass.action")
	public String deleteAction(TalkClass class1 ,HttpServletRequest request,HttpServletResponse response){
		tb.delete(class1);
		return "TalkFood1";
	}
	@RequestMapping(value="updateClass.action")
	public String updateAction(TalkClass class1,HttpServletRequest request,HttpServletResponse response){
		tb.update(class1);
		return "TalkFood1";
	}
	@RequestMapping(value="searchAllClass.action")
	public String searchAll(Model model,HttpServletRequest request,HttpServletResponse response){
		List<TalkClass> listAll=tb.searchAll();
		model.addAttribute("li", listAll);
		return "TalkFood1";
	}
}
