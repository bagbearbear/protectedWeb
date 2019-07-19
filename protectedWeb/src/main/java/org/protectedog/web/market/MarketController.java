package org.protectedog.web.market;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.board.BoardService;
import org.protectedog.service.domain.Board;
import org.protectedog.service.product.ProductService;
import org.protectedog.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/market/*")
public class MarketController {

	/// Field
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;

	// setter Method ���� ����

	// ==> classpath:config/common.properties ,
	// classpath:config/commonservice.xml ���� �Ұ�
	// ==> �Ʒ��� �ΰ��� �ּ��� Ǯ�� �ǹ̸� Ȯ�� �Ұ�
	
	@Value("#{commonProperties['pageUnit']}")
	// @Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	// @Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	@Value("#{commonProperties['market']}")
	// @Value("#{commonProperties[''] ?: 2}")
	String market;
	
	public MarketController() {
		System.out.println(this.getClass());
	}
	

	@RequestMapping(value="addMarket")
	public String addProdQna(@ModelAttribute("board")Board board, HttpSession session, 
			HttpServletRequest request) throws Exception {
		
		System.out.println("shop/market/addMarket : GET/POST");
		
		board.setId("user01");
		board.setNickName("��ı");
		board.setBoardCode(market);
		board.setViewCount(2000);
		board.setProdNo(10000);
		
		System.out.println("////////////////////");
		
		
		boardService.addBoard(board);
		
		System.out.println("Product GET : POST/");
		System.out.println(board);
		System.out.println("////////////////////");
		
		return "forward:/shop/market/addMarket.jsp";
	}
	
	@RequestMapping( value="listMarket")
	public String listProdQna(@ModelAttribute("search") Search search, HttpServletRequest request, 
			Model model, @RequestParam("order") int order) throws Exception {

		
		System.out.println("/listMarket GET / POST");
	
		
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		
		search.setPageSize(pageSize);
		
		// Business logic ����
		Map<String, Object> map = boardService.listBoard(search, market, 1);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);

		// Model �� View ����

		System.out.println("/shop/Maket/listMarket ///////////////////////");
		System.out.println("/listMarket GET / POST");
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		return "forward:/shop/market/listMarket.jsp";
	}
	
}
	
		