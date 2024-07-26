package com.mall.inquiry.vo;

import java.util.ArrayList;
import java.util.List;

import com.mall.table.vo.InquiryInfoVO;
import com.mall.table.vo.PageVO;
import com.mall.table.vo.UserInfoVO;

public class UserVO extends PageVO{
	private List<UserInfoVO> userlist;
	private ArrayList<InquiryInfoVO> list;
	
	
	
	
	public ArrayList<InquiryInfoVO> getList() {
		return list;
	}
	public void setList(ArrayList<InquiryInfoVO> list) {
		this.list = list;
	}
	public List<UserInfoVO> getUserlist(){
		return userlist;
	}
	public void setUserlist(List<UserInfoVO> userlist) {
		this.userlist = userlist;
	}
	
}
