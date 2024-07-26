package com.mall.inquiry.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.table.vo.InquiryInfoVO;

@MapperScan(basePackages="com.mall.inquiry.dao")
public interface InquiryDao {
	
	public ArrayList<InquiryInfoVO> selectInquiryList(InquiryInfoVO vo) throws Exception;
	public int selectTotalInquiryCount(InquiryInfoVO vo) throws Exception;
	public InquiryInfoVO selectDetailReply(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo) throws Exception;
	public int getReplyadding(@ModelAttribute("InquiryInfoVO") InquiryInfoVO vo) throws Exception;
}
