package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.TCloset;
import kr.board.entity.TFdata;
import kr.board.mapper.BoardMapper;
@RestController
public class sublistController {
		
	@Autowired
	private BoardMapper mapper;
	
	
	@GetMapping("sublist_1")
	public List<TCloset> myCloset(int f_cate) {
		
		
		java.util.List<TCloset> myCloset=mapper.myCloset(f_cate);
		
		return myCloset;
	}
	

	
}
