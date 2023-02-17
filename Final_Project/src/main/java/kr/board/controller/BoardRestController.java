package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.TFdata;
import kr.board.mapper.BoardMapper;

@RestController
public class BoardRestController {
	@Autowired
	private BoardMapper mapper;
	
	@GetMapping("/TCategory")
	public java.util.List<TFdata> footcategorylist() {
		java.util.List<TFdata> footcategorylist=mapper.footcategorylist();		
		return footcategorylist;
	}
	
//	@GetMapping("/TFdata")
//	public java.util.List<TFdata> footlist() {
//		java.util.List<TFdata> footlist=mapper.footcategory();		
//		return footlist;
//	}
	
	@GetMapping("/TFdata/{f_cate}")
	public List<TFdata> footcategory(int f_cate) {
		System.out.println("{"+f_cate+"---f_cate데이터확인}");
		
		java.util.List<TFdata> footlistca=mapper.footcategory(f_cate);
		System.out.print(footlistca);
		return footlistca;
	}

}
