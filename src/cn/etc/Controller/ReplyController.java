package cn.etc.Controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.etc.Biz.ReplyBiz;
import cn.etc.Model.Note;
import cn.etc.Model.Reply;

@Controller
public class ReplyController {
	@Resource(name="replyBizImpl")
	private ReplyBiz rb;
	@RequestMapping(value="addReply.action")
	public String addAction(Reply reply,HttpServletRequest request,HttpServletResponse response,Model model){
		model.addAttribute("trNumber", request.getAttribute("trNumber"));
		rb.add(reply);
		model.addAttribute("note_id", request.getParameter("note_id"));
		return "forward:updateCount.action";
	}
	@RequestMapping(value="deleteReply.action")
	public String deleteAction(Reply reply,HttpServletRequest request,HttpServletResponse response){
		rb.delete(reply);
		return "TalkFood3";
	}
	@RequestMapping(value="updateReply.action")
	public String updateAction(Reply reply,HttpServletRequest request,HttpServletResponse response){
		rb.update(reply);
		return "TalkFood3";
	}
	@RequestMapping(value="searchAllReply.action")//œ‘ æªÿ∏¥
	public String searchAll(Note note,Model model,HttpServletRequest request,HttpServletResponse response){
		 String pageNumber=request.getParameter("pageNumber");
		  if(pageNumber==null||pageNumber==""){
			  pageNumber="1";
		  }
			Integer number=Integer.parseInt(pageNumber);
			Reply note1=rb.count(note.getNote_id());
			int count=note1.getTotal()/4;
			if(note1.getTotal()%5!=0){
				count++;
			}
			if(number<1||number>count){
				number=1;
			}
		  List<Reply> listAllById=rb.searchAllReply((number-1)*4,4);
		 model.addAttribute("li",listAllById);
		 model.addAttribute("count",count);
		 model.addAttribute("pageNumber",number);
		//model.addAttribute("note_id", request.getParameter("note_id"));
		return "TalkFood3";
	}
	
}
