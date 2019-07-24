package org.protectedog.service.apply;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Apply;



//==> �о��û�������� ������ ���� �߻�ȭ/ĸ��ȭ�� Service  Interface Definition  
public interface ApplyService {
	
	// ��û�� ���
	public void addApply(Apply apply) throws Exception;
	
	// ��û�� ����ȸ
	public Apply getApply(int applyNo) throws Exception;
	
	// ��û�� ����Ʈ 
	public Map<String , Object> listApply(Search search,int adoptNo) throws Exception;
	// �ı��� ���� 
	public Map<String , Object> listApply2(String id) throws Exception;
	
	// ��û�� ����
	public void delApply(Apply apply) throws Exception;
	
}