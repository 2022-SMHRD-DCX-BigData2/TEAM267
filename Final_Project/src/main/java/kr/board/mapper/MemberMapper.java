package kr.board.mapper;

import kr.board.entity.TMember;

public interface MemberMapper {

	public void sign(TMember mvo);

	public TMember MemberLogin(TMember mvo);

	public void userUpdate(TMember mvo);

}
