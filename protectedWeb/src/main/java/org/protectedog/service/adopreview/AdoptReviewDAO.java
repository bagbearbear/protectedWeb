package org.protectedog.service.adopreview;

import java.util.List;
import java.util.Map;

import org.protectedog.service.domain.AdoptReview;


//==> ȸ���������� CRUD �߻�ȭ/ĸ��ȭ�� DAO Interface Definition
public interface AdoptReviewDAO {
	
	// INSERT
	public void addAdoptReview(AdoptReview adoptReview) throws Exception ;

	// SELECT ONE
	public AdoptReview getAdoptReview(int postNo) throws Exception ;

	// SELECT LIST
//	public Map<String, Object> listAdoptReview(Search search, String boardCode) throws Exception ;

	// UPDATE
	public void updateAdoptReview(AdoptReview adoptReview) throws Exception ;
	
	// DELETE
	public void delAdoptReview(AdoptReview adoptReview) throws Exception ;
	
	// �Խ��� Page ó���� ���� ��üRow(totalCount)  return
	public int getTotalCount(String boardCode) throws Exception ;
	
}