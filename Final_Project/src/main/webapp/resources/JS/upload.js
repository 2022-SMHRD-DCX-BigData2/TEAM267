function DropFile(dropAreaId, fileListId) {
    let dropArea = document.getElementById(dropAreaId);
    let fileList = document.getElementById(fileListId);
  
    function preventDefaults(e) {
      e.preventDefault();
      e.stopPropagation();
    }
    
    //드래그 스타일 변경
    function highlight(e) {
      preventDefaults(e);
      dropArea.classList.add("highlight");
    }
    //드래그 스타일 변경
    function unhighlight(e) {
      preventDefaults(e);
      dropArea.classList.remove("highlight");
    }
    //파일업로드
    function handleDrop(e) {
      unhighlight(e);
      let dt = e.dataTransfer;
      let files = dt.files;
  
      handleFiles(files);
  
      const fileList = document.getElementById(fileListId);
      if (fileList) {
        fileList.scrollTo({ top: fileList.scrollHeight });
      }
    }
  
    function handleFiles(files) {
      files = [...files];
      // files.forEach(uploadFile);
      files.forEach(previewFile);
    }
  
    function previewFile(file) {
      console.log(file);
      renderFile(file);
    }
    // 이미지 미리보기
    function renderFile(file) {
      let reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onloadend = function () {
        let img = dropArea.getElementsByClassName("preview")[0];// 여러개 파일 업로드시 첫번째 파일만
        img.src = reader.result;
        img.style.display = "block";
      };
    }
  
    dropArea.addEventListener("dragenter", highlight, false); //드래그 스타일 변경
    dropArea.addEventListener("dragover", highlight, false); //드래그 스타일 변경
    dropArea.addEventListener("dragleave", unhighlight, false); //드래그 스타일 변경
    dropArea.addEventListener("drop", handleDrop, false);
  
    return {
      handleFiles
    };
  }
  
  const dropFile = new DropFile("drop-file", "files");
  