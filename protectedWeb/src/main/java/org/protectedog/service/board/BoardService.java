package org.protectedog.service.board;

import java.util.List;
import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Board;



//==> �Խ��ǰ������� ������ ���� �߻�ȭ/ĸ��ȭ�� Service  Interface Definition  
public interface BoardService {
	
	// �� ���
	public void addBoard(Board board) throws Exception;
	
	// �� ����ȸ
	public Board getBoard(int postNo) throws Exception;
	
	// �� ����Ʈ ��ȸ
	public Map<String , Object> listBoard(Search search, String boardCode, int order) throws Exception;
	
	// �� ����
	public void updateBoard(Board board) throws Exception;
	
	// ��ȸ��
	public void updateViewCount(Board board) throws Exception;
	
	// ��õ��
	public void updateRecommendCount(Board board) throws Exception;
	
	// �� ����
	public void delBoard(Board board) throws Exception;
	
	// SELECT LIST RANKING TOP 5
	public List<Board> listBoardRankingSearch(String boardCode) throws Exception ;
	
	// �� ����Ʈ + ��� ���� ��ȸ
	public Map<String, Object> listBoardMoreCommentCount(Search search, String boardCode, int order) throws Exception;
	

}