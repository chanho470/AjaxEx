<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	$(document).ready(function(){
		$.ajax({
			url:'http://apis.data.go.kr/1262000/TravelBanService/getTravelBanList?serviceKey=M6cfRHF%2B6b0RTTEMr159mR72nOTS75wUnyPYPydy3%2BXPeahtW66ZPxW9pWq%2F5nkY%2FgYwTxUlzoM9l%2FIoTwrssQ%3D%3D&numOfRows=10&pageNo=1&countryName=%EA%B0%80%EB%82%98&countryEnName=Ghana',
			success:function(data){
				$(data).find('item').each(function(){
					var banNote = $(this).find('banNote').text();
					var countryName = $(this).find('countryName').text();
					var imgUrl = $(this).find('imgUrl').text();
					
					$('<p></p>').text(countryName+":"+banNote).appendTo('body');
					$('body').append('<img src ="'+imgUrl+'" alt ="해당 국가 이미지 없음" width ="100"/></p>');
				});
			}
		});
	});

</script>

</body>
</html>