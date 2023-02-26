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
        console.log(dropArea);
        let img = dropArea.getElementsByClassName("preview")[0];// 여러개 파일 업로드시 첫번째 파일만
        console.log(img);
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


// 2번쨰 이미지
  function DropFile2(dropAreaId2, fileListId2) {
    let dropArea = document.getElementById(dropAreaId2);
    let fileList = document.getElementById(fileListId2);
  
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
    function handleDrop2(e) {
      unhighlight(e);
      let dt = e.dataTransfer;
      let files2 = dt.files;
  
      handleFiles2(files2);
  
      const fileList = document.getElementById(fileListId2);
      if (fileList) {
        fileList.scrollTo({ top: fileList.scrollHeight });
      }
    }
  
    function handleFiles2(files) {
      files = [...files];
      // files.forEach(uploadFile);
      files.forEach(previewFile2);
    }
  
    function previewFile2(file) {
      console.log("중간과정 실행확인");
      console.log(file);
      renderFile2(file);
    }
    // 이미지 미리보기
    function renderFile2(file) {
      let reader2 = new FileReader();
      reader2.readAsDataURL(file);
      
      reader2.onloadend = function () {
        console.log("미리보기 실행완료");
        console.log(dropArea);
        let img2 = dropArea.getElementsByClassName("preview2")[0];// 여러개 파일 업로드시 첫번째 파일만
        console.log(img2);
        img2.src = reader2.result;
        img2.style.display = "block";
      };
    }
  
    dropArea.addEventListener("dragenter", highlight, false); //드래그 스타일 변경
    dropArea.addEventListener("dragover", highlight, false); //드래그 스타일 변경
    dropArea.addEventListener("dragleave", unhighlight, false); //드래그 스타일 변경
    dropArea.addEventListener("drop", handleDrop2, false);
  
    return {
      handleFiles2
    };
  }



// 3번쨰 이미지
function DropFile3(dropAreaId3, fileListId3) {
  let dropArea = document.getElementById(dropAreaId3);
  let fileList = document.getElementById(fileListId3);

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
  function handleDrop3(e) {
    unhighlight(e);
    let dt = e.dataTransfer;
    let files3 = dt.files;

    handleFiles3(files3);

    const fileList = document.getElementById(fileListId3);
    if (fileList) {
      fileList.scrollTo({ top: fileList.scrollHeight });
    }
  }

  function handleFiles3(files) {
    files = [...files];
    // files.forEach(uploadFile);
    files.forEach(previewFile3);
  }

  function previewFile3(file) {
    console.log("중간과정 실행확인");
    console.log(file);
    renderFile3(file);
  }
  // 이미지 미리보기
  function renderFile3(file) {
    let reader3 = new FileReader();
    reader3.readAsDataURL(file);
    
    reader3.onloadend = function () {
      console.log("미리보기 실행완료");
      console.log(dropArea);
      let img3 = dropArea.getElementsByClassName("preview3")[0];// 여러개 파일 업로드시 첫번째 파일만
      console.log(img3);
      img3.src = reader3.result;
      img3.style.display = "block";
    };
  }

  dropArea.addEventListener("dragenter", highlight, false); //드래그 스타일 변경
  dropArea.addEventListener("dragover", highlight, false); //드래그 스타일 변경
  dropArea.addEventListener("dragleave", unhighlight, false); //드래그 스타일 변경
  dropArea.addEventListener("drop", handleDrop3, false);

  return {
    handleFiles3
  };
}

// 4번쨰 이미지
function DropFile4(dropAreaId4, fileListId4) {
  let dropArea = document.getElementById(dropAreaId4);
  let fileList = document.getElementById(fileListId4);

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
  function handleDrop4(e) {
      unhighlight(e);
      let dt = e.dataTransfer;
      let files4 = dt.files;

      handleFiles4(files4);

      const fileList = document.getElementById(fileListId4);
      if (fileList) {
          fileList.scrollTo({ top: fileList.scrollHeight });
      }
  }

  function handleFiles4(files) {
      files = [...files];
      // files.forEach(uploadFile);
      files.forEach(previewFile4);
  }

  function previewFile4(file) {
      console.log("중간과정 실행확인");
      console.log(file);
      renderFile4(file);
  }
  // 이미지 미리보기
  function renderFile4(file) {
      let reader4 = new FileReader();
      reader4.readAsDataURL(file);

      reader4.onloadend = function () {
          console.log("미리보기 실행완료");
          console.log(dropArea);
          let img4 = dropArea.getElementsByClassName("preview4")[0];// 여러개 파일 업로드시 첫번째 파일만
          console.log(img4);
          img4.src = reader4.result;
          img4.style.display = "block";
      };
  }

  dropArea.addEventListener("dragenter", highlight, false); //드래그 스타일 변경
  dropArea.addEventListener("dragover", highlight, false); //드래그 스타일 변경
  dropArea.addEventListener("dragleave", unhighlight, false); //드래그 스타일 변경
  dropArea.addEventListener("drop", handleDrop4, false);

  return {
      handleFiles4
  };
}
  

  
  const dropFile = new DropFile("drop-file", "files");
  const dropFile2 = new DropFile2("drop-file2", "files");
  const dropFile3 = new DropFile3("drop-file3", "files");
  const dropFile4 = new DropFile4("drop-file4", "files");
  