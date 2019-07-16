package org.protectedog.service.storyfunding;

import java.util.List;
import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Participate;
import org.protectedog.service.domain.Funding;

public interface FundingService {

	/////////////// FUNDING �Խ��� /////////////////////
	// �ݵ� �� �ۼ�
	public void addFunding(Funding funding) throws Exception;

	// �ݵ� �� Ȯ��
	public Funding getFunding(int postNo) throws Exception;

	// �ݵ� �� ����
	public void updateFunding(Funding funding) throws Exception;

	// �ݵ� �� ����
	public void delFunding(int postNo) throws Exception;

	// �ݵ� �� ����Ʈ
	public Map<String, Object> listFunding(Search search) throws Exception;

	// �ݵ� �� AutoComplete
	public List<String> getAutoFunding(Map<String, Object> searchMap) throws Exception;

	// �ݵ� �����ڵ� ����
	public void updateStatusCode(Funding funding) throws Exception;

	/////////////// FUNDING ����/////////////////////
	// ��ǥ�� �Ŀ�����
	public void addParticipate(Participate participate) throws Exception;

	// �����˸����
	public Map<String, Object> listNoticeComment(Search search, int postNo) throws Exception;
	
	/////////////// ȸ������ �䱸�� Method/////////////////////
	// �����̷� ����Ʈ
	public List<Participate> listParticipate(int id) throws Exception;
}
