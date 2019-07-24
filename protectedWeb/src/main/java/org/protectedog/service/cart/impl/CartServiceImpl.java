package org.protectedog.service.cart.impl;

import java.util.List;

import org.protectedog.service.cart.CartDAO;
import org.protectedog.service.cart.CartService;
import org.protectedog.service.domain.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("cartServiceImpl")
public class CartServiceImpl implements CartService{

	///Field
	@Autowired
	@Qualifier("cartDAOImpl")
	private CartDAO cartDAO;
	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO = cartDAO;
	}
	
	///Constructor
	public CartServiceImpl() {
		// TODO Auto-generated constructor stub
		System.out.println(this.getClass());
	}
		// 1. ��ٱ��� �߰�
		@Override
		public void addCart(Cart cart) throws Exception {
		cartDAO.addCart(cart);
		}
		// 2. ��ٱ��� ���
		@Override
		public List<Cart> listCart(String id) throws Exception {
			
		return cartDAO.listCart(id);
		}
		// 3. ��ٱ��� ����
		@Override
		public void delCart(int cartNo) throws Exception {
		cartDAO.delCart(cartNo);
		}
		// 4. ��ٱ��� ����
		@Override
		public void modifyCart(Cart cart) throws Exception {
		cartDAO.modifyCart(cart);
		}
		// 5. ��ٱ��� �ݾ� �հ�
		@Override
		public int totalPrice(String id) throws Exception {
			return cartDAO.totalPrice(id);
		}
			

		@Override
		public void updateCart(Cart cart) throws Exception {
			// TODO Auto-generated method stub
			cartDAO.updateCart(cart);
		}

		@Override
		public int countCart(int prodNo, String id) throws Exception {
			// TODO Auto-generated method stub
			return cartDAO.countCart(prodNo, id);
		}
}