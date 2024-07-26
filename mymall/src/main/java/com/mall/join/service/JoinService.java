package com.mall.join.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.join.dao.JoinDao;
import com.mall.table.vo.UserInfoVO;

@Service
public class JoinService {

	@Autowired
	JoinDao dao;
	
	public int joinProcess(@ModelAttribute("UserInfoVO") UserInfoVO vo)throws Exception{
		return dao.joinProcess(vo);
	}
	public int chkJoinId(@ModelAttribute("UserInfoVO") UserInfoVO vo) throws Exception{
		return dao.chkJoinId(vo);
	}
}
