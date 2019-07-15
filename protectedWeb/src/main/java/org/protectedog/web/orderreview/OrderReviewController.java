package org.protectedog.web.orderreview;

import org.protectedog.service.order.OrderService;
import org.protectedog.service.product.ProductService;
import org.protectedog.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



	//==> ȸ������ Controller
	@Controller
	@RequestMapping("/order/*")
	public class OrderReviewController {

		/// Field
		@Autowired
		@Qualifier("orderServiceImpl")
		private OrderService orderService;
		// setter Method ���� ����
		@Autowired
		@Qualifier("productServiceImpl")
		private ProductService productService;
		@Autowired
		@Qualifier("userServiceImpl")
		private UserService userService;
		
		public OrderReviewController() {
			System.out.println(this.getClass());
		}
}