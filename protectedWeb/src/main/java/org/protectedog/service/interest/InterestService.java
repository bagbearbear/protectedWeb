package org.protectedog.service.interest;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Interest;
import org.protectedog.service.domain.User;

public interface InterestService {

	// �������� ���
	public void addInterest(Interest interest) throws Exception;
	
	// �������� �󼼺���
	public Interest getInterest(int interestNo) throws Exception;
	
	// �������� ��Ϻ���
	public Map<String, Object> getInterestList(Search search) throws Exception;
	
	// ���ɵ�� ����
	public void deleteInterest(Interest interest) throws Exception;
	
}
