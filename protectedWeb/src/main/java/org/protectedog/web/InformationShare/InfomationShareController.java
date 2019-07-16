package org.protectedog.web.InformationShare;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.board.BoardService;
import org.protectedog.service.comment.CommentService;
import org.protectedog.service.domain.Board;
import org.protectedog.service.domain.Comment;
import org.protectedog.service.domain.Funding;
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
@RequestMapping("/info/*")
public class InfomationShareController {

	/// Field
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;
	
	@Autowired
	@Qualifier("commentServiceImpl")
	private CommentService commentService;

	public InfomationShareController() {
		System.out.println(this.getClass());
	}
	
	@Value("#{commonProperties['info']}")
	String boardCode;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;


	@RequestMapping(value = "addInformation")
	public String addInfo(@ModelAttribute("board") Board board, HttpSession session, HttpServletRequest request)
			throws Exception {

		System.out.println(" ============================== addInfo ==================================");

		board.setBoardCode(boardCode);
		board.setId("user02");
		board.setNickName("호랭이");

		// request.setCharacterEncoding("euc_kr");

		// System.out.println(" info Content : " + content);
		// board.set
		System.out.println(" info Board : " + board);

		boardService.addBoard(board);

		return "redirect:/info/listInfo";
	}

	@RequestMapping(value = "listInfo")
	public String listInfo(@ModelAttribute("search") Search search, Model model, HttpServletRequest request) throws Exception {

		System.out.println(" ============================== listInfo ==================================");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		// 페이지 사이즈
		if(request.getParameter("pageSize") == null) {
			search.setPageSize(pageSize);
		} else {
			System.out.println("listInfo pageSize : " + request.getParameter("pageSize") );
			search.setPageSize(Integer.parseInt(request.getParameter("pageSize")));
		}

		System.out.println(" listInfo searchKeyword " + search.getSearchKeyword());
		System.out.println(" listInfo search : " + search);

		// Business logic 수행
		Map<String, Object> map = boardService.listBoard(search, boardCode);
		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, search.getPageSize());
		System.out.println(resultPage);

		System.out.println(" listInfo map.get('list') :: "  + map.get("list"));

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/community/listInfo.jsp";
	}

	@RequestMapping(value = "getInfo", method = RequestMethod.GET)
	public String getInfo(@RequestParam("postNo") int postNo, @ModelAttribute("search") Search search, Model model) throws Exception {
		
		System.out.println(" ============================== getInfo ==================================");
		
		// 첫 페이지 1로 고정
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		// 댓글 페이지 사이즈 5로 고정
		search.setPageSize(5);
		
		// Search 디버깅
		System.out.println(" listInfo search : " + search);
				
		// 게시글 불러오기
		Board board = boardService.getBoard(postNo);

		// 댓글 불러오기
		Map<String, Object> map = commentService.listComment(postNo, search);
		
		// 페이징 
		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		// 페이지 디버깅
		System.out.println(resultPage);
		
		// 게시글 디버깅
		System.out.println(" getInfo board : " + board);
		
		// 댓글 디버깅
		System.out.println(" getInfo listComment : " +map.get("list"));
		System.out.println(" getInfo totalCount : " +map.get("totalCount"));
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("totalCount", map.get("totalCount"));
		model.addAttribute("board", board);
		
		return "forward:/community/getInfo.jsp";
	}
	
	@RequestMapping(value = "updateView")
	public String updateView() throws Exception {		
		return "redirect:/community/updateInfo.jsp";
	}
	
	@RequestMapping(value = "updateInfo")
	public String updateInfo(@ModelAttribute("board") Board board, HttpServletRequest request) throws Exception {
		
		if(request.getMethod().equals("GET")){
			return "redirect:/common/error.jsp";
		}
		
		board.setBoardCode(boardCode);
		board.setId("user02");
		board.setNickName("호랭이");
		
		boardService.updateBoard(board);
		
		
		return "redirect:/community/updateInfo.jsp";
	}
	
	@RequestMapping(value = "delInfo")
	public String delInfo(@ModelAttribute("board") Board board, HttpSession session) throws Exception {
		
		System.out.println(" ============================== delInfo ==================================");
	
		System.out.println(" delInfo : " + board );
		
		boardService.delBoard(board);
		
		return "redirect:/info/listInfo";
	}
	

}
