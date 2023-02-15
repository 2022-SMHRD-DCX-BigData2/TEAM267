package kr.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.TCategory;
import kr.board.entity.TFdata;
import kr.board.mapper.BoardMapper;

@RestController
public class BoardRestController {
	@Autowired
	private BoardMapper mapper;
	
//	@GetMapping("/TCategory")
//	public java.util.List<TCategory> footcategorylist() {
//		java.util.List<TCategory> footcategory=mapper.footcategorylist();		
//		return footcategory;
//	}
	
	@GetMapping("/TFdata")
	public java.util.List<TFdata> footlist() {
		java.util.List<TFdata> footlist=mapper.footcategory();		
		return footlist;
	}

}
