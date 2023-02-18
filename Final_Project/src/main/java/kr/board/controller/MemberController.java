package kr.board.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.TMember;
import kr.board.mapper.BoardMapper;

@Controller
public class MemberController {

	@Autowired
	private BoardMapper mapper;
	
	@PostMapping("/Loginform.do")
	public String Loginform(TMember mvo, HttpServletRequest request) {
		TMember loginMember = mapper.memberLogin(mvo);
		System.out.println(mapper.memberLogin(mvo));
		String id =request.getParameter("memId");
		String pw =request.getParameter("memPw");
		
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			System.out.println("로그인성공");
		}
		else {
			System.out.println("로그인실패");
			
			System.out.println(id);
			System.out.println(pw);
			return "redirect:/login.do";
			
		}
		// basic.jsp로 이동
		// 다른 컨트롤러에 있는 메소드 실행
		return "redirect:/main.do";
	}
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "redirect:/main.do";
	}
	
}
