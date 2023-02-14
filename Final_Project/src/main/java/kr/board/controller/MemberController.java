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
	
	
	
}
