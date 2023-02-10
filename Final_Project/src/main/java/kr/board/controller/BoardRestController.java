package kr.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import kr.board.mapper.BoardMapper;

@RestController
public class BoardRestController {
	@Autowired
	private BoardMapper mapper;
	
}
