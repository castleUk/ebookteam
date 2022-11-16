package com.ebook.manage.service;

import java.util.List;

import com.ebook.manage.vo.SubscrVo;

public interface SubscribeService {
	
	// 구독 목록
	List<SubscrVo> getSubscrList();
	
	// 구독 신청
	void insertSubscr(SubscrVo subscr);
	
	// 구독 정보
	SubscrVo getSubscrView(String userId);
}
