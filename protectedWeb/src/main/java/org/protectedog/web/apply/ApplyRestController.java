package org.protectedog.web.apply;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.apply.ApplyService;
import org.protectedog.service.domain.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;




//==> �о��û���� RestController
@RestController
@RequestMapping("/apply/*")
public class ApplyRestController {
	
	///Field
	@Autowired
	@Qualifier("applyServiceImpl")
	private ApplyService applyService;

		
	public ApplyRestController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	

	//��û�� ��ȸ
	@RequestMapping( value="json/getApply/{applyNo}", method=RequestMethod.POST)
	public Apply getApply( @PathVariable("applyNo") int applyNo ) throws Exception {
		
		System.out.println("/apply/json/getApply : GET");
			
		return applyService.getApply(applyNo);
	}
	
	
	
	//��û�� ����
	@RequestMapping( value="json/delApply/{applyNo}", method=RequestMethod.GET)
	public void delApply( 	@PathVariable("applyNo") int applyNo ) throws Exception{

		System.out.println("/apply/json/delApply : GET");
		
		Apply apply = applyService.getApply(applyNo);
	
		apply.setStatusCode("0");	// ��û�� ����
		
		//Business Logic
		applyService.delApply(apply);
	}
	
	
	
	// ����Ʈ ��ȸ
	@SuppressWarnings("unchecked")
	@RequestMapping( value="json/listApply/{adoptNo}")
	public JSONObject listApply( @PathVariable("adoptNo") int adoptNo
//			public Map<String,Object> listApply( @PathVariable("adoptNo") int adoptNo
//											,@RequestBody Search search ,HttpSession session
																							) throws Exception{
		
		System.out.println("/apply/json/listApply : GET / POST");
		
		Search search = new Search();
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic ����
		Map<String , Object> map= applyService.listApply(search, adoptNo);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);

		// Model �� View ����
		map.put("list", map.get("list"));
//		map.put("resultPage", resultPage);
//		map.put("search", search);
		
		map.remove("adoptNo");
		map.remove("startRowNum");
		map.remove("endRowNum");
		map.remove("totalCount");
		System.out.println("mapȮ�� : "+map);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("list", map.get("list"));
        
        System.out.println("json\n"+jsonObject);
        
        return jsonObject;
	}
	
	
}