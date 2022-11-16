package com.ebook.board.vo;

public class BoardVo {
	//게시판
	private int postKey;
	private String postTitle;
	private String postContent;
	private String postDate;
	private String userId;
	private String postCategory;
	private int postViewCount;
	private String postFileUrl;
	private int bNum;
	private int lvl;
	private int step;
	private int nref;
	//파일
	private int file_num; // 파일번호
	private String fileName; // 파일명
	private String fileExt; // 파일확장자
	private String sFileName; // 실제 저장 파일
	// 생성자
	public BoardVo() {}
	public BoardVo(int postKey, String postTitle, String postContent, String postDate, String userId,
			String postCategory, int postViewCount, String postFileUrl, int bNum, int lvl, int step, int nref,
			int file_num, String fileName, String fileExt, String sFileName) {
		
		this.postKey = postKey;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postDate = postDate;
		this.userId = userId;
		this.postCategory = postCategory;
		this.postViewCount = postViewCount;
		this.postFileUrl = postFileUrl;
		this.bNum = bNum;
		this.lvl = lvl;
		this.step = step;
		this.nref = nref;
		this.file_num = file_num;
		this.fileName = fileName;
		this.fileExt = fileExt;
		this.sFileName = sFileName;
	}
	// getter, setter
	public int getPostKey() {
		return postKey;
	}
	public void setPostKey(int postKey) {
		this.postKey = postKey;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public String getPostDate() {
		return postDate;
	}
	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPostCategory() {
		return postCategory;
	}
	public void setPostCategory(String postCategory) {
		this.postCategory = postCategory;
	}
	public int getPostViewCount() {
		return postViewCount;
	}
	public void setPostViewCount(int postViewCount) {
		this.postViewCount = postViewCount;
	}
	public String getPostFileUrl() {
		return postFileUrl;
	}
	public void setPostFileUrl(String postFileUrl) {
		this.postFileUrl = postFileUrl;
	}
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getNref() {
		return nref;
	}
	public void setNref(int nref) {
		this.nref = nref;
	}
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileExt() {
		return fileExt;
	}
	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}
	public String getsFileName() {
		return sFileName;
	}
	public void setsFileName(String sFileName) {
		this.sFileName = sFileName;
	}
	// toString
	@Override
	public String toString() {
		return "BoardVo [postKey=" + postKey + ", postTitle=" + postTitle + ", postContent=" + postContent
				+ ", postDate=" + postDate + ", userId=" + userId + ", postCategory=" + postCategory
				+ ", postViewCount=" + postViewCount + ", postFileUrl=" + postFileUrl + ", bNum=" + bNum + ", lvl="
				+ lvl + ", step=" + step + ", nref=" + nref + ", file_num=" + file_num + ", fileName=" + fileName
				+ ", fileExt=" + fileExt + ", sFileName=" + sFileName + "]";
	}
	
}