<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<script>
	$(document).ready(function(){
		$.getJSON("http://apis.data.go.kr/1262000/TravelAlarmService2/getTravelAlarmList2?serviceKey=M6cfRHF%2B6b0RTTEMr159mR72nOTS75wUnyPYPydy3%2BXPeahtW66ZPxW9pWq%2F5nkY%2FgYwTxUlzoM9l%2FIoTwrssQ%3D%3D&returnType=JSON&numOfRows=50&pageNo=1",function(info){
			$.each(info.data,function(key , value){
				var continent_name = value.continent_nm;
				var country_name = value.country_nm;
				var flag_url = value.flag_download_url;
				var map_url = value.map_download_url;
				var output ='';
				output += '<div>'; 
				output += '<h2>' +continent_name+'<h2>';
				output += '<h3>' +country_name+'<h3>';
				output += '<img src ="'+flag_url+'" alt ="해당 국가 이미지 없음" width ="200"/>';
				output += '<img src ="'+map_url+'" alt ="해당 국가 이미지 없음" width ="200"/>';
				output +='</div>';
				$('body').append(output);
			});
			
		});
		
		
	});
</script>
</body>
</html>