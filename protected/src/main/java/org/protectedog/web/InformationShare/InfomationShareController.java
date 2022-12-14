package org.protectedog.web.InformationShare;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.board.BoardService;
import org.protectedog.service.comment.CommentService;
import org.protectedog.service.domain.Board;
import org.protectedog.service.domain.User;
import org.protectedog.service.user.UserService;
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
	
//	@Autowired
//	@Qualifier("reCommentServiceImpl")
//	private ReCommentService reCommentService;
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

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
		
		// Board Set
		User user = (User)session.getAttribute("user");
		board.setBoardCode(boardCode);
		board.setId(user.getId());
		board.setNickName(user.getNickname());
		
		System.out.println(" info Board : " + board);
 
		boardService.addBoard(board);
		
		System.out.println(" info PostNo" + board.getPostNo());
		
		// User Level Point Up
		user.setLevelPoint(user.getLevelPoint() + 10 );
		
		userService.updateUsers(user);

		return "redirect:/info/getInfo?postNo="+board.getPostNo();
	}

	@RequestMapping(value = "listInfo")
	public String listInfo(@ModelAttribute("search") Search search, Model model, HttpServletRequest request) throws Exception {

		System.out.println(" ============================== listInfo ==================================");
		
		System.out.println(request.getRequestURL());
		int order;
		
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		// ????????? ?????????
		if(request.getParameter("pageSize") == null) {
			search.setPageSize(pageSize);
		} else {
			System.out.println("listInfo pageSize : " + request.getParameter("pageSize") );
			search.setPageSize(Integer.parseInt(request.getParameter("pageSize")));
		}
		
		if(request.getParameter("order") == null) {
			order = 0 ;
		} else {
			order = Integer.parseInt(request.getParameter("order"));
			System.out.println(" listInfo order : " + order);
		}
		

		System.out.println(" listInfo searchKeyword " + search.getSearchKeyword());
		System.out.println(" listInfo search : " + search);

		// ????????? ?????? ??????
		Map<String, Object> map = boardService.listBoardMoreCommentCount(search, boardCode, order);
		
		List<Board> list = boardService.listBoardRankingSearch(boardCode);
		
		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, search.getPageSize());
		System.out.println(resultPage);

		System.out.println(" listInfo map.get('list') :: "  + map.get("list"));

		// Model ??? View ??????
		model.addAttribute("list", map.get("list"));
		model.addAttribute("listRanking", list);
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("totalCount",map.get("totalCount"));
		model.addAttribute("search", search);

		return "forward:/community/listInfo.jsp";
	}

	@RequestMapping(value = "getInfo", method = RequestMethod.GET)
	public String getInfo(@RequestParam("postNo") int postNo, @ModelAttribute("search") Search search, Model model, HttpSession session) throws Exception {
		
		System.out.println(" ============================== getInfo ==================================");
		
		// ??? ????????? 1??? ??????
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		// ?????? ????????? ????????? 5??? ??????
		search.setPageSize(5);
		// Search ?????????
		System.out.println(" listInfo search : " + search);
				
		// ????????? ????????????
		Board board = boardService.getBoard(postNo);
		
		// ????????? ??????
		boardService.updateViewCount(board);
		
		// ?????? ????????????
		Map<String, Object> map = commentService.listComment(postNo, search, boardCode);
		
		/* ????????? ????????????
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("postNo",postNo);
		searchMap.put("startRowNum",search.getStartRowNum());
		searchMap.put("endRowNum",search.getEndRowNum());
		Map<String, Object> reCommmetMap = reCommentService.listReComment(searchMap); */

		// ????????? 
		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		// ????????? ?????????
		System.out.println(resultPage);
		
		// ????????? ?????????
		System.out.println(" getInfo board : " + board);
		
		// ?????? ?????????
		System.out.println(" getInfo listComment : " +map.get("list"));
		// System.out.println(" getInfo listReComment : " +reCommmetMap.get("list"));
		System.out.println(" getInfo totalCount : " +map.get("totalCount"));
		
		model.addAttribute("list", map.get("list"));
		// model.addAttribute("relist", reCommmetMap.get("list"));
		model.addAttribute("totalCount", map.get("totalCount"));
		model.addAttribute("board", board);
		
		return "forward:/community/getInfo.jsp";
	}
	
	@RequestMapping(value = "updateView")
	public String updateView(@RequestParam("postNo") int postNo, Model model) throws Exception {		
		
		System.out.println(" ============================== updateView ==================================");
		
		Board board = boardService.getBoard(postNo);
		
		model.addAttribute("board", board);
		
		return "forward:/community/updateInfo.jsp";
	}
	
	@RequestMapping(value = "updateInfo")
	public String updateInfo(@ModelAttribute("board") Board board, HttpServletRequest request, Model model) throws Exception {
		
		System.out.println(" ============================== updateInfo ==================================");
		
		board.setBoardCode(boardCode);
		board.setId("user02");
		board.setNickName("?????????");
		
		boardService.updateBoard(board);
		
		model.addAttribute("board", board);
		return "redirect:/info/getInfo?postNo="+board.getPostNo();
	}
	
	@RequestMapping(value = "delInfo")
	public String delInfo(@RequestParam("postNo") int postNo, HttpSession session) throws Exception {
		
		System.out.println(" ============================== delInfo ==================================");
	
		System.out.println(" delInfo : " + postNo );
		
		Board board = new Board();
		board.setPostNo(postNo);
		
		boardService.delBoard(board);
		
		return "redirect:/info/listInfo";
	}
	

}
