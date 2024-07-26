package com.mall.main.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.table.vo.MainInfoVO;

@MapperScan(basePackages="com.mall.main.dao")

public interface MainDao {
	
	public ArrayList<MainInfoVO> selectGoodsthumnail() throws Exception;
	public ArrayList<MainInfoVO> selectctCdList(@ModelAttribute("MainInfoVO") MainInfoVO vo) throws Exception;
	public ArrayList<MainInfoVO> selectsthumnail(@ModelAttribute("MainInfoVO") MainInfoVO vo) throws Exception;
	
}
