package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.TCategory;
import kr.board.entity.TFdata;
import kr.board.entity.TMember;

@Mapper
public interface BoardMapper {

	public TMember memberLogin(TMember mvo);

	public List<TFdata> footcategorylist();// 신발 종류 리스트 불러오기

	/* public List<TFdata> footdata(); */

	/* public List<TFdata> footcategory(); */


	public List<TFdata> footcategory(int f_cate);// 신발 종류에 따른 신발리스트 불러오기
	
	public List<TFdata> shoesbrand(int f_cate); // 브랜드 불러오기

	public List<TFdata> brandcat(TFdata vo);// 신발 종류와 브랜드에 따른 신발리스트 불러오기
	
}
