package org.protectedog.service.apply.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.protectedog.common.Search;
import org.protectedog.service.apply.ApplyDAO;
import org.protectedog.service.domain.Apply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;



//==> �о��û���� DAO CRUD ����
@Repository("applyDAOImpl")
public class ApplyDAOImpl implements ApplyDAO{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public ApplyDAOImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addApply(Apply apply) throws Exception {
		System.out.println("============================================="+apply);
		sqlSession.insert("ApplyMapper.addApply", apply);
	}

	public Apply getApply(int applyNo) throws Exception {
		return sqlSession.selectOne("ApplyMapper.getApply", applyNo);
	}

	public Map<String, Object> listApply(Search search, int adoptNo) throws Exception {
		Map<String , Object>  map = new HashMap<String, Object>();
		map.put("adoptNo",  adoptNo );
		map.put("endRowNum",  search.getEndRowNum()+"" );
		map.put("startRowNum",  search.getStartRowNum()+"" );
		
		List<Apply> list = sqlSession.selectList("ApplyMapper.listApply", map); 

		//selectOne: ���� ����� ������ return null 
		map.put("totalCount", sqlSession.selectOne("ApplyMapper.getTotalCount", map));
		map.put("list", list);

		return map;
	}
	
	public void delApply(Apply apply) throws Exception {
		sqlSession.update("ApplyMapper.delApply", apply);
	}

	// �Խ��� Page ó���� ���� ��ü Row(totalCount)  return
	public int getTotalCount(int adoptNo) throws Exception {
		return sqlSession.selectOne("ApplyMapper.getTotalCount", adoptNo);
	}
}