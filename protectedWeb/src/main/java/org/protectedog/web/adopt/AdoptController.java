package org.protectedog.web.adopt;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.domain.Adopt;
import org.protectedog.service.domain.FileDog;
import org.protectedog.service.file.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;




//==> �о�|�������� Controller
@Controller
@RequestMapping("/adopt/*")
public class AdoptController {
	
	///Field
	@Autowired
	@Qualifier("adoptServiceImpl")
	private AdoptService adoptService;
	
	@Autowired
	@Qualifier("fileServiceImpl")
	private FileService fileService;
	
	//setter Method ���� ����
	
//	@Resource(name = "uploadPath")
//	private String uploadPath;
	
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['fileAdopt']}")
	String fileroot;
	
	

	
	
	public AdoptController(){
		System.out.println(this.getClass());
	}
	
	
	
	
	@RequestMapping( value="addAdopt", method=RequestMethod.GET )
	public String addAdopt(  @RequestParam("boardCode") String boardCode, HttpSession session 
//								, Model model
																		) throws Exception {

		System.out.println("/adopt/addAdopt : GET \n"+boardCode);
		
//		adopt.setId(((User)session.getAttribute("user")).getId());
//		adopt.setPhone(((User)session.getAttribute("user")).getPhone());
//		model.addAttribute("adopt", adopt);
		

		return "forward:/adopt/addAdopt.jsp?boardCode="+boardCode;
	}
	

	
	// �� ����ϰ� ����ȸ ȭ������ 
	@RequestMapping( value="addAdopt", method=RequestMethod.POST )
	public String addAdopt( @ModelAttribute("adopt") Adopt adopt, Model model,
							@RequestParam("multiFile") ArrayList<String> multiFile 
							) throws Exception {

		System.out.println("/adopt/addAdopt : POST \n"+adopt);
	

		// ����
		adopt.setMainFile(multiFile.get(0));
		adoptService.addAdopt(adopt);
		adopt = adoptService.getAdopt(adopt.getPostNo());
		System.out.println("=========================="+adopt);
		
		List<FileDog> listFile = new ArrayList<FileDog>();
		
		// ���ϵ�񿡳ֱ�
		for (String fileName : multiFile) {

			FileDog files = new FileDog();
			files.setBoardCode(adopt.getBoardCode());
			files.setFileName(fileName);
			files.setFileCode(0);
			files.setPostNo(adopt.getPostNo());
			listFile.add(files);
		}
		fileService.addFile(listFile);
		
		model.addAttribute("adopt", adopt);
		
		return "forward:/adopt/getAdopt.jsp";
	}
	
	
	
	// �� ����ȸ
	@RequestMapping( value="getAdopt")
	public String getAdopt( @RequestParam("postNo") int postNo , Model model) throws Exception {
		
		System.out.println("/adopt/getAdopt : GET");
		
		Adopt adopt = adoptService.getAdopt(postNo);
		List<FileDog> file = fileService.getFile(postNo);
		
		model.addAttribute("adopt", adopt);	
		model.addAttribute("file", file);	
	
		return "forward:/adopt/getAdopt.jsp";
	}
	
	
	
	// �� ����ȭ������
	@RequestMapping( value="updateAdopt", method=RequestMethod.GET)
	public String updateAdopt( @RequestParam("postNo") int postNo , Model model) throws Exception{

		System.out.println("/adopt/updateAdopt : GET");
		
		Adopt adopt = adoptService.getAdopt(postNo);
		List<FileDog> file = fileService.getFile(postNo);
		
		model.addAttribute("adopt", adopt);
		model.addAttribute("file", file);	
		
		return "forward:/adopt/updateAdopt.jsp";
	}
	
	
	
	// �� �����ϰ� ��ȸ
	// �ۻ���Ȯ���� jsp����
	@RequestMapping( value="updateAdopt" , method=RequestMethod.POST)
	public String updateAdopt( @ModelAttribute("adopt") Adopt adopt, Model model,
								@RequestParam("multiFile") ArrayList<String> multiFile,
								@RequestParam("deleteFile") ArrayList<String> deleteFile  ) throws Exception{

		System.out.println("/adopt/updateAdopt : POST\n"+adopt);
		System.out.println("multiFile :::" + multiFile);
		System.out.println("deleteFile:::" + deleteFile);
		
		if (deleteFile != null) {

			for (String fileName : deleteFile) {
				FileDog files = new FileDog();
				files.setFileName(fileName);
				files.setPostNo(adopt.getPostNo());

				fileService.delFile(files);
			}
		}
		if (multiFile.size() != 0) {
			List<FileDog> listFile = new ArrayList<FileDog>();
			// ���ϵ�񿡳ֱ�
			for (String fileName : multiFile) {
				FileDog files = new FileDog();
				files.setBoardCode(adopt.getBoardCode());
				files.setFileName(fileName);
				files.setFileCode(0);
				files.setPostNo(adopt.getPostNo());
				listFile.add(files);
			}
			fileService.addFile(listFile);
		}
		
		List<FileDog> file =fileService.getFile(adopt.getPostNo());
		adopt.setMainFile(file.get(0).getFileName());

		System.out.println(adopt);
		System.out.println(adopt.getPostNo());
		adoptService.updateAdopt(adopt);
		adopt = adoptService.getAdopt(adopt.getPostNo());
		model.addAttribute("adopt", adopt);		

		return "forward:/adopt/getAdopt?postNo="+adopt.getPostNo();
	}
	
	
	
	// �� ����
	@RequestMapping( value="updateStatusCode" , method=RequestMethod.GET)
	public String updateStatusCode( @RequestParam("postNo") int postNo ,
									@ModelAttribute("adopt") Adopt adopt ) throws Exception{
		
		System.out.println("/adopt/updateStatusCode : POST  "+adopt);

		adopt = adoptService.getAdopt(postNo);
		adopt.setStatusCode("0");
		adoptService.updateStatusCode(adopt);
		
		// �Ķ���Ͱ����� �����ڵ�? 
		return "forward:/adopt/listAdopt?boardCode="+adopt.getBoardCode();
	}
	
	
	
	
	// �� ����Ʈ ��ȸ
	@RequestMapping( value="listAdopt" )
	public String listAdopt( @ModelAttribute("search") Search search,
							 @RequestParam("boardCode") String boardCode, Model model ) throws Exception{
		
		System.out.println("/adopt/listAdopt : GET / POST"+boardCode);
		
		search.setSearchCondition("");
		
		if (search.getCurrentPage() ==0 ) {
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		System.out.println("����� �˻��� Ȯ�� : "+search.getSearchKeyword()
						+"\n����� search Ȯ�� : "+search);
		
		Map<String , Object> map=adoptService.listAdopt(search, boardCode);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
			
		System.out.println("����� map Ȯ�� : "+map
						+"\n����� map.get(\"list\") Ȯ��  : "+map.get("list"));
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		// �Ķ���Ͱ����� �����ڵ�? 
		return "forward:/adopt/listAdopt.jsp?boardCode="+boardCode;
	}
	
	
}