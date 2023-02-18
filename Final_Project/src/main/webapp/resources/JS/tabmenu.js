// 탭메뉴
function findParent(el, className){
    let check = el.parentNode.classList.contains(className);
    
    if(check === true){
       return el.parentNode;
    }else{
      return findParent(el.parentNode, className);
    }
  }
  
  function bindingTabEvent(wrap){
    let wrapEl = document.querySelectorAll(wrap);
    
    wrapEl.forEach(function(tabArea){
      let btn = tabArea.querySelectorAll('.btn_tab');
      
      btn.forEach(function(item){
        item.addEventListener('click', function(){
          let parent = findParent(this, 'tab_area');
          let idx = this.dataset['idx'];
          let depth = this.dataset['depth'];
          let btnArr = parent.querySelectorAll('.btn_tab[data-depth="'+ depth +'"]');
          let contentArr = parent.querySelectorAll('.content_area[data-depth="'+ depth +'"]');
          
          btnArr.forEach(function(btn){ btn.classList.remove('act'); });
          this.classList.add('act');
          contentArr.forEach(function(content){ content.classList.remove('act'); });
          parent.querySelector('.content_area[data-idx="'+ idx +'"][data-depth="'+ depth +'"]').classList.add('act');
        });
      });
    });
  }
  
  bindingTabEvent('.tab_wrap');   
// 탭메뉴끝

function collapse(element) {
    
    
    var before = document.getElementsByClassName("active")[0]               // 기존에 활성화된 버튼
    if (before && document.getElementsByClassName("active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
        before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
        before.classList.remove("active");                  // 버튼 비활성화
    }
    element.classList.toggle("active");         // 활성화 여부 toggle

    var content = element.nextElementSibling;
    if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
        content.style.maxHeight = null;         // 접기
    } else {
        content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
    }
}