<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 이거 사용하면 제이쿼리 사용가능 -->
<title>Insert title here</title>
</head>
<body>
<script>
	/* $(document).ready(function(){
		$.get("data.jsp",function(data){
			$('body').append(data);
		});
	});
	 */
	 
	 $(document).ready(function(){
			$.get("data.jsp",function(data){
				$('body').html(data);
			});
		});
	 
	/* $(document).ready(function(){
		$('body').load("data.jsp");
	});
	 */
</script>
</body>
</html>