<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

int n = Integer.parseInt(request.getParameter("val"));
for(int i=1 ;i<=10;i++){
	out.print(i*n+"<br>");
}
%>
</body>
</html>