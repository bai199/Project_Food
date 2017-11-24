package cn.etc.Controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.etc.Biz.HealthBiz;
import cn.etc.Model.Health;
import cn.etc.Model.HealthClass;
@Controller
public class HealthController {
	@Resource(name="healthBizImpl")
	private HealthBiz bz;
	@RequestMapping(value="SearchAll.action")
	public String SearchAll(HttpServletRequest request,HttpServletResponse response,Model model){
		List<Health> li=bz.searchAll();
		model.addAttribute("list",li);
		return "Health1";	
	}
	@RequestMapping("Delete.action")
	public String Delete( Health health, Model mo,HttpServletRequest request,HttpServletResponse response){
		bz.delete(health);
		return "Health1";
		
	}
	@RequestMapping("Update.action")
	public String Update(Health health, Model mo,HttpServletRequest request,HttpServletResponse response){
		bz.update(health);
		
		return "Health1";
		
	}
	@RequestMapping("Insert.action")
	public String Insert(Health health, Model mo,HttpServletRequest request,HttpServletResponse response){
		bz.insert(health);
		return "Health1";
		
	}
	
	//��Ʒ��������Լ���Ʒ����
	@RequestMapping("SearchAllMr.action")
	public String SearchAllMr(HttpServletRequest request,HttpServletResponse response,Model model){
		
		List<Health> lii = null;
		//��ȡ��ѯ�������з��� HealthClass_id,HealthClass_nameװ��lis�����У�
		List<HealthClass> lis=(List<HealthClass>) request.getAttribute("li");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", 0);
		map.put("end", 4);
		
		//����lis���ϻ�ȡһ������
		//List<Object> list=new ArrayList<>();
//		for (HealthClass healthClass : lis) {
//		//ͨ������HealthClass�����ѯ Health�����еķ�����Ϣ��
//			lii=bz.searchByHealthClass123Id(map);
//			//list.add(lii);
//			model.addAttribute("list"+healthClass.getHealthclass_id(),lii);
//		}
		
		for(int i=1;i<=4; i++){
			map.put("healthclass_id",i);
			lii=bz.searchByHealthClass123Id(map);
			//list.add(lii);
			model.addAttribute("list"+i,lii);
		}
		model.addAttribute("lis", lis);
		return "Health1";	
	}
	//��Ʒ��ϸ��Ϣ
	@RequestMapping("Classify.action")
	public String Classify(HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println("����Classify.adtion");
		//ǰ̨��ȡ��health_idת��Ϊint���� Ϊ����һ����ѯ��������
		String kk = request.getParameter("health_id");
		int kki=Integer.parseInt(kk);
		//ͬ��ǰ���ȡ��ID��ѯ����Ӧ��Health��Ϣ
		Health iii =bz.searchByID(kki);
			model.addAttribute("oo",iii);
			return "Classify1";
	}
	@RequestMapping("LikeSearch.action")
	public @ResponseBody List<Health> LikeSearch(HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		System.out.println("����LikeSearch.action");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String iiib=request.getParameter("health_name");
		System.out.println(iiib);
		List<Health> health1 = bz.LikeSearch(iiib);
		return health1;
	}
	@RequestMapping(value="searchAllReplfu.action")
	public String searchAll(Health health,Model model,HttpServletRequest request,HttpServletResponse response){
		System.out.println("---");
		request.getParameter("meirong");
		request.getParameter("buxue");
		request.getParameter("bushen");
		
		//��ȡ��ǰҳ�棺
		 String pageNumber=request.getParameter("pageNumber");
		 //�ж������ǰҳ�治�ǵ�һҳ   �ı�Ϊ��һҳ��
		  if(pageNumber==null||pageNumber==""){
			  pageNumber="1";
		  }
		  	//��ǰҳ��ת����int��ʽ��
			Integer number=Integer.parseInt(pageNumber);
			
			//����ܼ�����
			String  ff =request.getParameter("health_id");
			int ff1=Integer.valueOf(ff);
			Integer count=bz.getCount(ff1);
			
			//�����ҳ��
			int pages=count/5;
			
			
			pages++;
			
			if(number<1||number>count){
				number=1;
			}
		 List<Health> listAllById=bz.searchAll2((number-1)*3,5);
		 model.addAttribute("li",listAllById);
		 model.addAttribute("count",count);
		 model.addAttribute("pageNumber",number);
		//model.addAttribute("note_id", request.getParameter("note_id"));
		return "Health1";
}
}
