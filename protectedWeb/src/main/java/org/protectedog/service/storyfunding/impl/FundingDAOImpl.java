package org.protectedog.service.storyfunding.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.protectedog.common.Search;
import org.protectedog.service.domain.Funding;
import org.protectedog.service.domain.Participate;
import org.protectedog.service.storyfunding.FundingDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("fundingDAOImpl")
public class FundingDAOImpl implements FundingDAO {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public FundingDAOImpl() {
		System.out.println(this.getClass());
	}

	/////////////// FUNDING �Խ��� /////////////////////

	@Override
	public void addFunding(Funding funding) throws Exception {
		sqlSession.insert("FundingMapper.addFunding", funding);

	}

	@Override
	public Funding getFunding(int postNo) throws Exception {
		return sqlSession.selectOne("FundingMapper.getFunding", postNo);
	}

	@Override
	public void updateFunding(Funding funding) throws Exception {
		sqlSession.update("FundingMapper.updateFunding", funding);

	}

	@Override
	public void delFunding(int postNo) throws Exception {
		sqlSession.delete("FundingMapper.delFunding", postNo);

	}

	@Override
	public List<Funding> listFunding(Search search) throws Exception {
		return sqlSession.selectList("FundingMapper.listFunding", search);
	}

	@Override
	public List<String> getAutoFunding(Map<String, Object> searchMap) throws Exception {
		return sqlSession.selectList("FundingMapper.getAutoFunding", searchMap);
	}

	@Override
	public void updateStatusCode(Funding funding) throws Exception {
		sqlSession.update("FundingMapper.updateStatusCode", funding);

	}

	@Override
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("FundingMapper.getTotalCount", search);
	}

	/////////////// FUNDING ����/////////////////////

	@Override
	public void addParticipate(Participate participate) throws Exception {
		sqlSession.insert("ParticipateMapper.addParticipate", participate);

	}

	@Override
	public List<Participate> listNoticeComment(Search search, int postNo) throws Exception {
		return sqlSession.selectList("ParticipateMapper.listParticipate");
	}

	@Override
	public int getParticipateTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("ParticipateMapper.getParticipateTotalCount");
	}

	/////////////// ȸ������ �䱸�� Method/////////////////////
	
	@Override
	public List<Participate> listParticipate(int id) throws Exception {
		return sqlSession.selectList("ParticipateMapper.listParticipate");
	}

}
