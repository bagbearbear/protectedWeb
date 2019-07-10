package org.protectedog.service.adoptreview;

import java.util.List;

import org.protectedog.common.Search;
import org.protectedog.service.domain.AdoptReview;


//==> ȸ���������� CRUD �߻�ȭ/ĸ��ȭ�� DAO Interface Definition
public interface AdoptReviewDAO {
	
	// INSERT
	public void addAdoptReview(AdoptReview adoptReview) throws Exception ;

	// SELECT ONE
	public AdoptReview getAdoptReview(int postNo) throws Exception ;

	// SELECT LIST
	public List<AdoptReview> listAdoptReview(Search search) throws Exception ;

	// UPDATE
	public void updateAdoptReview(AdoptReview adoptReview) throws Exception ;
	
	// UPDATE : DELETE
	public void delAdoptReview(AdoptReview adoptReview) throws Exception ;
	
	// �Խ��� Page ó���� ���� ��üRow(totalCount)  return
	public int getTotalCount(Search search) throws Exception ;
	
}