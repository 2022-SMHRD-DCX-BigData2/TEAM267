<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="${cpath}/resources/css/style.css">
  <link rel="stylesheet" href="${cpath}/resources/css/upload.css">
</head>

<body>
    <header>
        <div id="TOP" class="flex">
            <div>
                <a href="${cpath}/Main.do">
                    <img src="${cpath}/resources/img/MainLogo.png" alt="" class="main_Logo">
                </a>
            </div>
            <div class="flex header_main">
                <div>
                    <a href="${cpath}/Main.do">
                        <h1 id="header_font">COORDI FOR SHOES</h1>
                    </a>
                </div>
        <c:choose>
        	<c:when test="${empty loginMember}">
        		<div>
                    <a href="${cpath}/Serviceinfo.do">서비스소개</a>
                    <a href="">공지사항</a>
                </div>
        	</c:when>
        	
        	<c:otherwise>
        		<div>
        			<a href="${cpath}/Serviceinfo.do">서비스소개</a>
        			<a href="${cpath}/Footup.do">발 사이즈 측정</a>
        			<a href="${cpath}/MYCLOSET.do">디지털 옷장</a>
        			<a href="${cpath}/footlist.do">신발 보러가기</a>
        			<a href="${cpath}/StyleSelect.do">취향 선택</a>
        		</div>
        	</c:otherwise>
        </c:choose>

            </div>
        <c:choose>
        	<c:when test="${empty loginMember}">
	            <div class="flex header_left">
	                <div>
		                <a href="${cpath}/LoginForm.do">로그인</a>
		                <a href="${cpath}/signupForm.do"> 회원가입 </a>
	                </div>
	            </div>
            </c:when>
            <c:otherwise>			
				<div class="flex header_left">
	                <div>
	                	<span>${loginMember.mem_nick}</span>
		                <a href="${cpath}/MYpage.do">내정보</a>
		                <a href="${cpath}/Logout.do"> 로그아웃 </a>
	                </div>
	            </div>
			</c:otherwise>
		</c:choose>
        </div>
    </header>
    <!-- 헤더 끝 -->
  
	<main>
    <div class="grid Upload_name">
      <div class="flex  foot_box">
        <span class="sp_contents"><i class="fa-solid fa-image"></i></span>
        <p>왼발</p>
      </div>
      <div class="flex  foot_box">
        <span class="sp_contents"><i class="fa-solid fa-image"></i></span>
        <p>오른발</p>
      </div>
    </div>
    <div class="grid Upload">

      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <form action="">
            	<input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              	accept="image/png, image/jpeg, image/gif">
            </form>
          </div>
        </div>
      </div>
      
      <div class="foot_size_img_h">
        <img src="/src/main/webapp/resources/img/foot_size_1.png" alt="" >
      </div>
      

      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              accept="image/png, image/jpeg, image/gif">
          </div>
        </div>
      </div>
    </div>

    
    <div class="grid Upload">
      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              accept="image/png, image/jpeg, image/gif">
          </div>
        </div>
      </div>
      <div class="foot_size_img_w"> 
        <img src="/src/main/webapp/resources/img/foot_size_2.png" alt="" >
      </div>
      <div id="root">
        <div class="contents">
          <div class="upload-box">
            <div id="drop-file" class="drag-file">
              <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
              <p class="message">파일 업로드 하기</p>
              <img src="" alt="미리보기 이미지" class="preview">
            </div>
            <label class="file-label" for="chooseFile">Choose File</label>
            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)"
              accept="image/png, image/jpeg, image/gif">
          </div>
        </div>
      </div>
    </div>
  </main>
