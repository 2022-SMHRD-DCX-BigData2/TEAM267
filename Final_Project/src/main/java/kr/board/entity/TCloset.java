package kr.board.entity;

//옷장 정보 
public class TCloset {

 // 옷 순번 
 private long closet_seq;

 // 회원 아이디 
 private String mem_id;

 // 의류 명칭 
 private String closet_name;

 // 의류 이미지 
 private String closet_img;

 // 카테고리 순번 
 private long cate_seq;

 public long getcloset_seq() {
     return closet_seq;
 }

 public void setcloset_seq(long closet_seq) {
     this.closet_seq = closet_seq;
 }

 public String getmem_id() {
     return mem_id;
 }

 public void setmem_id(String mem_id) {
     this.mem_id = mem_id;
 }

 public String getcloset_name() {
     return closet_name;
 }

 public void setcloset_name(String closet_name) {
     this.closet_name = closet_name;
 }

 public String getcloset_img() {
     return closet_img;
 }

 public void setcloset_img(String closet_img) {
     this.closet_img = closet_img;
 }

 public long getcate_seq() {
     return cate_seq;
 }

 public void setcate_seq(long cate_seq) {
     this.cate_seq = cate_seq;
 }

 // TCloset 모델 복사
 public void CopyData(TCloset param)
 {
     this.closet_seq = param.getcloset_seq();
     this.mem_id = param.getmem_id();
     this.closet_name = param.getcloset_name();
     this.closet_img = param.getcloset_img();
     this.cate_seq = param.getcate_seq();
 }
}
