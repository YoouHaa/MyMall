package com.mall.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.order.dao.OrderDao;
import com.mall.table.vo.OrderInfoVO;



@Service
public class OrderService {
	@Autowired
	OrderDao dao;
	public OrderInfoVO selectUserorderList(@ModelAttribute("OrderInfoVO") OrderInfoVO vo) throws Exception{
		return dao.selectUserorderList(vo);
	}
	@Transactional
	public int realOrder(@ModelAttribute("OrderInfoVO") OrderInfoVO vo)throws Exception{
		String orderNo = dao.selectMaxOrderNo(vo);
		vo.setOrderNo(orderNo);
		dao.insertOrderInfo(vo);
	    dao.insertOrderGoods(vo);
        dao.deleteCartInfo(vo);
        return 1;
	}
	
}
	
	

