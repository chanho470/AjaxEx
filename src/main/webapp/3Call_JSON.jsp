<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	window.onload = function(){
		var request = new XMLHttpRequest();
		request.onreadystatechange = function(){
			if(request.readyState == 4 && request.status ==200){
				var json =eval('('+request.responseText+')');
				var output='';
				for (var i=0 ;i<json.data.length;i++){
					var continent_name = json.data[i].continent_nm;
					var country_name = json.data[i].country_nm;
					var flag_url = json.data[i].flag_download_url;
					var map_url = json.data[i].map_download_url;
					
					output += '<div>'; output += '<h2>' +continent_name+'<h2>';
					output += '<h3>' +country_name+'<h3>';
					output += '<img src ="'+flag_url+'" alt ="해당 국가 이미지 없음" width ="200"/>';
					output += '<img src ="'+map_url+'" alt ="해당 국가 이미지 없음" width ="200"/>';
					output +='</div>';
				}
				document.body.innerHTML += output ;
			}
		}
		request.open("get","http://apis.data.go.kr/1262000/TravelAlarmService2/getTravelAlarmList2?serviceKey=M6cfRHF%2B6b0RTTEMr159mR72nOTS75wUnyPYPydy3%2BXPeahtW66ZPxW9pWq%2F5nkY%2FgYwTxUlzoM9l%2FIoTwrssQ%3D%3D&returnType=JSON&numOfRows=50&pageNo=1",true);
		request.send();
	}
</script>
</body>
</html>