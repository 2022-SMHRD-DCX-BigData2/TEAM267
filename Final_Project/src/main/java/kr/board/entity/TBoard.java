package kr.board.entity;

import java.sql.Timestamp;

//게시판 
public class TBoard {

 // 게시글 순번 
 private long bSeq;

 // 글 제목 
 private String bTitle;

 // 글 내용 
 private String bContent;

 // 글 첨부파일 
 private String bFile;

 // 글 작성일자 
 private Timestamp bDate;

 // 글 작성자 
 private String memId;

 // 글 좋아요수 
 private Integer bLikes;

 // 글 카테고리 
 private String bCategory;

 public long getBSeq() {
     return bSeq;
 }

 public void setBSeq(long bSeq) {
     this.bSeq = bSeq;
 }

 public String getBTitle() {
     return bTitle;
 }

 public void setBTitle(String bTitle) {
     this.bTitle = bTitle;
 }

 public String getBContent() {
     return bContent;
 }

 public void setBContent(String bContent) {
     this.bContent = bContent;
 }

 public String getBFile() {
     return bFile;
 }

 public void setBFile(String bFile) {
     this.bFile = bFile;
 }

 public Timestamp getBDate() {
     return bDate;
 }

 public void setBDate(Timestamp bDate) {
     this.bDate = bDate;
 }

 public String getMemId() {
     return memId;
 }

 public void setMemId(String memId) {
     this.memId = memId;
 }

 public Integer getBLikes() {
     return bLikes;
 }

 public void setBLikes(Integer bLikes) {
     this.bLikes = bLikes;
 }

 public String getBCategory() {
     return bCategory;
 }

 public void setBCategory(String bCategory) {
     this.bCategory = bCategory;
 }

 // TBoard 모델 복사
 public void CopyData(TBoard param)
 {
     this.bSeq = param.getBSeq();
     this.bTitle = param.getBTitle();
     this.bContent = param.getBContent();
     this.bFile = param.getBFile();
     this.bDate = param.getBDate();
     this.memId = param.getMemId();
     this.bLikes = param.getBLikes();
     this.bCategory = param.getBCategory();
 }
}
