package kr.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.board.mapper.BoardMapper;

@Controller
public class MemberController {

	@Autowired
	private BoardMapper mapper;
}
