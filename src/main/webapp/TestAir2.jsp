<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$.ajax({
			url:'http://apis.data.go.kr/B552584/ArpltnStatsSvc/getCtprvnMesureLIst?serviceKey=M6cfRHF%2B6b0RTTEMr159mR72nOTS75wUnyPYPydy3%2BXPeahtW66ZPxW9pWq%2F5nkY%2FgYwTxUlzoM9l%2FIoTwrssQ%3D%3D&returnType=xml&numOfRows=10&pageNo=1&itemCode=CO&dataGubun=HOUR&searchCondition=MONTH',
			success:function(data){
				var output ='';

				output += '<table border=1>'; 
				output += '<tr><th>대구</th><th>인천</th><th>광주</th><th>울산</th><th>서울</th><th>부산</th></tr>';
				$(data).find('item').each(function(){
					var daegu = $(this).find('daegu').text();
					var incheon = $(this).find('incheon').text();
					var gwangju = $(this).find('gwangju').text();
					var ulsan = $(this).find('ulsan').text();
					var seoul = $(this).find('seoul').text();
					var busan = $(this).find('busan').text();
					output += '<tr><td>'+daegu+'</td><td>'+incheon+'</td><td>'+gwangju+'</td><td>'+ulsan+'</td><td>'+seoul+'</td><td>'+busan+'</td></tr>';
				
				});
					output +='<table>';
					$('body').append(output);
			}
		});
	});

</script>
</body>
</html>