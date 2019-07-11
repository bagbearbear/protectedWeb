package org.protectedog.web.adopt;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.domain.Adopt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;




//==> �о�|�������� Controller
@Controller
@RequestMapping("/adopt/*")
public class AdoptController {
	
	///Field
	@Autowired
	@Qualifier("adoptServiceImpl")
	private AdoptService adoptService;
	
	//setter Method ���� ����
	
//	@Resource(name = "uploadPath")
//	private String uploadPath;
	
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	

	
	
	public AdoptController(){
		System.out.println(this.getClass());
	}
	
	
	
	
	@RequestMapping( value="addAdopt", method=RequestMethod.GET )
	public String addAdopt(  @RequestParam("boardCode") String boardCode, HttpSession session  ) throws Exception {

		System.out.println("/adopt/addAdopt : GET : "+boardCode);
		
//		adopt.setId(((User)session.getAttribute("user")).getId());
//		adopt.setPhone(((User)session.getAttribute("user")).getPhone());
		
		// �о��̸� �������, �����̸� �۾����
		if(boardCode.equals("AD")) {
			return "forward:/adopt/getTerms.jsp";
		}else {
//			return "forward:/adopt/test.jsp";
			return "forward:/adopt/addAdopt.jsp?=MS";
		}
	}
	

	
	// �� ����ϰ� ����ȸ ȭ������ 
	@RequestMapping( value="addAdopt", method=RequestMethod.POST )
	public String addAdopt( @ModelAttribute("adopt") Adopt adopt, Model model
//											,MultipartHttpServletRequest mtfRequest
											) throws Exception {

		System.out.println("/adopt/addAdopt : POST ��Ʈ�ѷ�����");
		System.out.println(adopt);

		// ����
//		product.setFileName(UploadFile.saveFile(mtfRequest.getFile("file"),uploadPath));
//		System.out.println("����Ȯ�� : "+product.getFileName());
		adoptService.addAdopt(adopt);
		model.addAttribute("adopt", adopt);
		
		return "forward:/adopt/getAdopt.jsp";
	}
	
	
	
	// �� ����ȸ
	@RequestMapping( value="getAdopt", method=RequestMethod.GET)
	public String getAdopt( @RequestParam("postNo") int postNo , Model model) throws Exception {
		
		System.out.println("/adopt/getAdopt : GET");
		
		Adopt adopt = adoptService.getAdopt(postNo);
		model.addAttribute("adopt", adopt);	
//		System.out.println("�����̸� Ȯ�� : "+product.getFileName());
	
		return "forward:/adopt/getAdopt.jsp";
	}
	
	
	
	// �� ����ȭ������
	@RequestMapping( value="updateAdopt", method=RequestMethod.GET)
	public String updateAdopt( @RequestParam("postNo") int postNo , Model model) throws Exception{

		System.out.println("/adopt/updateAdopt : GET");
		
		Adopt adopt = adoptService.getAdopt(postNo);
		model.addAttribute("adopt", adopt);
		
		return "forward:/adopt/updateAdopt.jsp";
	}
	
	
	
	// �� �����ϰ� ��ȸ
	// �ۻ���Ȯ���� jsp����
	@RequestMapping( value="updateAdopt" , method=RequestMethod.POST)
	public String updateAdopt( @ModelAttribute("adopt") Adopt adopt, Model model
//								, MultipartHttpServletRequest mtfRequest
																		) throws Exception{

		System.out.println("/adopt/updateAdopt : POST");
		
		// ����
//		adopt.setFileName(UploadFile.saveFile(mtfRequest.getFile("file"),uploadPath));
//		boolean fileName = adopt.getFileName().endsWith("_");

//		if ( fileName ) {
//			adopt.setFileName((adoptService.getAdopt(adopt.getPostNo())).getFileName());
//		}
		
		adoptService.updateAdopt(adopt);
		adopt = adoptService.getAdopt(adopt.getPostNo());
		model.addAttribute("adopt", adopt);		

		return "forward:/adopt/getAdopt.jsp?postNo="+adopt.getPostNo();
	}
	
	
	
	// �� ����
	@RequestMapping( value="updateStatusCode" , method=RequestMethod.POST)
	public String updateStatusCode( @ModelAttribute("adopt") Adopt adopt ) throws Exception{
		
		System.out.println("/adopt/updateStatusCode : POST");

		adopt.setStatusCode("0");
		adoptService.updateStatusCode(adopt);
		
		// �Ķ���Ͱ����� �����ڵ�? 
		return "forward:/adopt/listAdopt";
	}
	
	
	
	
	// �� ����Ʈ ��ȸ
	@RequestMapping( value="listAdopt" )
	public String listAdopt( @ModelAttribute("search") Search search,
							 @RequestParam("boardCode") String boardCode, Model model ) throws Exception{
		
		System.out.println("/adopt/listAdopt : GET / POST");
		
		if (search.getCurrentPage() ==0 ) {
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		System.out.println("����� �˻��� Ȯ�� : "+search.getSearchKeyword()
						+"  ����� search Ȯ�� : "+search);
		
		Map<String , Object> map=adoptService.listAdopt(search, boardCode);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
			
		System.out.println("����� map Ȯ�� : "+map
						+"  ����� map.get(\"list\") Ȯ��  : "+map.get("list"));
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		// �Ķ���Ͱ����� �����ڵ�? 
		return "forward:/adopt/listAdopt.jsp";
	}
	
	
}