package com.mall.main.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.main.dao.MainDao;
import com.mall.table.vo.MainInfoVO;



@Service
public class MainService {
	@Autowired
	MainDao dao;
	
	 
	public ArrayList<MainInfoVO> selectGoodsthumnail() throws Exception{
		return dao.selectGoodsthumnail();
	}
	public ArrayList<MainInfoVO> selectctCdList(@ModelAttribute("MainInfoVO") MainInfoVO vo) throws Exception{
		return dao.selectctCdList(vo);
	}
	public ArrayList<MainInfoVO> selectsthumnail(@ModelAttribute("MainInfoVO") MainInfoVO vo) throws Exception{
		return dao.selectsthumnail(vo);
	}
}
