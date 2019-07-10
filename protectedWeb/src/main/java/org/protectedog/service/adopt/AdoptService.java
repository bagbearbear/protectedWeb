package org.protectedog.service.adopt;

import java.util.Map;

import org.protectedog.service.domain.Adopt;



//==> �о�������� ������ ���� �߻�ȭ/ĸ��ȭ�� Service  Interface Definition  
public interface AdoptService {
	
	// �� ���
	public void addAdopt(Adopt adopt) throws Exception;
	
	// �� ����ȸ
	public Adopt getAdopt(int postNo) throws Exception;
	
	// �� ����Ʈ ��ȸ
//	public Map<String , Object> listAdopt(Search search, String boardCode) throws Exception;
	
	// �� ����
	public void updateAdopt(Adopt adopt) throws Exception;
	
	// �� ���� ���� | �� ����
	public void updateStatusCode(Adopt adopt) throws Exception;
	

	

}