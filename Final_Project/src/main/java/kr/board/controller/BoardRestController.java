package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.TFdata;
import kr.board.mapper.BoardMapper;

@RestController
public class BoardRestController {
	@Autowired
	private BoardMapper mapper;
	
	// 신발 종류 리스트 불러오기
	@GetMapping("/TCategory")
	public java.util.List<TFdata> footcategorylist() {
		java.util.List<TFdata> footcategorylist=mapper.footcategorylist();		
		return footcategorylist;
	}
	
//	 신발 종류와 브랜드에 따른 신발리스트 불러오기
//	@PutMapping("/TFdata/{f_cate}")
//	public List<TFdata> brandcat(@RequestBody TFdata vo) {
//		System.out.println(vo);
//		java.util.List<TFdata> footlistca=mapper.brandcat(vo);
//			
//		return footlistca;
//	}
	
	
	// 신발 종류에 따른 신발리스트 불러오기
	@GetMapping("/TFdata/{f_cate}")
	public List<TFdata> footcategory(int f_cate) {
		
		
		java.util.List<TFdata> footlistca=mapper.footcategory(f_cate);
		
		return footlistca;
	}
	
	// 브랜드 불러오기
	@GetMapping("/TBrand/{f_cate}")
	public List<TFdata> shoesbrand(int f_cate) {
		
		
		java.util.List<TFdata> shoesbrand=mapper.shoesbrand(f_cate);
		
		return shoesbrand;
	}
	
	
	
}
