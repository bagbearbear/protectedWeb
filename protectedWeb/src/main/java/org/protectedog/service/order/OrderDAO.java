package org.protectedog.service.order;

import java.util.List;
import org.protectedog.common.Search;
import org.protectedog.service.domain.Mileage;
import org.protectedog.service.domain.Order;

public interface OrderDAO {


	//���ų��� �߰� 
	public void addOrder(Order order) throws Exception;
	
	//���ų��� ����ȸ
	public Order getOrder(int orderNo) throws Exception;
	
	//�ֹ����� ����Ʈ
	public List<Order> listOrder(Search search,String id) throws Exception;
	
	//�������� ���� 
	public void updateOrder(Order order) throws Exception;

	// ���ſϷ� 1 ����� 2 ��ۿϷ�/�����ı� �ۼ� 3 �����ı� ��ȸ 4 ������� 5 ��ȯ/��ǰ�� 6 ���� 
	public int updateOrderCode(Order order) throws Exception;
	//�� �� count
	public int getTotalCount(String id) throws Exception;

	//�ֹ� ����(������ ����)
	public void delOrder(Order order)throws Exception;
	
	//��ȯ��ǰ ����Ʈ
	public List<Order> listSwapOrder(Search search, String id)throws Exception;
	
	//���Ű���(������ ����)
	public List<Order> listAdminOrder(Search search, String id)throws Exception;
	
	//��ۿϷ�ȸ��
	public void addDeliveryCode(int OrderNo)throws Exception;
	
	//������Ʈ ���ϸ���
	public void updateMileage(String id)throws Exception;
	
}