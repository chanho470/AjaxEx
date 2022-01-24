<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<marquee>
	<h1>this is example of ajax</h1>
</marquee>
<form name ="vinform">
	Book Id : <input type="text" name="t1" onkeyup="sendInfo() ">
	<input type="button" value="ShowTable" onclick="sendInfo() ">
</form>
<span id ="info"></span>

<script>
	var request;
	function sendInfo(){
		var v = document.vinform.t1.value;
		var url = "bookindex.jsp?id="+v;
		debugger;
		 if(window.XMLHttpRequest){

             request = new XMLHttpRequest();
         }else{
             request = new ActiveXObject("Microsoft.XMLHTTP");
         }
		 try{
			 request.onreadystatechange = getInfo;
			 request.open("GET",url,true);
			 request.send();
		 }
		 catch(e){
			 alert("실행 불가");
		 }
		 function getInfo(){
			 if(request.readyState==4){
				 var val =request.responseText;
				 document.getElementById('info').innerHTML = val;
			 }
		 }
		 
	}
</script>
</body>
</html>