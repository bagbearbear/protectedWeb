package org.protectedog.web.apply;

import java.io.File;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.apply.ApplyService;
import org.protectedog.service.domain.Adopt;
import org.protectedog.service.domain.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;





//==> �ǸŰ��� Controller
@Controller
@RequestMapping("/apply/*")
public class ApplyController {
	
	///Field
	@Autowired
	@Qualifier("applyServiceImpl")
	private ApplyService applyService;
	@Autowired
	@Qualifier("adoptServiceImpl")
	private AdoptService adoptService;
	

	public ApplyController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	

	
	
	// ���������->��û
	@RequestMapping( value="addApply", method=RequestMethod.GET)
	public String addApply(@ModelAttribute("apply") Apply apply, 
												@RequestParam("postNo") int postNo,
												Model model,  HttpServletRequest request,
												HttpSession session) throws Exception {

		System.out.println("/apply/addApply : GET");
		
		apply.setAdoptNo(postNo);
//		apply.setBuyer((User)session.getAttribute("user"));
		
		model.addAttribute("apply", apply);//adoptNo �ѱ��
		
		return "forward:/apply/addApply.jsp";
	}
	

	
	// ��û ����ϰ� �ٽ� �о�� ����ȸ��
	@RequestMapping( value="addApply", method=RequestMethod.POST )
	public String addApply( @ModelAttribute("apply") Apply apply, Model model ) throws Exception {

		System.out.println("/apply/addApply : POST");

		applyService.addApply(apply);
		Adopt adopt = adoptService.getAdopt(apply.getAdoptNo());
		adopt.setStatusCode("2");
		adoptService.updateStatusCode(adopt);    //��û�� ��������� �о�� �����ڵ� 2�� ����
		
		model.addAttribute("apply", apply);
		
		return "forward:/adopt/getAdopt.jsp";
	}
	
	

	// ��û�� ���
	@RequestMapping( value="listApply" )
	public String listApply( @RequestParam("adoptNo") int adoptNo,
							 @ModelAttribute("search") Search search, Model model ) throws Exception{
		
		System.out.println("/apply/listApply : GET / POST");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		System.out.println("������ �˻��� Ȯ�� : "+search.getSearchKeyword());
		System.out.println("������ Ȯ�� : "+search);
		
		// Business logic ����
		Map<String , Object> map=applyService.listApply(search, adoptNo );
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
			
		System.out.println("Ȯ��                                 :  "+map);
		System.out.println("Ȯ��     222                            :  "+map.get("list"));
		
		// Model �� View ����
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/apply/listApply.jsp";
	}
	
	
}