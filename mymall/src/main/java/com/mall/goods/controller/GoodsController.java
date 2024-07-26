package com.mall.goods.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.goods.service.GoodsService;
import com.mall.table.vo.GoodsInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller	
public class GoodsController {
	@Autowired
	GoodsService service;
	
	@RequestMapping("/goods/view")
	public String main(@ModelAttribute GoodsInfoVO vo, Model model) throws Exception {
		model.addAttribute("goods", vo);
		return "goods/goodsinfo";
	}
	@RequestMapping("/goodsInfo")
	@ResponseBody
	public GoodsInfoVO getgoodsInfo(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		ArrayList<GoodsInfoVO> list = service.selectgoodsInfo(vo);
		GoodsInfoVO goodsvo = service.selectgoodsContent(vo);
		goodsvo.setImglist(list);
		return goodsvo;
	}
	@RequestMapping("/cartInfo")
	@ResponseBody
	public int insertcartInfo(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo, HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		int cnt = service.selectCartCount(vo);
		if(cnt == 0) {
			cnt = service.insertcartInfo(vo);
		}else {
			return -1;
		}
		return cnt;
	}
	
	@RequestMapping("/cart")
	public String cart() throws Exception {
		return "goods/cart";
	}
}
