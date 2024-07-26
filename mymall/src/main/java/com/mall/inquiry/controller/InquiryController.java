package com.mall.inquiry.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.inquiry.service.InquiryService;
import com.mall.inquiry.vo.UserVO;
import com.mall.table.vo.InquiryInfoVO;
import com.mall.table.vo.UserInfoVO;

@Controller
public class InquiryController {
	@Autowired
	InquiryService service;
	
	@RequestMapping("/inquiry")
	public String list() throws Exception {
		return "inquiry";
	}
	@RequestMapping("/getInquiryList")
	@ResponseBody
	public UserVO getInquiryList(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo) throws Exception{
		ArrayList<InquiryInfoVO> list = service.selectInquiryList(vo);
		//1. 전체 데이터 개수를 조회한다.
		int totalPage = service.selectTotalInquiryCount(vo); 

		UserVO invo = new UserVO();
		invo.setList(list);
		invo.setTotal(totalPage); //총 데이터수.
		invo.setStartPage(vo.getStartPage()); 
		invo.setCurrentPage(vo.getCurrentPage());//
		return invo;	
	}
	@RequestMapping("/getDetailReply")
	@ResponseBody
	public InquiryInfoVO getDetailReply(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo) throws Exception{
		InquiryInfoVO usvo = service.selectDetailReply(vo);
		
		return usvo;
	}
	@RequestMapping("/getReplyadding")
	@ResponseBody
	public int getReplyadding(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo, HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		UserInfoVO uservo = (UserInfoVO)session.getAttribute("MallUser");
		vo.setUserId(uservo.getUserId());
		int cnt = service.getReplyadding(vo);
		return cnt;
	}
	
	
	

}
