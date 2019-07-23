package org.protectedog.service.adopt;


import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Adopt;


//==> �о�������� CRUD �߻�ȭ/ĸ��ȭ�� DAO Interface Definition
public interface AdoptDAO {
	
	// INSERT
	public void addAdopt(Adopt adopt) throws Exception ;

	// SELECT ONE
	public Adopt getAdopt(int postNo) throws Exception ;

	// SELECT LIST
	public Map<String, Object> listAdopt(Search search, String boardCode) throws Exception ;

	// UPDATE
	public void updateAdopt(Adopt adopt) throws Exception ;
	
	// Status UPDATE | DELETE
	public void updateStatusCode(Adopt adopt) throws Exception ;
	
	// �Խ��� Page ó���� ���� ��üRow(totalCount)  return
	public int getTotalCount(Search search, String boardCode) throws Exception ;
	
}