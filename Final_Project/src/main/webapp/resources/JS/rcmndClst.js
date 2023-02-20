

function rcmndClst() {
  var memId = "<%=loginMember.getMemId()%>";
  $.ajax({
    url: "${cpath}/rcmndClst_1",
    type: "get",
    dataType: "json",
    data: {"memId": memId},
    success: rcmndClstlist,
    error: function() {
      alert("의류 카테고리 불러오기 실패");
    }
  })
}

function rcmndClstlist(data) {
  console.log(data);
  var rcmndClst_1_1 = "";

  rcmndClst_1_1 += '<div class="viewCLOSET" id="viewCLOSET">';
  rcmndClst_1_1 += '<h3>전체</h3>';
  
  if (data && data.memId === "<%=loginMember.getMemId()%>") {
    $.each(data.list, function(index, item) {
      rcmndClst_1_1 += '<a onclick="select_TOP()"><img src="' + item.closetImg + '" width="150px" height="150px"></a>';
    });
  } else {
    // do something else
  }
  
  rcmndClst_1_1 += '</div>';

  $(".viewCLOSET_area").html(rcmndClst_1_1);
}
