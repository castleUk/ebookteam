package com.ebook.manage.service;

import java.util.List;

import com.ebook.manage.vo.MenuVo;
import com.ebook.manage.vo.UserVo;

public interface MenuService {
	
	// 메뉴 관리
	List<MenuVo> getMenuList();

	List<MenuVo> getManageMenu();

	List<MenuVo> getBoardMenu();

	List<MenuVo> getMyMenu();

	// 메뉴 정보 보기
	MenuVo getMenu(int menu_seq);
	
	// 메뉴 생성
	void insertMenu(MenuVo menu);
	
	// 메뉴 수정
	void updateMenu(MenuVo menu);

	// 메뉴 삭제
	
	// 현재 메뉴 가져오기
	MenuVo getPageMenu(String postCategory);
	

	

}
