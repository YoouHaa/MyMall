package com.mall.table.vo;

public class InquiryInfoVO extends PageVO{
	private String userId;
	private String boardSeq;
	private String boardType;
	private String title;
	private String content;
	private String attchFile;
	private String replyYn;
	private String replyContent;
	private String regDt;
	private String delYn;
	private String replyDt;
	
	private String secretYn;
	private String secretPwd;
	
	
	//추가 필드.
	private String userName;
	
	private String replyDtFrom;
	private String replyDtTo;
	
	
	
	
	public String getSecretYn() {
		return secretYn;
	}
	public void setSecretYn(String secretYn) {
		this.secretYn = secretYn;
	}
	public String getSecretPwd() {
		return secretPwd;
	}
	public void setSecretPwd(String secretPwd) {
		this.secretPwd = secretPwd;
	}
	public String getReplyDtFrom() {
		return replyDtFrom;
	}
	public void setReplyDtFrom(String replyDtFrom) {
		this.replyDtFrom = replyDtFrom;
	}
	public String getReplyDtTo() {
		return replyDtTo;
	}
	public void setReplyDtTo(String replyDtTo) {
		this.replyDtTo = replyDtTo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getReplyDt() {
		return replyDt;
	}
	public void setReplyDt(String replyDt) {
		this.replyDt = replyDt;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getBoardSeq() {
		return boardSeq;
	}
	public void setBoardSeq(String boardSeq) {
		this.boardSeq = boardSeq;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAttchFile() {
		return attchFile;
	}
	public void setAttchFile(String attchFile) {
		this.attchFile = attchFile;
	}
	public String getReplyYn() {
		return replyYn;
	}
	public void setReplyYn(String replyYn) {
		this.replyYn = replyYn;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
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
}
