package org.protectedog.service.adopreview;

import java.util.Map;

import org.protectedog.service.domain.AdoptReview;



//==> �о�������� ������ ���� �߻�ȭ/ĸ��ȭ�� Service  Interface Definition  
public interface AdoptReviewService {
	
	// �� ���
	public void addAdoptReview(AdoptReview adoptReview) throws Exception;
	
	// �� ����ȸ
	public AdoptReview getAdoptReview(int postNo) throws Exception;
	
	// �� ����Ʈ ��ȸ
//	public Map<String , Object> listAdoptReview(Search search, String boardCode) throws Exception;
	
	// �� ����
	public void updateAdoptReview(AdoptReview adoptReview) throws Exception;
	
	// �� ����
	public void delAdoptReview(AdoptReview adoptReview) throws Exception;
	

}