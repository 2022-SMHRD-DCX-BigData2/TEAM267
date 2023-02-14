package kr.board.entity;

import java.sql.Timestamp;

//댓글 
public class TComment {

 // 댓글 순번 
 private long cmtSeq;

 // 원글 순번 
 private long bSeq;

 // 댓글 내용 
 private String cmtContent;

 // 댓글 작성일자 
 private Timestamp cmtDate;

 // 댓글 작성자 
 private String memId;

 public long getCmtSeq() {
     return cmtSeq;
 }

 public void setCmtSeq(long cmtSeq) {
     this.cmtSeq = cmtSeq;
 }

 public long getBSeq() {
     return bSeq;
 }

 public void setBSeq(long bSeq) {
     this.bSeq = bSeq;
 }

 public String getCmtContent() {
     return cmtContent;
 }

 public void setCmtContent(String cmtContent) {
     this.cmtContent = cmtContent;
 }

 public Timestamp getCmtDate() {
     return cmtDate;
 }

 public void setCmtDate(Timestamp cmtDate) {
     this.cmtDate = cmtDate;
 }

 public String getMemId() {
     return memId;
 }

 public void setMemId(String memId) {
     this.memId = memId;
 }

 // TComment 모델 복사
 public void CopyData(TComment param)
 {
     this.cmtSeq = param.getCmtSeq();
     this.bSeq = param.getBSeq();
     this.cmtContent = param.getCmtContent();
     this.cmtDate = param.getCmtDate();
     this.memId = param.getMemId();
 }
}
