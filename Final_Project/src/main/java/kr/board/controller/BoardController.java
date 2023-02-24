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
	
	@GetMapping("/Main.do")
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
//  의류 코디 페이지 이동
	@RequestMapping("/CLTHN_SLCTN.do")
	public void CLTHN_SLCTN() {}
// 서비스 소개 페이지 이동
	@RequestMapping("/Serviceinfo.do")
	public void Serviceinfo() {}
//  신발 커뮤니티 상세 페이지 이동
	@RequestMapping("/POST.do")
	public void POST() {}
//  신발 커뮤니티 페이지 이동
	@RequestMapping("/StyleCommunity.do")
	public void StyleCommunity() {}	
//  신발 상세 페이지 이동
	@RequestMapping("/Recominfo.do")
	public void Recominfo() {}	
//  코디 업로드 페이지 이동
	@RequestMapping("/WRITE.do")
	public void WRITE() {}		
// 마이 페이지로 이동
//	@RequestMapping("/MYpage.do")
//	public void MYpage() {}		
}
