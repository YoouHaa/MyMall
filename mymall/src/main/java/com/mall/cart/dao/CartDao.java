package com.mall.cart.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.mall.cart.dao")

public interface CartDao {
	
	public ArrayList<GoodsInfoVO> selectCartList(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception;
	public int DelCart(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception;
	public int UpQty(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo)throws Exception;

}
