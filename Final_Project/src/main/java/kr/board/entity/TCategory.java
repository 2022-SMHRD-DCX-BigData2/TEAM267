package kr.board.entity;

//카테고리 
public class TCategory {

 // 카테고리 순번 
 private long cateSeq;

 // 카테고리 명 
 private String cateName;

 public long getCateSeq() {
     return cateSeq;
 }

 public void setCateSeq(long cateSeq) {
     this.cateSeq = cateSeq;
 }

 public String getCateName() {
     return cateName;
 }

 public void setCateName(String cateName) {
     this.cateName = cateName;
 }

 // TCategory 모델 복사
 public void CopyData(TCategory param)
 {
     this.cateSeq = param.getCateSeq();
     this.cateName = param.getCateName();
 }
}
