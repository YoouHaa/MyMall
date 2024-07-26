package com.mall.goods.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.table.vo.GoodsInfoVO;

@MapperScan(basePackages="com.mall.goods.dao")

public interface GoodsDao {
	
	public ArrayList<GoodsInfoVO> selectgoodsInfo(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception;
	public GoodsInfoVO selectgoodsContent(GoodsInfoVO vo) throws Exception;
	public int insertcartInfo(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception;
	public int selectCartCount(@ModelAttribute("GoodsInfoVO") GoodsInfoVO vo) throws Exception;
}
