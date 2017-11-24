package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.etc.Biz.NoteBiz;
import cn.etc.Model.Note;

@Controller
public class NoteController {
	@Resource(name="noteBizImpl")
	private NoteBiz nb;
	@RequestMapping(value="addNote.action",method=RequestMethod.POST)
	public String addAction(Note note,HttpServletRequest request, HttpServletResponse response ){
		request.getRequestDispatcher("utf-8");
		response.setCharacterEncoding("text/html:charset=utf-8");
		nb.addNote(note);
		return "forward:searchNoteById.action";
		}
	@RequestMapping(value="updateCount.action")
	  public String upDateAction(Note note,HttpServletRequest request,HttpServletResponse response) {
		note.setTrNumber(note.getTrNumber()+1);
		nb.updateNote(note);
		return "forward:searchBodyById.action";
	}
	  @RequestMapping(value="deleteNote.action")
	  public String deleteAction(Note note,HttpServletRequest request,HttpServletResponse response) {
		  nb.deleteNote(note);
		  return "forward:searchNoteById.action";
		  }
	 
	  @RequestMapping(value="searchBodyById.action")//从标题页面跳转到评论内容页面
	  public String searchBodyById(Note id,HttpServletRequest request,HttpServletResponse response,Model model) {
		  
		  Note body=nb.searchBody(id);
		 model.addAttribute("body",body);
		  return "forward:searchAllReply.action";
		  }
	  @RequestMapping(value="searchNoteById.action")//从分类页面跳转到标题页面
	  public String searchAllById(Note note,HttpServletRequest request,HttpServletResponse response,Model model) {
		  String pageNumber=request.getParameter("pageNumber");
		  if(pageNumber==null||pageNumber==""){
			  pageNumber="1";
		  }
			Integer number=Integer.parseInt(pageNumber);
			Note note1=nb.count();
			int count=note1.getTotal()/6;
			if(note1.getTotal()%6!=0){
				count++;
			}
			if(number<1||number>count){
				number=1;
			}
		  List<Note> listAllById=nb.searchAllById(note,(number-1)*6,6);
		 model.addAttribute("li",listAllById);
		 model.addAttribute("talkClass_id",note);
		 model.addAttribute("count",count);
		 model.addAttribute("pageNumber",number);
		  return "TalkFood2";
		  }
}
