package com.mall.inquiry.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.inquiry.dao.InquiryDao;
import com.mall.table.vo.InquiryInfoVO;

@Service
public class InquiryService {
	@Autowired
	InquiryDao dao;
	
	public ArrayList<InquiryInfoVO> selectInquiryList(InquiryInfoVO vo) throws Exception{
		return dao.selectInquiryList(vo);
	}
	public int selectTotalInquiryCount(InquiryInfoVO vo) throws Exception{
		return dao.selectTotalInquiryCount(vo);
	}
	public InquiryInfoVO selectDetailReply(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo) throws Exception{
		return dao.selectDetailReply(vo);
	}
	public int getReplyadding(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo) throws Exception{
		return dao.getReplyadding(vo);
	}
	
}
