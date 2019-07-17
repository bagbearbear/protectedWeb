package org.protectedog.web.prodqna;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/prodQna/*")
public class ProdQnaController {

	/// Field
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;
	
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

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
	
	

	@RequestMapping(value="addProdQna")
	public String addProdQna(@ModelAttribute("board") Board board, HttpSession session, 
			HttpServletRequest request) throws Exception {
		System.out.println("/product/addBoard : GET/POST");
		
		board.setBoardCode("PR");
		board.setId("user04");
		
		boardService.addBoard(board);
		System.out.println("Product GET : POST/");
		System.out.println(board);
		
		return "forward:/product/getboard.jsp";
	}
	
		
	
}
