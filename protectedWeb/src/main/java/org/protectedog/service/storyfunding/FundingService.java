package org.protectedog.service.storyfunding;

import java.util.List;
import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Participate;
import org.protectedog.service.domain.Funding;

public interface FundingService {

	/////////////// FUNDING �Ŀ���û�Խ��� /////////////////////
	// �ݵ� �� �ۼ�
	public void addVoting(Funding funding) throws Exception;

	// �ݵ� �� Ȯ��
	public Funding getVoting(int postNo) throws Exception;

	// �ݵ� �� ����
	public void updateVoting(Funding funding) throws Exception;

	// �ݵ� �� ����
	public void delVoting(int postNo) throws Exception;

	// �ݵ� �� ����Ʈ
	public Map<String, Object> listVoting(Search search) throws Exception;

	// �ݵ� �� AutoComplete
	public List<String> getAutoVoting(Map<String, Object> searchMap) throws Exception;
	
	/////////////// FUNDING �Ŀ���û�Խ��� /////////////////////
	
	// �ݵ� �� ����Ʈ
	public Map<String, Object> listFunding(Search search) throws Exception;
	
	/////////////// FUNDING ����/////////////////////

	// ��ǥ�� �Ŀ�����
	public void addParticipate(Participate participate) throws Exception;

	// �ݵ� �����ڵ� ����
	public void updateStatusCode(Funding funding) throws Exception;

	// �����˸����
	public Map<String, Object> listNoticeComment(Search search, int postNo) throws Exception;

	/////////////// ȸ������ �䱸�� Method/////////////////////
	// �����̷� ����Ʈ
	public List<Participate> listParticipate(int id) throws Exception;
}
