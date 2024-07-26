package com.mall.order.dao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.table.vo.OrderInfoVO;

@MapperScan(basePackages="com.mall.order.dao")

public interface OrderDao {
	
	public OrderInfoVO selectUserorderList(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception;
	public String selectMaxOrderNo(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception;
	public int insertOrderInfo(@ModelAttribute("OrderInfoVO") OrderInfoVO vo)throws Exception;
	public int insertOrderGoods(@ModelAttribute("OrderInfoVO") OrderInfoVO vo)throws Exception;
	public int deleteCartInfo(@ModelAttribute("OrderInfoVO") OrderInfoVO vo)throws Exception;
}
