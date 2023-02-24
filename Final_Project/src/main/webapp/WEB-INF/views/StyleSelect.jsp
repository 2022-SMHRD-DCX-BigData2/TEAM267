<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

			<style>
				.container {
					display: grid;
					grid-template-columns: repeat(5, 1fr);
					align-items: center;
					justify-items: center;
					margin-left: 10%;
					margin-right: 10%;
					margin-top: 5%;
					gap: 50px 50px;
					
				}
				.button {
					background-color: whitesmoke;
					border: whitesmoke;
					border-radius: 10px;
					width: 100px;
					height: 50px;
				}

				input[type="checkbox"] {
					display: none;
				}
			</style>
		</head>

		<body>
			<header>
			</header>
			<main>
				<form  action="${cpath}/Login.do" method="post">
					<div class="container">
						<div class="img">
							<input type="checkbox" name="style" value="구두" class="img" id="style-1">
							<label for="style-1" style="background-image:url(${cpath}/resources/img/StyleSelect-1.png);">구두</label>
						</div>
						<div class="img">
							<input type="checkbox" name="style" value="부츠" class="img" id="style-2">
							<label for="style-2" style="background-image:url(${cpath}/resources/img/StyleSelect-2.png);">부츠</label>
						</div>
						<div class="img">
							<input type="checkbox" name="style" value="샌들" class="img" id="style-3">
							<label for="style-3" style="background-image:url(${cpath}/resources/img/StyleSelect-3.png);">샌들</label>
						</div>
						<div class="img">
							<input type="checkbox" name="style" value="스포츠" class="img" id="style-4">
							<label for="style-4" style="background-image:url(${cpath}/resources/img/StyleSelect-4.png);">스포츠</label>
						</div>
						<div class="img">
							<input type="checkbox" name="style" value="운동화" class="img" id="style-5">
							<label for="style-5" style="background-image:url(${cpath}/resources/img/StyleSelect-5.png);">운동화</label>
						</div>
						<div class="img">
							<input type="checkbox" name="style" value="캐주얼" class="img" id="style-6">
							<label for="style-6" style="background-image:url(${cpath}/resources/img/StyleSelect-6.png);">캐주얼</label>
						</div>


					</div>
					<div class="center">
						<input class="button" type="submit" value="저장하기">
					</div>
				</form>
			</main>
			<footer></footer>
		</body>

		</html>