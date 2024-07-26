package com.mall.goods.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.goods.dao.GoodsDao;
import com.mall.table.vo.GoodsInfoVO;



@Service
public class GoodsService {
	@Autowired
	GoodsDao dao;
	
	public ArrayList<GoodsInfoVO> selectgoodsInfo(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		return dao.selectgoodsInfo(vo);
	}
	public GoodsInfoVO selectgoodsContent(GoodsInfoVO vo) throws Exception{
		return dao.selectgoodsContent(vo);
	}
	public int insertcartInfo(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		return dao.insertcartInfo(vo);
	}
	public int selectCartCount(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception{
		return dao.selectCartCount(vo);
	}
	
}
	
	

