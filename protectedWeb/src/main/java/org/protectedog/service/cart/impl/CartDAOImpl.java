package org.protectedog.service.cart.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.protectedog.common.Search;
import org.protectedog.service.cart.CartDAO;
import org.protectedog.service.domain.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("cartDAOImpl")
public class CartDAOImpl implements CartDAO{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	///Constructor
	public CartDAOImpl() {
		System.out.println(this.getClass());
	}
	

	// 2. ��ٱ��� ���
	
	public List<Cart> listCart(String id)throws Exception {
		return sqlSession.selectList("CartMapper.listCart", id);
		}
		// 3. ��ٱ��� ����
		@Override
		public void delCart(int cartNo)throws Exception {
		sqlSession.delete("CartMapper.delCart", cartNo);
		}
		// 4. ��ٱ��� ����
		@Override
		public void modifyCart(Cart cart)throws Exception {
		sqlSession.update("CartMapper.modifyCart", cart);
		}
		// 5. ��ٱ��� �ݾ� �հ�
		@Override
		public int totalPrice(String id)throws Exception {
		sqlSession.selectOne("CartMapper.totalPrice", id);
		return sqlSession.selectOne("CartMapper.totalPrice", id);
		}
		// 6. ��ٱ��� ������ ��ǰ ���ڵ� Ȯ��
		@Override
		public int countCart(int prodNo, String id)throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prodNo", prodNo);
		map.put("id", id);
		return sqlSession.selectOne("CartMapper.countCart", map);
		}
		// 7. ��ٱ��� ��ǰ���� ����
		@Override
		public void updateCart(Cart cart)throws Exception {
		sqlSession.update("CartMapper.updateCart", cart);
	}

		@Override
		public void addCart(Cart cart) throws Exception {
			// TODO Auto-generated method stub
			sqlSession.insert("CartMapper.addCart", cart);
			
		}
}