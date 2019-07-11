package org.protectedog.service.apply;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Apply;



//==> �о��û�������� CRUD �߻�ȭ/ĸ��ȭ�� DAO Interface Definition
public interface ApplyDAO {
	
	// INSERT
	public void addApply(Apply apply) throws Exception ;

	// SELECT ONE
	public Apply getApply(int applyNo) throws Exception ;

	// SELECT LIST
	public Map<String , Object> listApply(Search search, int adoptNo) throws Exception ;
	
	// DELETE
	public void delApply(Apply apply) throws Exception ;
	
	// �Խ��� Page ó���� ���� ��üRow(totalCount)  return
	public int getTotalCount(int adoptNo) throws Exception ;
	
}