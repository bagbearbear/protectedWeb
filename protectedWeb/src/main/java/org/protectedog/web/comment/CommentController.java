package org.protectedog.web.comment;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.comment.CommentService;
import org.protectedog.service.domain.Board;
import org.protectedog.service.domain.Comment;
import org.protectedog.service.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/comment/*")
public class CommentController {

	/// Field
	@Autowired
	@Qualifier("commentServiceImpl")
	private CommentService commentService;
	
	public CommentController() {
		System.out.println(this.getClass());
	}
	
	@Value("#{commonProperties['info']}")
	String boardCode;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;


	@RequestMapping(value = "addComment")
	public String addComment(@ModelAttribute("comment") Comment comment, HttpSession session, HttpServletRequest request) throws Exception {

		System.out.println(" ============================== addComment ==================================");

		User user = (User) session.getAttribute("user");
		comment.setId(user.getId());
		comment.setNickName(user.getNickname());
		comment.setBoardCode(boardCode);
	
		int postNo = Integer.parseInt( request.getParameter("postNo") ) ; 
		comment.setPostNo( postNo );
		
		System.out.println(" addComment : " + comment);

		commentService.addComment(comment);

		return "redirect:/info/getInfo?postNo="+postNo ;
	}


//	@RequestMapping(value = "listComment")
//	public String listComment(@ModelAttribute("search") Search search, Model model, HttpServletRequest request) throws Exception {
//
//		System.out.println(" ============================== listComment ==================================");
//
//		if (search.getCurrentPage() == 0) {
//			search.setCurrentPage(1);
//		}
//		
//		// ������ ������
//		if(request.getParameter("pageSize") == null) {
//			search.setPageSize(pageSize);
//		}
//
//		System.out.println(" listInfo searchKeyword " + search.getSearchKeyword());
//		System.out.println(" listInfo search : " + search);
//
//		// Business logic ����
//		Map<String, Object> map = commentService.list
//		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, search.getPageSize());
//		System.out.println(resultPage);
//
//		System.out.println(" listInfo map.get('list') :: "  + map.get("list"));
//
//		// Model �� View ����
//		model.addAttribute("list", map.get("list"));
//		model.addAttribute("resultPage", resultPage);
//		model.addAttribute("search", search);
//
//		return "forward:/community/listInfo.jsp";
//	}
	
}
//
//	@RequestMapping(value = "getInfo", method = RequestMethod.GET)
//	public String getInfo(@RequestParam("postNo") int postNo, @ModelAttribute("search") Search search, Model model) throws Exception {
//		
//		System.out.println(" ============================== getInfo ==================================");
//		
//		// ù ������ 1�� ����
//		if (search.getCurrentPage() == 0) {
//			search.setCurrentPage(1);
//		}
//		
//		// ��� ������ ������ 5�� ����
//		search.setPageSize(5);
//		
//		// Search �����
//		System.out.println(" listInfo search : " + search);
//				
//		// �Խñ� �ҷ�����
//		Board board = boardService.getBoard(postNo);
//
//		// ��� �ҷ�����
//		Map<String, Object> map = commentService.listComment(postNo, search);
//		
//		// ����¡ 
//		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, pageSize);
//		
//		// ������ �����
//		System.out.println(resultPage);
//		
//		// �Խñ� �����
//		System.out.println(" getInfo board : " + board);
//		
//		// ��� �����
//		System.out.println(" getInfo listComment : " +map.get("list"));
//		System.out.println(" getInfo totalCount : " +map.get("totalCount"));
//		
//		model.addAttribute("list", map.get("list"));
//		model.addAttribute("totalCount", map.get("totalCount"));
//		model.addAttribute("board", board);
//		
//		return "forward:/community/getInfo.jsp";
//	}
//	
//	@RequestMapping(value = "updateView")
//	public String updateView() throws Exception {		
//		return "redirect:/community/updateInfo.jsp";
//	}
//	
//	@RequestMapping(value = "updateInfo")
//	public String updateInfo(@ModelAttribute("board") Board board, HttpServletRequest request) throws Exception {
//		
//		if(request.getMethod().equals("GET")){
//			return "redirect:/common/error.jsp";
//		}
//		
//		board.setBoardCode(boardCode);
//		board.setId("user02");
//		board.setNickName("ȣ����");
//		
//		boardService.updateBoard(board);
//		
//		
//		return "redirect:/community/updateInfo.jsp";
//	}
//	
//	@RequestMapping(value = "delInfo")
//	public String delInfo(@ModelAttribute("board") Board board, HttpSession session) throws Exception {
//		
//		System.out.println(" ============================== delInfo ==================================");
//	
//		System.out.println(" delInfo : " + board );
//		
//		boardService.delBoard(board);
//		
//		return "redirect:/info/listInfo";
//	}
//	
//
//}
