package com.mall.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.order.service.OrderService;
import com.mall.table.vo.OrderInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller	
public class OrderController {
	@Autowired
	OrderService service;
	@RequestMapping("/getUserorderList")
	@ResponseBody
	public OrderInfoVO getUserorderList(@ModelAttribute("OrderInfoVO") OrderInfoVO vo, HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		OrderInfoVO mvo = service.selectUserorderList(vo);
		return mvo;
}
	@RequestMapping("/realOrder")
	@ResponseBody
	public int realOrder(@ModelAttribute("OrderInfoVO") OrderInfoVO vo, HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		int cnt = service.realOrder(vo);
		return cnt;
	}
}

