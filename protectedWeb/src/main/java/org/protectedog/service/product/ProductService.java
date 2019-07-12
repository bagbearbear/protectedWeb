package org.protectedog.service.product;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Product;


public interface ProductService {
	
	//��ǰ���
	public void addProduct(Product product) throws Exception;
	//��ǰ����ȸ
	public Product getProduct(int prodNo) throws Exception;
	//��ǰ����Ʈ ��ȸ
	public Map<String,Object> listProduct(Search search) throws Exception;
	//��ǰ���� ������Ʈ
	public void updateProduct(Product product) throws Exception;
	//������ ��ǰ��ȸ
	public Map<String,Object> listAdminProduct(Search search) throws Exception;
	
}