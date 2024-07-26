package com.mall.cart.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.cart.dao.CartDao;
import com.mall.table.vo.GoodsInfoVO;



@Service
public class CartService {
	@Autowired
	CartDao dao;
	public ArrayList<GoodsInfoVO> selectCartList(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		return dao.selectCartList(vo);
	}
	public int DelCart(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception{
		return dao.DelCart(vo);
	}
	public int UpQty(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception{
		return dao.UpQty(vo);
	}

		
	
}
	
	

