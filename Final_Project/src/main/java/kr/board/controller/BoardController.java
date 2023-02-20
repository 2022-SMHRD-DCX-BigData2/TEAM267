package kr.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper mapper;
	
	@GetMapping("/main.do")
	public String main() {
		// 알아서 ViewResolver에 의해 
		// WEB-INF/views에 있는 basic.jsp로 이동
		return "HOME";
	}
	
	
	
//	로그인 페이지 이동
	@RequestMapping("/login.do")
	public void login() {}
//	회원가입 페이지 이동
	@RequestMapping("/sign.do")
	public void sign() {}
//	내옷장 페이지 이동
	@RequestMapping("/MYCLOSET.do")
	public void MYCLOSET() {}
//	신발전체 페이지 이동
	@RequestMapping("/footlist.do")
	public void footlist() {}
	@RequestMapping("/CLTHN_SLCTN.do")
	public void CLTHN_SLCTN() {}
}
