package kr.board.entity;

import java.sql.Timestamp;

//회원 정보 
public class TMember {

 // 회원 아이디 
 private String memId;

 // 회원 비밀번호 
 private String memPw;

 // 회원 닉네임 
 private String memNick;

 // 회원 이메일 
 private String memEmail;

 // 회원 성별 
 private String memGender;

 // 회원 취향 
 private String memTst;

 // 회원 발사이즈 
 private Integer memFootsize;

 // 회원 가입일자 
 private Timestamp memJoindate;

 // 회원 유형 일반회원:'M', 관리자:'A'
 private String memType;

 public String getMemId() {
     return memId;
 }

 public void setMemId(String memId) {
     this.memId = memId;
 }

 public String getMemPw() {
     return memPw;
 }

 public void setMemPw(String memPw) {
     this.memPw = memPw;
 }

 public String getMemNick() {
     return memNick;
 }

 public void setMemNick(String memNick) {
     this.memNick = memNick;
 }

 public String getMemEmail() {
     return memEmail;
 }

 public void setMemEmail(String memEmail) {
     this.memEmail = memEmail;
 }

 public String getMemGender() {
     return memGender;
 }

 public void setMemGender(String memGender) {
     this.memGender = memGender;
 }

 public String getMemTst() {
     return memTst;
 }

 public void setMemTst(String memTst) {
     this.memTst = memTst;
 }

 public Integer getMemFootsize() {
     return memFootsize;
 }

 public void setMemFootsize(Integer memFootsize) {
     this.memFootsize = memFootsize;
 }

 public Timestamp getMemJoindate() {
     return memJoindate;
 }

 public void setMemJoindate(Timestamp memJoindate) {
     this.memJoindate = memJoindate;
 }

 public String getMemType() {
     return memType;
 }

 public void setMemType(String memType) {
     this.memType = memType;
 }

 // TMember 모델 복사
 public void CopyData(TMember param)
 {
     this.memId = param.getMemId();
     this.memPw = param.getMemPw();
     this.memNick = param.getMemNick();
     this.memEmail = param.getMemEmail();
     this.memGender = param.getMemGender();
     this.memTst = param.getMemTst();
     this.memFootsize = param.getMemFootsize();
     this.memJoindate = param.getMemJoindate();
     this.memType = param.getMemType();
 }
}