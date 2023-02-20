function rcmndClst() {
    $.ajax({
  url: "${cpath}/rcmndClst_1",
  type: "get",
  dataType: "json",
  data : {"${loginMember.memId}": loginMember.memId},
  success : rcmndClst_1,
  error:function(){
    alert("의류 카테고리 불러오기 실패")
  }
})
}

function rcmndClst_1(data) {
    
    var rcmndClst_1_1 = "";
        
        rcmndClst_1_1 +=    '<div class="viewCLOSET" id="viewCLOSET">';
        rcmndClst_1_1 +=       '<h3>전체</h3>';
        if("${loginMember.memId}" == data.memId){
        	$.each(data,indxe,list)=>{
                rcmndClst_1_1 +='<a onclick="select_TOP()" ><img src="'+closetImg+'"width="150px" height="150px"></a>';
              }
		}else{
			
		}
        rcmndClst_1_1 += '</div>';
        
      $(".viewCLOSET_area").html(rcmndClst_1_1);
    }