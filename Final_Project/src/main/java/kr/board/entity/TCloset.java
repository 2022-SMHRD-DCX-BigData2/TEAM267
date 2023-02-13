package kr.board.entity;

//옷장 정보 
public class TCloset {

 // 옷 순번 
 private long closetSeq;

 // 회원 아이디 
 private String memId;

 // 의류 명칭 
 private String closetName;

 // 의류 이미지 
 private String closetImg;

 // 카테고리 순번 
 private long cateSeq;

 public long getClosetSeq() {
     return closetSeq;
 }

 public void setClosetSeq(long closetSeq) {
     this.closetSeq = closetSeq;
 }

 public String getMemId() {
     return memId;
 }

 public void setMemId(String memId) {
     this.memId = memId;
 }

 public String getClosetName() {
     return closetName;
 }

 public void setClosetName(String closetName) {
     this.closetName = closetName;
 }

 public String getClosetImg() {
     return closetImg;
 }

 public void setClosetImg(String closetImg) {
     this.closetImg = closetImg;
 }

 public long getCateSeq() {
     return cateSeq;
 }

 public void setCateSeq(long cateSeq) {
     this.cateSeq = cateSeq;
 }

 // TCloset 모델 복사
 public void CopyData(TCloset param)
 {
     this.closetSeq = param.getClosetSeq();
     this.memId = param.getMemId();
     this.closetName = param.getClosetName();
     this.closetImg = param.getClosetImg();
     this.cateSeq = param.getCateSeq();
 }
}
