<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<script type="text/javascript">
	function add() {
		let todo = document.getElementById("item");
		let list = document.getElementById("todolist");
		let listitem = document.createElement("li")
		listitem.className = "d-flex list-group-item list-group-item-action list-group-item-warning";
		let xbtn = document.createElement("button");
		xbtn.className = "btn-close ms-auto";
		
		xbtn.onclick = function(e){
			let pnode  = e.target.parentNode;
			list.removeChild(pnode);
		}
		listitem.innerText = todo.value;
		list.appendChild(listitem);
		todo.value = "";
		todo.focus();
	}
</script>
<body>
	<div class="container bg-warning shadow mx-auto mt-5 p-5 w-75">
	<h1>My Todo App</h1>
	<hr>
	<div id="todoForm">
	<input type="text" placeholder="할일을 입력하세요." class="form-control"id="item">
	<button type="button" onclick="add()">할일 추가</button>
	</div>
	<hr>
	<ul id="todolist" class="list-group"></ul>
	</div>
</body>
</html>
