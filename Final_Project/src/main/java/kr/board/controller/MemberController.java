package kr.board.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.TMember;
import kr.board.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper mapper;
	
	@RequestMapping("/LoginForm.do")
	   public void LoginForm() {}
	
	@PostMapping("/Login.do")
	   public String Login(TMember mvo, HttpServletRequest request) {
	      // 로그인 기능 - 해당 아이디, 비밀번호 일치하는 회원의 정보 세션에 저장
	      TMember loginMember = mapper.MemberLogin(mvo);
	      
	      // 만약에 로그인 정보가 있으면 --> 세션에 정보를 저장
	      if(loginMember != null) {
	         // 1. 세션 객체 생성
	         HttpSession session = request.getSession();
	         // 2. 세션에 값을 setAttribute()
	         session.setAttribute("loginMember", loginMember);
	      }
	      
	      // basic.jsp로 이동
	      // 다른 컨트롤러에 있는 메소드 실행
	      return "redirect:/Main.do";
	   }
	   
	   
	   @RequestMapping("/Logout.do")
	   public String Logout(HttpSession session) {
	      session.removeAttribute("loginMember");
	      return "redirect:/Main.do";
	   }
	   
	   @RequestMapping("/signupForm.do")
	   public void signupForm() {}

	   @RequestMapping("/signup.do")
	   public String signup(TMember mvo) {
	                        // 룽자가입
	      mapper.sign(mvo);
	      return "redirect:/Main.do";
	   }
	   
	   @RequestMapping("/MYpage.do")
	   public void MYpage() {}
	   
	   @RequestMapping("/userUpdate.do")
	   public String userUpdate(TMember mvo, HttpSession session) {
		   
	      mapper.userUpdate(mvo);
	      session.setAttribute("loginMember", mvo);
	      return "redirect:/Main.do";
	   }
	
}
