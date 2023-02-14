package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.TMember;

@Mapper
public interface BoardMapper {

	public TMember memberLogin(TMember mvo);
}
