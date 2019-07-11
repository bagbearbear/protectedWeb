package org.protectedog.service.storyfundingreview;

import org.protectedog.common.Search;
import org.protectedog.service.domain.FundingReview;


public interface FundingReviewDAO {

	public FundingReview getReview(int postNo) throws Exception; 
	
	//���� ��� �־ add�� update�� �� 
	//public void addReview(StoryFundingReview storyFundingReview) throws Exception;
	
	public void updateReview(FundingReview fundingReview) throws Exception;

	public void delReview(int postNo) throws Exception;
	
	public int getTotalCount(Search search) throws Exception;
}
