package com.mall.main.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.main.service.MainService;
import com.mall.table.vo.MainInfoVO;

@Controller	
public class MainController {

	@Autowired
	MainService service;
	
	@RequestMapping("/")
	public String main() throws Exception {
		return "main";
	}
	@RequestMapping("/getGoodsthumnail")
	@ResponseBody
	public ArrayList<MainInfoVO> getGoodsthumnail() throws Exception{
		ArrayList<MainInfoVO> list = service.selectGoodsthumnail();
		return list;
	}
	@RequestMapping("/getctCdList")
	@ResponseBody
	public ArrayList<MainInfoVO> getctCdList(@ModelAttribute("MainInfoVO") MainInfoVO vo) throws Exception{
		ArrayList<MainInfoVO> list = service.selectctCdList(vo);
		return list;
	}
	@RequestMapping("/getsthumnail")
	@ResponseBody
	public ArrayList<MainInfoVO> getsthumnail(@ModelAttribute("MainInfoVO") MainInfoVO vo) throws Exception{
		ArrayList<MainInfoVO> list = service.selectsthumnail(vo);
		return list;
	}
	
}
