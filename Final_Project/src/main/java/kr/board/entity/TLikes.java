package kr.board.entity;

import java.sql.Timestamp;

//좋아요 
public class TLikes {

 // 좋아요 순번 
 private long likeSeq;

 // 게시글 순번 
 private long bSeq;

 // 작성 일자 
 private Timestamp likeDate;

 // 회원 아이디 
 private String memId;

 public long getLikeSeq() {
     return likeSeq;
 }

 public void setLikeSeq(long likeSeq) {
     this.likeSeq = likeSeq;
 }

 public long getBSeq() {
     return bSeq;
 }

 public void setBSeq(long bSeq) {
     this.bSeq = bSeq;
 }

 public Timestamp getLikeDate() {
     return likeDate;
 }

 public void setLikeDate(Timestamp likeDate) {
     this.likeDate = likeDate;
 }

 public String getMemId() {
     return memId;
 }

 public void setMemId(String memId) {
     this.memId = memId;
 }

 // TLikes 모델 복사
 public void CopyData(TLikes param)
 {
     this.likeSeq = param.getLikeSeq();
     this.bSeq = param.getBSeq();
     this.likeDate = param.getLikeDate();
     this.memId = param.getMemId();
 }
}
