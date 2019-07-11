package org.protectedog.service.coupon;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Coupon;

public interface CouponService {

	// ���� ���
	public void addCoupon(Coupon coupon) throws Exception;
	
	// ���� ����ȸ
	public Coupon getCoupon(int couponNo) throws Exception;
	
	// ���� ����Ʈ��ȸ
	public Map<String, Object> getCouponList(Search search) throws Exception;
	
	// �������� ����
	public void updateCouponStatus(Coupon coupon) throws Exception;
	
}
