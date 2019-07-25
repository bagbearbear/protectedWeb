package org.protectedog.web.adopt;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.domain.Adopt;
import org.protectedog.service.domain.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
	@RequestMapping( value="json/listAdopt" )
	public JSONObject listAdopt( @ModelAttribute("search") Search search, @RequestBody Map<String,Object> params,
																			Model model, HttpSession session ) throws Exception{
		
		System.out.println("\n\n/adopt/json/listAdopt : GET / POST "+params.get("boardCode").toString());
		System.out.println(params);
		
		search.setSearchCondition( params.get("searchCondition").toString() );
		if(search.getSearchCondition() == null ) {
			search.setSearchCondition("");
		}
//		System.out.println("Ȯ��@@@@ : "+searchCondition+", "+searchKeyword);
		
		search.setSearchKeyword( params.get("searchKeyword").toString() );
		System.out.println("�˻��� Ȯ��1 : "+search.getSearchKeyword());
		
		if(search.getSearchKeyword() == null ) {
			search.setSearchKeyword("");
//			if(searchKeyword != null) {
//				search.setSearchKeyword(searchKeyword);
//			}
		}
		System.out.println("�˻��� Ȯ��2 : "+search.getSearchKeyword());
		search.setAreaCondition( params.get("areaCondition").toString() );
		if(search.getAreaCondition().equals("undefined") || search.getAreaCondition().equals("all")) {
			search.setAreaCondition("");
		}else if(search.getAreaCondition().equals("kw")) {
			search.setAreaCondition("����");
		}else if(search.getAreaCondition().equals("kk")) {
			search.setAreaCondition("���");
		}else if(search.getAreaCondition().equals("ks")) {
			search.setAreaCondition("���");
		}else if(search.getAreaCondition().equals("kj")) {
			search.setAreaCondition("����");
		}else if(search.getAreaCondition().equals("dj")) {
			search.setAreaCondition("����");
		}else if(search.getAreaCondition().equals("bs")) {
			search.setAreaCondition("�λ�");
		}else if(search.getAreaCondition().equals("su")) {
			search.setAreaCondition("����");
		}else if(search.getAreaCondition().equals("us")) {
			search.setAreaCondition("���");
		}else if(search.getAreaCondition().equals("ic")) {
			search.setAreaCondition("��õ");
		}else if(search.getAreaCondition().equals("jr")) {
			search.setAreaCondition("����");
		}else if(search.getAreaCondition().equals("cc")) {
			search.setAreaCondition("��û");
		}
		search.setVoteCondition("");
		
		search.setCurrentPage( Integer.parseInt( params.get("pazeSize").toString() ) );
		System.out.println(search.getAreaCondition()+"��Ȯ�΢�"+Integer.parseInt( params.get("pazeSize").toString() ));
		
		search.setPageSize(pageSize);
		System.out.println("search Ȯ�� : "+search);
		
		Map<String , Object> map=adoptService.listAdopt(search, params.get("boardCode").toString());
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		map.put("list", map.get("list"));
//		System.out.println("����� ����Ʈ Ȯ�� : "+map.get("list"));

		JSONObject jsonObject = new JSONObject();
        jsonObject.put("list", map.get("list"));
        jsonObject.put("areaCondition", map.get("areaCondition"));
        jsonObject.put("startRowNum", map.get("startRowNum"));
        jsonObject.put("searchCondition", map.get("searchCondition"));
        jsonObject.put("endRowNum", map.get("endRowNum"));
        jsonObject.put("boardCode", map.get("boardCode"));
        jsonObject.put("searchKeyword", map.get("searchKeyword"));
        jsonObject.put("totalCount", map.get("totalCount"));

      
//        System.out.println("json5========================================================\n"+jsonObject);
      
		return jsonObject;
	}
	
	// �ı��� ����
	@SuppressWarnings("unchecked")
	@RequestMapping( value="json/listAdopt2/{id}" )
	public JSONObject listAdopt2( Model model, HttpSession session, @PathVariable("id") String id ) throws Exception{
		
		System.out.println("\n\n/adopt/json/listAdopt2 : GET / POST "+id);

		
		Map<String , Object> map=adoptService.listAdopt2(id);
		map.put("list", map.get("list"));
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("list", map.get("list"));
		
//        System.out.println("json5========================================================\n"+jsonObject);
		
		return jsonObject;
	}
	
}