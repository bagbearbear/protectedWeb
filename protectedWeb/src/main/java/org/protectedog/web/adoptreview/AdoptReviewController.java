package org.protectedog.web.adoptreview;

import java.io.File;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.board.BoardService;
import org.protectedog.service.domain.Board;
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
@RequestMapping("/adoptReview/*")
public class AdoptReviewController {
	
	///Field
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;
	
	//setter Method ���� ����
	
//	@Resource(name = "uploadPath")
//	private String uploadPath;

	
	public AdoptReviewController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	//==> �Ʒ��� �ΰ��� �ּ��� Ǯ�� �ǹ̸� Ȯ�� �Ұ�
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	

	
	
	
	@RequestMapping( value="addAdoptReview", method=RequestMethod.GET )
	public String addAdoptReview( ) throws Exception {

		System.out.println("/adoptReview/addAdoptReview : GET");

		return "forward:/adoptReview/addAdoptReview.jsp";
	}
	

	
	
	@RequestMapping( value="addAdoptReview", method=RequestMethod.POST )
	public String addAdoptReview(  @ModelAttribute("board") Board board
//											,MultipartHttpServletRequest mtfRequest
											) throws Exception {

		System.out.println("/adoptReview/addAdoptReview : POST");

		//Business Logic
//		product.setFileName(UploadFile.saveFile(mtfRequest.getFile("file"),uploadPath));
//		System.out.println("����Ȯ�� : "+product.getFileName());
		System.out.println("======================"+board);
		boardService.addBoard(board);
//		boardService.getBoard(board.getPostNo());
//		System.out.println("=============="+board);
		
		return "redirect:/adoptReview/getAdoptReview?postNo="+board.getPostNo();
	}
	
	
	
	// board �� ����ȸ+��ȸ�� ����
	@RequestMapping( value="getAdoptReview", method=RequestMethod.GET)
	public String getAdoptReview( @RequestParam("postNo") int postNo , Model model) throws Exception {
		
		System.out.println("/adoptReview/getAdoptReview : GET");
		
		//Business Logic
		Board board = boardService.getBoard(postNo);
//		board.setViewCount(board.getViewCount()+1);
		boardService.updateViewCount(board);
		// Model �� View ����
		model.addAttribute("board", board);	
//		System.out.println("�����̸� Ȯ�� : "+product.getFileName());
	

		return "forward:/adoptReview/getAdoptReview.jsp";
	}
	
	
	
	
	@RequestMapping( value="updateAdoptReview", method=RequestMethod.GET)
	public String updateAdoptReview( @RequestParam("postNo") int postNo , Model model) throws Exception{

		System.out.println("/adoptReview/updateAdoptReview : GET");
		//Business Logic
		Board board = boardService.getBoard(postNo);
		// Model �� View ����
		model.addAttribute("board", board);
		System.out.println("============================================\n"+board);
		

		return "forward:/adoptReview/updateAdoptReview.jsp";
	}
	
	
	
	
	@RequestMapping( value="updateAdoptReview" , method=RequestMethod.POST)
	public String updateAdoptReview( @ModelAttribute("board") Board board, Model model
//								,MultipartHttpServletRequest mtfRequest
												) throws Exception{

		System.out.println("/adoptReview/updateAdoptReview : POST");
		//Business Logic
//		adopt.setFileName(UploadFile.saveFile(mtfRequest.getFile("file"),uploadPath));
//		boolean fileName = adopt.getFileName().endsWith("_");

//		if ( fileName ) {
//			adopt.setFileName((adoptService.getAdopt(adopt.getPostNo())).getFileName());
//		}
		
		boardService.updateBoard(board);
		board = boardService.getBoard(board.getPostNo());
		
		model.addAttribute("board", board);
		

		return "forward:/adoptReview/getAdoptReview.jsp?postNo="+board.getPostNo();
	}
	
	
	@RequestMapping( value="listAdoptReview" )
	public String listAdoptReview(
						@ModelAttribute("search") Search search,
//														@RequestParam("boardCode") String boardCode  ,
														Model model ) throws Exception{
		
		System.out.println("/adoptReview/listAdoptReview : GET / POST");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		System.out.println("������ �˻��� Ȯ�� : "+search.getSearchKeyword());
		System.out.println("������ Ȯ�� : "+search);
		
		// Business logic ����
		Map<String , Object> map=boardService.listBoard(search, "AR", 0 );
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
			
		System.out.println("Ȯ��                                 :  "+map);
		System.out.println("Ȯ��     222                            :  "+map.get("list"));
		
		// Model �� View ����
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		

		return "forward:/adoptReview/listAdoptReview.jsp";
	}
	
}