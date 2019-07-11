package org.protectedog.web.adopt;

import org.protectedog.service.adopt.AdoptService;
import org.protectedog.service.domain.Adopt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
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

		
	public AdoptRestController(){
		System.out.println(this.getClass());
	}
	

	// �ۻ��� �Ϸ�� ����
	@RequestMapping( value="json/updateStatusCode/{postNo}", method=RequestMethod.GET)
	public Adopt updateStatusCode( @RequestParam("postNo") int postNo ) throws Exception{

		System.out.println("/adopt/json/updateStatusCode : GET");
		
		Adopt adopt = adoptService.getAdopt(postNo);	// postNo�� adopt ��������	
		adopt.setStatusCode("3");						// �Ϸ����(3)�� �ʵ尪 ����
		adoptService.updateStatusCode(adopt);			// ��� ������Ʈ

		return adopt;
	}
	
	
}