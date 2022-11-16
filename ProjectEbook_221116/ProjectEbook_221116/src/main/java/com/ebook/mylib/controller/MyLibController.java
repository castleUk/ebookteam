package com.ebook.mylib.controller;

import com.ebook.mylib.dto.MyLibDTO;
import com.ebook.mylib.service.MyLibService;
import com.ebook.user.vo.UsersVO;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Log4j2
@Controller
public class MyLibController {
    @Autowired
    MyLibService myLibService;

    @PostMapping("/book/libinsert")
    public String gobook(@RequestParam("isbn") String isbn, HttpSession httpSession) throws Exception {
        log.info(isbn);
        MyLibDTO dto = new MyLibDTO();
        dto.setIsbn(isbn);
        UsersVO list = (UsersVO) httpSession.getAttribute("user");
        log.info(list);
        String userId = list.getUserId();
        dto.setUserId(userId);

        myLibService.insertMyLib(dto);
        // 목록

        return null;
    }

    //	@GetMapping("/lib/myBook")
//	public String myLibGo(){
//		return "/lib/myBook";
//	}
    @GetMapping("/lib/myBook")
    public String list(MyLibDTO myLibDTO, Model model, HttpSession httpSession) throws Exception {
        UsersVO list = (UsersVO) httpSession.getAttribute("user");
        if (list == null) {
            return "redirect:/";
        }
        MyLibDTO dto = new MyLibDTO();
        UsersVO usersVO = (UsersVO) httpSession.getAttribute("user");
        String userId = usersVO.getUserId();
        dto.setUserId(userId);

        Object list1 = myLibService.selectMylib(dto);
        log.info(list1);
        model.addAttribute("list", list1);
        return "/lib/myBook";

    }
}
