package org.protectedog.service.order;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Order;


public interface OrderService {

		//���ų��� �߰� 
		public void addOrder(Order order) throws Exception;
		
		//���ų��� ����ȸ
		public Order getOrder(int orderNo) throws Exception;
		
		//�ֹ����� ����Ʈ
		public Map<String, Object> listOrder(Search search,String id) throws Exception;
		
		//�������� ���� 
		public void updateOrder(Order order) throws Exception;
		
		// ����� 2 ��ۿϷ�/�����ı� �ۼ� 3 �����ı� ��ȸ 4 ������� 5 ��ȯ/��ǰ�� 6 ���� 
		public int updateOrderCode(Order order) throws Exception;

		//�ֹ� ����(������ ����)
		public void delOrder(Order order)throws Exception;
		
		//��ȯ��ǰ ����Ʈ
		public Map<String, Object> listSwapOrder(Search search, String id)throws Exception;
		
		//���Ű���(������ ����)
		public Map<String, Object> listAdminOrder(Search search, String id)throws Exception;

	}
	
	
                             