package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.TCategory;
import kr.board.entity.TCdata;
import kr.board.entity.TCloset;
import kr.board.entity.TFdata;
import kr.board.entity.TMember;

@Mapper
public interface BoardMapper {

	public TMember memberLogin(TMember mvo);

	public List<TFdata> footcategorylist();// 신발 종류 리스트 불러오기

	public List<TFdata> footcategory(int f_cate);// 신발 종류에 따른 신발리스트 불러오기
	
	public List<TFdata> shoesbrand(int f_cate); // 브랜드 불러오기

	//public List<TFdata> brandcat(TFdata vo);// 신발 종류와 브랜드에 따른 신발리스트 불러오기

	public List<TCloset> myCloset(int f_cate);

	/* public List<TCloset> rcmndClst(String memId); */
	
	public List<TCloset> rcmndClst(); // 어드민 계정 옷장 이미지

	public List<TCdata> c_cate(); // 옷 카테고리

	public List<TCdata> c_cate_conliset(int c_cate);
	
}
