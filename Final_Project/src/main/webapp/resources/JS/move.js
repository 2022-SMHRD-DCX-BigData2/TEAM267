// 처음 이미지가 만들어지는 곳 지정
var img_L = 50;
var img_T = 50;
var targetObj;

function getLeft(o){
return parseInt(o.style.left.replace('px', ''));
}
function getTop(o){
return parseInt(o.style.top.replace('px', ''));
}

// 이미지를 움직이는 함수를 만들어 보겠습니다.
// 처음있던 위치애서, 움직인값의 좌표만큼을 더해줍니다.
function moveDrag(e){
var e_obj = window.event? window.event : e;
var dmvx = parseInt(e_obj.clientX + img_L);
var dmvy = parseInt(e_obj.clientY + img_T);
targetObj.style.left = dmvx +"px";
targetObj.style.top = dmvy +"px";
return false;
}

// 드래그를 시작하는 함수 입니다.
// 마지막으로 움직인 좌표값에서, 이전움직였던 좌표값을 빼줍니다. == 움직인 좌표를 나타냅니다.
// 움직였던 좌표에서 처음 드래그를 시작했던 좌표를 빼줍니다. 움직인 좌표를 나타내줍니다
function startDrag(e, obj){
targetObj = obj;
var e_obj = window.event? window.event : e;
img_L = getLeft(obj) - e_obj.clientX;
img_T = getTop(obj) - e_obj.clientY;

document.onmousemove = moveDrag;
document.onmouseup = stopDrag;
if(e_obj.preventDefault)e_obj.preventDefault();
}

// 드래그를 정지하는 함수 입니다.
function stopDrag(){
  document.onmousemove = null;
  document.onmouseup = null;
  }