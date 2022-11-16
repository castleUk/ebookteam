package com.ebook.manage.dao;

import java.util.List;

import com.ebook.manage.vo.SubscrVo;

public interface SubscrDao {

	List<SubscrVo> getSubscrList();

	SubscrVo getSubscrView(String userId);

	void insertSubscr(SubscrVo subscr);

}
