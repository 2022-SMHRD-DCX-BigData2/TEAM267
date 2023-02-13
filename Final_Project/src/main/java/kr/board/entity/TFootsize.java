package kr.board.entity;

//발 사이즈 
public class TFootsize {

 // 회원 아이디 
 private String memId;

 // 발 길이 
 private Integer footLength;

 // 발 너비 
 private Integer footWidth;

 // 발 태그 
 private String footTag;

 public String getMemId() {
     return memId;
 }

 public void setMemId(String memId) {
     this.memId = memId;
 }

 public Integer getFootLength() {
     return footLength;
 }

 public void setFootLength(Integer footLength) {
     this.footLength = footLength;
 }

 public Integer getFootWidth() {
     return footWidth;
 }

 public void setFootWidth(Integer footWidth) {
     this.footWidth = footWidth;
 }

 public String getFootTag() {
     return footTag;
 }

 public void setFootTag(String footTag) {
     this.footTag = footTag;
 }

 // TFootsize 모델 복사
 public void CopyData(TFootsize param)
 {
     this.memId = param.getMemId();
     this.footLength = param.getFootLength();
     this.footWidth = param.getFootWidth();
     this.footTag = param.getFootTag();
 }
}
