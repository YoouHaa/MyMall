package com.mall.table.vo;

import java.util.ArrayList;

public class GoodsInfoVO {

	private String goodsCd;
	private String imgSeq;
	private String fileName;
	private String regDt;
	private String delYn;
	private String goodsName;
	private String normalPrice;
	private String sellPrice;
	private String content;
	private String imgUrl;
	private String userId;
	private String buyQty;
	private String thumnailUrl;
	
    private UserInfoVO uservo ;
	private ArrayList<GoodsInfoVO> imglist;
	
	
	
	
	public UserInfoVO getUservo() {
		return uservo;
	}

	public void setUservo(UserInfoVO uservo) {
		this.uservo = uservo;
	}

	public String getThumnailUrl() {
		return thumnailUrl;
	}

	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBuyQty() {
		return buyQty;
	}

	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}

	public ArrayList<GoodsInfoVO> getImglist() {
		return imglist;
	}

	public void setImglist(ArrayList<GoodsInfoVO> imglist) {
		this.imglist = imglist;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getNormalPrice() {
		return normalPrice;
	}

	public void setNormalPrice(String normalPrice) {
		this.normalPrice = normalPrice;
	}

	public String getSellPrice() {
		return sellPrice;
	}

	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImgSeq() {
		return imgSeq;
	}

	public void setImgSeq(String imgSeq) {
		this.imgSeq = imgSeq;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getGoodsCd() {
		return goodsCd;
	}

	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}

	
}
