package org.protectedog.web.adopt;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.domain.Adopt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


//==> �о�|�������� RestController
@RestController
@RequestMapping("/adopt/*")
public class AdoptRestController {
	
	@Autowired
	@Qualifier("adoptServiceImpl")
	private AdoptService adoptService;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;

		
	public AdoptRestController(){
		System.out.println(this.getClass());
	}
	

	// �ۻ��� �Ϸ�� ����
	@RequestMapping( value="json/updateStatusCode/{postNo}", method=RequestMethod.GET)
	public Adopt updateStatusCode( @PathVariable("postNo") int postNo ) throws Exception{

		System.out.println("/adopt/json/updateStatusCode : GET");
		
		Adopt adopt = adoptService.getAdopt(postNo);	// postNo�� adopt ��������	
		adopt.setStatusCode("3");						// �Ϸ����(3)�� �ʵ尪 ����
		adoptService.updateStatusCode(adopt);			// ��� ������Ʈ

		return adopt;
	}
	
	// �� ����Ʈ ��ȸ
	@SuppressWarnings("unchecked")
	@RequestMapping( value="json/listAdopt/{boardCode}" )
	public JSONObject listAdopt( @ModelAttribute("search") Search search,
						@PathVariable("boardCode") String boardCode, Model model, HttpSession session ) throws Exception{
		
		System.out.println("/adopt/listAdopt : GET / POST"+boardCode);
		System.out.println("===================================="+search);
		if(search.getSearchCondition() == null ) {
			search.setSearchCondition("");
		}
		if(search.getSearchKeyword() == null) {
			search.setSearchKeyword("");
		}
		if(search.getAreaCondition() == null) {
			search.setAreaCondition("");
		}
		search.setVoteCondition("");
		
		
		if (search.getCurrentPage() ==0 ) {
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		System.out.println("search===================================="+search);
		
		Map<String , Object> map=adoptService.listAdopt(search, boardCode);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println("map===================================="+map);
		map.put("list", map.get("list"));

		JSONObject jsonObject = new JSONObject();
        jsonObject.put("list", map.get("list"));
        jsonObject.put("areaCondition", map.get("areaCondition"));
        jsonObject.put("startRowNum", map.get("startRowNum"));
        jsonObject.put("searchCondition", map.get("searchCondition"));
        jsonObject.put("endRowNum", map.get("endRowNum"));
        jsonObject.put("boardCode", map.get("boardCode"));
        jsonObject.put("searchKeyword", map.get("searchKeyword"));
        jsonObject.put("totalCount", map.get("totalCount"));

      
        System.out.println("json5========================================================\n"+jsonObject);
      
		
		// �Ķ���Ͱ����� �����ڵ�? 
		return jsonObject;
	}
	
}