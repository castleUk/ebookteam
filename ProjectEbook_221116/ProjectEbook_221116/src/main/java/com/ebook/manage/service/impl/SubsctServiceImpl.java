package com.ebook.manage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ebook.manage.dao.SubscrDao;
import com.ebook.manage.service.SubscribeService;
import com.ebook.manage.vo.SubscrVo;

@Service("subscribeService")
public class SubsctServiceImpl implements SubscribeService {
	
	@Autowired
	private SubscrDao subscrDao;
	
	// 구독 목록
	@Override
	public List<SubscrVo> getSubscrList() {
		List<SubscrVo> subscrList = subscrDao.getSubscrList();
		return subscrList;
	}
	
	// 구독 정보
	@Override
	public SubscrVo getSubscrView(String userId) {
		SubscrVo subscr = subscrDao.getSubscrView(userId);
		return subscr;
	}
	
	// 구독 신청
	@Override
	public void insertSubscr(SubscrVo subscr) {
		subscrDao.insertSubscr(subscr);
		
	}


}
