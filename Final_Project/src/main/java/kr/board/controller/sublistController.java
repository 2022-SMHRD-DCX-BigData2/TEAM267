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
	
	/*// 아이디 받아와서하기
	 * @GetMapping("/rcmndClst_1") public List<TCloset> rcmndClst(String memId) {
	 * 
	 * java.util.List<TCloset> rcmndClst = mapper.rcmndClst(memId); return
	 * rcmndClst; }
	 */
	
	@GetMapping("/rcmndClst_1")
	public List<TCloset> rcmndClst() {
	  
	  java.util.List<TCloset> rcmndClst = mapper.rcmndClst();
	  return rcmndClst;
	}
}
