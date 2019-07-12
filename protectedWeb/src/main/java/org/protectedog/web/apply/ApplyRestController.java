package org.protectedog.web.apply;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.apply.ApplyService;
import org.protectedog.service.domain.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
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
	@RequestMapping( value="json/getApply/{applyNo}", method=RequestMethod.GET)
	public Apply getApply( @RequestParam("applyNo") int applyNo ) throws Exception {
		
		System.out.println("/apply/json/getApply : GET");
			
		return applyService.getApply(applyNo);
	}
	
	
	
	//��û�� ����
	@RequestMapping( value="json/delApply/{applyNo}", method=RequestMethod.GET)
	public void delApply( 	@RequestParam("applyNo") int applyNo ) throws Exception{

		System.out.println("/apply/json/delApply : GET");
		
		Apply apply = applyService.getApply(applyNo);
	
		apply.setStatusCode("0");	// ��û�� ����
		
		//Business Logic
		applyService.delApply(apply);
	}
	
	
	
	// ����Ʈ ��ȸ
	@RequestMapping( value="json/listApply/{adoptNo}")
	public Map<String , Object> listApply( @RequestParam("adoptNo") int adoptNo,
			@RequestBody Search search ,HttpSession session
			) throws Exception{
		
		System.out.println("/apply/json/listApply : GET / POST");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
				
		// Business logic ����
		Map<String , Object> map= applyService.listApply(search, adoptNo);
//		Map<String , Object> map= new HashMap<String, Object>();
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model �� View ����
		map.put("list", map.get("list"));
		map.put("resultPage", resultPage);
		map.put("search", search);
		map.put("message","purchaseOK");
		
		return map;
	}
	
	
}