package org.protectedog.web.adoptreview;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.board.BoardService;
import org.protectedog.service.domain.Adopt;
import org.protectedog.service.domain.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



//==> ���Ű��� Controller
@RestController
@RequestMapping("/adoptReview/*")
public class AdoptReviewRestController {
	
	///Field
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;

		
	public AdoptReviewRestController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	//==> �Ʒ��� �ΰ��� �ּ��� Ǯ�� �ǹ̸� Ȯ�� �Ұ�
//	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
//	int pageUnit;
	
//	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
//	int pageSize;
	
	


	
	// �� ��õ
	@RequestMapping( value="json/updateRecommendCount/{postNo}/{statusCode}", method=RequestMethod.GET)
	public Board updateRecommendCount( 	@RequestParam("postNo") int postNo,
										@RequestParam("statusCode") String statusCode ) throws Exception{
		
		System.out.println("/adoptReview/json/updateRecommendCount : GET");
		
		Board board = boardService.getBoard(postNo);
		
		//Business Logic
		boardService.updateRecommendCount(board);
		
		return board;
	}
	
	
}