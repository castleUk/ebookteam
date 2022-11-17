package com.ebook.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ebook.board.service.BoardService;
import com.ebook.manage.service.MenuService;
import com.ebook.manage.vo.MenuVo;

@Controller
public class HomeController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		
		// sideMenu
		List<MenuVo> boardMenu = menuService.getBoardMenu();
		List<MenuVo> myMenu = menuService.getMyMenu();
		
		mv.addObject("boardMenu", boardMenu);
		mv.addObject("myMenu", myMenu);
		
		mv.setViewName("home");
		return mv;
	}
}
