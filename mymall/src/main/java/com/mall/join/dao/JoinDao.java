package com.mall.join.dao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.table.vo.UserInfoVO;

@MapperScan(basePackages="com.mall.join.dao")
public interface JoinDao {
	public int joinProcess(@ModelAttribute("UserInfoVO") UserInfoVO vo)throws Exception;
	public int chkJoinId(@ModelAttribute("UserInfoVO") UserInfoVO vo) throws Exception;
}
