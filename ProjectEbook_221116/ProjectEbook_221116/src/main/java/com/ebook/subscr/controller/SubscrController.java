package com.ebook.subscr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ebook.manage.service.SubscribeService;
import com.ebook.manage.vo.SubscrVo;

import lombok.extern.log4j.Log4j2;

import javax.servlet.http.HttpSession;

@Log4j2
@Controller
@RequestMapping("subscr")
public class SubscrController {

	@Autowired
	private SubscribeService subscribeService;
	HttpSession httpSession;
	// 구독신청
	@RequestMapping("/writeForm")
	public ModelAndView subscrWrite(String userId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("userId", userId);
		mv.setViewName("subscription/subscrWrite");
		return mv;
	}
	
	@RequestMapping("/write")
	public ModelAndView subscrWriteForm(SubscrVo subscr) {
		ModelAndView mv = new ModelAndView();
		
		subscribeService.insertSubscr(subscr);
		mv.addObject("subscr",subscr);
		System.out.println(subscr);
		
		mv.setViewName("subscription/subscrView");
		return mv;
	}
	
	// 구독 완료
	@RequestMapping("/view")
	public ModelAndView subscrView(String userId) {
		ModelAndView mv = new ModelAndView();
		
		SubscrVo subscr = subscribeService.getSubscrView(userId);
		mv.addObject("subscr", subscr);
		
	
		
		mv.setViewName("/subscription/subscrView");
		return mv;
	}
}
