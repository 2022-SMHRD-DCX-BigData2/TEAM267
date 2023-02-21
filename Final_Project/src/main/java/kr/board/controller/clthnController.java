package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.TCdata;
import kr.board.entity.TCloset;
import kr.board.entity.TFdata;
import kr.board.mapper.BoardMapper;
@RestController
public class clthnController {
	
	@Autowired
	private BoardMapper mapper;
	
	/*// 아이디 받아와서하기
	 * @GetMapping("/rcmndClst_1") public List<TCloset> rcmndClst(String memId) {
	 * 
	 * java.util.List<TCloset> rcmndClst = mapper.rcmndClst(memId); return
	 * rcmndClst; }
	 */
	
	
	
//	내옷장 데이터 가져오기
	@GetMapping("/rcmndClst_1")
	public List<TCloset> rcmndClst() {
	  
	  java.util.List<TCloset> rcmndClst = mapper.rcmndClst();
	  return rcmndClst;
	}
	
	// 옷 전체 카테고리 
	@GetMapping("/c_cate")
	public List<TCdata> c_cate() {
	  
	  java.util.List<TCdata> c_cate = mapper.c_cate();
	  return c_cate;
	}
	
	@GetMapping("/c_cate_conliset/{c_cate}")
	public List<TCdata> c_cate_conliset(int c_cate) {
	  System.out.println(c_cate);
	  java.util.List<TCdata> c_cate_conliset = mapper.c_cate_conliset(c_cate);
	  return c_cate_conliset;
	}

}
