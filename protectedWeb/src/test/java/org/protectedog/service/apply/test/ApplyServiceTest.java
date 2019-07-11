package org.protectedog.service.apply.test;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.protectedog.common.Search;
import org.protectedog.service.apply.ApplyService;
import org.protectedog.service.domain.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/*
 * �� JUnit4 (Test Framework) �� Spring Framework ���� Test( Unit Test)
 * �� Spring �� JUnit 4�� ���� ���� Ŭ������ ���� ������ ��� ���� �׽�Ʈ �ڵ带 �ۼ� �� �� �ִ�.
 * �� @RunWith : Meta-data �� ���� wiring(����,DI) �� ��ü ����ü ����
 * �� @ContextConfiguration : Meta-data location ����
 * �� @Test : �׽�Ʈ ���� �ҽ� ����
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
									"classpath:config/context-aspect.xml",
									"classpath:config/context-mybatis.xml",
									"classpath:config/context-transaction.xml"})
public class ApplyServiceTest {

	//==>@RunWith,@ContextConfiguration �̿� Wiring, Test �� instance DI
	@Autowired
	@Qualifier("applyServiceImpl")
	private ApplyService applyService;

	//@Test	// Ȯ��
	public void testAddApply() throws Exception {
		
		Apply apply = new Apply();
		
		apply.setAdoptNo(10001);
		apply.setId("'user03'");
		apply.setPhone("'01121234567'");
		apply.setJob(1);
		apply.setAddr(1);
		apply.setMate(1);
		apply.setMateAgree(1);
		apply.setRaise(1);
		apply.setCurrently(1);
		apply.setPlan("'��� Ű�� ��ȹ����'");
		apply.setPay("'���� ������� ����'");
		apply.setReason("'�Ծ��� ��û�� ����'");
		apply.setSituation("'��Ȳ�� �ٲ�ٸ�'");

		applyService.addApply(apply);
		
		
		apply = applyService.getApply(10000);

		System.out.println("\n :: console Ȯ�� :: "+apply);
		
		Assert.assertEquals("��� Ű�� ��ȹ����", apply.getPlan());
		Assert.assertEquals("���� ������� ����", apply.getPay());
		Assert.assertEquals('1', apply.getStatusCode());
	}
	
	
	
	//@Test	//Ȯ��
	public void testGetAdopt() throws Exception {
		
		Apply apply = new Apply();
		apply = applyService.getApply(10000);

		System.out.println("\n :: console Ȯ�� :: "+apply);

		Assert.assertEquals("��� Ű�� ��ȹ����", apply.getPlan());
		Assert.assertEquals("���� ������� ����", apply.getPay());
		Assert.assertEquals('1', apply.getStatusCode());
	}
	
	

	 
	 @Test	//Ȯ��
	 public void testDelApply() throws Exception{
		 
//		Apply apply = applyService.getApply(10000);
//		Assert.assertNotNull(apply);
//		
//		Assert.assertEquals("1", adopt.getStatusCode());
//		adopt.setPostNo(10000);
//		adopt.setStatusCode("2");
//		adoptService.updateStatusCode(adopt);
//		
//		adopt = adoptService.getAdopt(10000);
//		Assert.assertNotNull(adopt);
//
//		System.out.println("\n :: console Ȯ�� :: "+adopt);
//
//		Assert.assertEquals("2", adopt.getStatusCode());
	 }
	

	 //@Test	//==>Ȯ��
	 public void testListApply() throws Exception{
		 
//	 	Search search = new Search();
//	 	search.setCurrentPage(1);
//	 	search.setPageSize(1);	 	
//	 	Map<String,Object> map = adoptService.listAdopt(search, "AD");
	 	
//	 	List<Object> list = (List<Object>)map.get("list");
//	 	Assert.assertEquals(2, list.size());
//	 	
//	 	System.out.println("\n :: console Ȯ�� :: "+list);
//	 	
//	 	Integer totalCount = (Integer)map.get("totalCount");
//	 	System.out.println(totalCount);
//	 	
//	 	search.setCurrentPage(1);
//	 	search.setPageSize(2);
//	 	map = adoptService.listAdopt(search, "AD");
//	 	
//	 	list = (List<Object>)map.get("list");
//	 	Assert.assertEquals(2, list.size());
//	 	
//	 	System.out.println("\n :: console Ȯ�� :: "+list);
//	 	
//	 	totalCount = (Integer)map.get("totalCount");
//	 	System.out.println(totalCount);
	 }
	
}