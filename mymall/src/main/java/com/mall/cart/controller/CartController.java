package com.mall.cart.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.cart.service.CartService;
import com.mall.table.vo.GoodsInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller	
public class CartController {
	@Autowired
	CartService service;
	
	@RequestMapping("/getCartList")
	@ResponseBody
	public ArrayList<GoodsInfoVO> getCartList(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo, HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		ArrayList<GoodsInfoVO> list = service.selectCartList(vo);
		return list;
	}
	@RequestMapping("/getDelCart")
	@ResponseBody
	public int getDelCart(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo, HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		int cnt = service.DelCart(vo);
		return cnt;
	}
	@RequestMapping("/getUpQty")
	@ResponseBody
	public int getUpQty(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo, HttpServletRequest request)throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		int cnt = service.UpQty(vo);
		return cnt;
	}
	@RequestMapping("/order")
	public String cart() throws Exception {
		return "goods/order";
	}
	
	
}
