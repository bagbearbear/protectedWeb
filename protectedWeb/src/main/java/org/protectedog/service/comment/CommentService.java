package org.protectedog.service.comment;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Comment;

public interface CommentService {
	
	// ��� ���
	public void addComment(Comment comment) throws Exception;
	
	// ��� ��ȸ ?
	public Comment getComment(int commentNo) throws Exception;
	
	// ��� ����
	public void updateComment(Comment comment) throws Exception;
	
	// �ۿ� ���� ��� ����Ʈ
	public Map<String, Object> listComment(int postNo, Search search) throws Exception;
	
	// ��� ����
	public void delComment(int commentNo) throws Exception;
	
	// ��� �Ű�
	public void reportComment(int commentNo) throws Exception;
	
	// ��� ���ƿ�
	public void updateLikeCnt(Map<String, Object> map) throws Exception;
	
	// ���� �ۼ��� ��� ����Ʈ
//	public Map<String, Object> listMyComment() throws Exception;
}