</body>
  <script src="${cpath}/resources/JS/upload.js"></script>
  <script type="text/javascript">
  
	  function drawROI(img, corners) {
		  let cpy = img.clone();
		  let c1 = new cv.Scalar(192, 192, 255, 0);
		  let c2 = new cv.Scalar(128, 128, 255, 0);
	
		  for (let i = 0; i < corners.length; i++) {
		    cv.circle(cpy, new cv.Point(corners[i].x, corners[i].y), 10, c1, -1, cv.LINE_AA, 0);
		  }
	
		  cv.line(cpy, new cv.Point(corners[0].x, corners[0].y), new cv.Point(corners[1].x, corners[1].y), c2, 2, cv.LINE_AA, 0);
		  cv.line(cpy, new cv.Point(corners[1].x, corners[1].y), new cv.Point(corners[2].x, corners[2].y), c2, 2, cv.LINE_AA, 0);
		  cv.line(cpy, new cv.Point(corners[2].x, corners[2].y), new cv.Point(corners[3].x, corners[3].y), c2, 2, cv.LINE_AA, 0);
		  cv.line(cpy, new cv.Point(corners[3].x, corners[3].y), new cv.Point(corners[0].x, corners[0].y), c2, 2, cv.LINE_AA, 0);
	
		  let disp = new cv.Mat();
		  cv.addWeighted(img, 0.3, cpy, 0.7, 0, disp);
	
		  return disp;
		}
	
		function onMouse(event, x, y, flags, param) {
		  let srcQuad = param.srcQuad;
		  let dragSrc = param.dragSrc;
		  let ptOld = param.ptOld;
		  let src = param.src;
	
		  if (event === cv.EVENT_LBUTTONDOWN) {
		    for (let i = 0; i < 4; i++) {
		      if (cv.norm(srcQuad[i].sub(new cv.Point(x, y))) < 25) {
		        dragSrc[i] = true;
		        ptOld = new cv.Point(x, y);
		        break;
		      }
		    }
		  }
	
		  if (event === cv.EVENT_LBUTTONUP) {
		    for (let i = 0; i < 4; i++) {
		      dragSrc[i] = false;
		    }
		  }
	
		  if (event === cv.EVENT_MOUSEMOVE) {
		    for (let i = 0; i < 4; i++) {
		      if (dragSrc[i]) {
		        let dx = x - ptOld.x;
		        let dy = y - ptOld.y;
	
		        srcQuad[i].x += dx;
		        srcQuad[i].y += dy;
	
		        let cpy = drawROI(src, srcQuad);
		        cv.imshow('img', cpy);
		        ptOld = new cv.Point(x, y);
		        break;
		      }
		    }
		  }
		}
		
		let footimg = cv.imread('newfoot.jpg');
		let src = new cv.Mat();
		let dsize = new cv.Size(480, 640);
		cv.resize(img, src, dsize, 0, 0, cv.INTER_AREA);

		let h = src.rows;
		let w = src.cols;
		let dw = 210;
		let dh = 148;

		let srcQuad = cv.matFromArray(4, 1, cv.CV_32FC2, [30, 30, 30, h-30, w-30, h-30, w-30, 30]);
		let dstQuad = cv.matFromArray(4, 1, cv.CV_32FC2, [0, 0, 0, dh-1, dw-1, dh-1, dw-1, 0]);
		let dragSrc = [false, false, false, false];
		
		let disp = drawROI(src, srcQuad);
		
		cv.imshow('footimg', disp);
		cv.setMouseCallback('footimg', onMouse);

		while (true) {
		  let key = cv.waitKey();
		  if (key === 13) {
		    break;
		  } else if (key === 27) {
		    cv.destroyWindow('img');
		    return;
		  }
		}

		let pers = cv.getPerspectiveTransform(srcQuad, dstQuad);
		let dst = new cv.Mat();
		cv.warpPerspective(src, dst, pers, new cv.Size(dw, dh), cv.INTER_CUBIC);

		cv.imshow('foot', dst);
		dst.delete();
		
		let img_gray = new cv.Mat();
		cv.cvtColor(dst, img_gray, cv.COLOR_BGR2GRAY);

		let blur = new cv.Mat();
		cv.GaussianBlur(img_gray, blur, new cv.Size(5, 5), 0);

		cv.GaussianBlur(blur, blur, new cv.Size(5, 5), 0);

		cv.GaussianBlur(blur, blur, new cv.Size(5, 5), 0);

		let edges = new cv.Mat();
		cv.Canny(blur, edges, 50, 200);

		let thresh = new cv.Mat();
		cv.threshold(edges, thresh, 127, 255, cv.THRESH_BINARY);

		let contours = new cv.MatVector();
		let hierarchy = new cv.Mat();
		cv.findContours(thresh, contours, hierarchy, cv.RETR_LIST, cv.CHAIN_APPROX_SIMPLE);

		for (let i = 0; i < contours.size(); ++i) {
		  cv.drawContours(dst, contours, i, new cv.Scalar(0, 255, 0), 1);
		}

		cv.imshow('foot', dst);

		img_gray.delete();
		blur.delete();
		edges.delete();
		thresh.delete();
		contours.delete();
		hierarchy.delete();
		
		let cnt = contours.get(0);

		let rect = cv.minAreaRect(cnt);
		let box1 = new cv.Mat();
		cv.boxPoints(rect, box1);
		box1 = box1.data32S;
		let box1_js = [];
		for (let i = 0; i < box1.length; i += 2) {
		  box1_js.push(new cv.Point(box1[i], box1[i+1]));
		}

		let img1 = new cv.Mat();
		cv.drawContours(dst, [box1_js], 0, new cv.Scalar(255, 0, 0), 1);

		cv.imshow('foot', dst);
		cv.waitKey();

		let footwidth = box1_js[1].x - box1_js[0].x;
		console.log('발 너비 :', footwidth);

		img.delete();
		box1.delete();
		
		
  </script>
  <script async src="https://docs.opencv.org/master/opencv.js" onload="onOpenCvReady();" type="text/javascript"></script>
</html>