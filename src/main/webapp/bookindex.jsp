<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="java.sql.*"%>
<%@ page import="java.sql.* , javax.sql.* , javax.naming.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

try{
	int n ;
	String n1;
	InitialContext ic = new InitialContext();
	DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
	Connection conn = ds.getConnection();
	//서버 연결 파트
	
	PreparedStatement pstmt = conn.prepareStatement("select bookid , bookname from BOOK where bookid = ?");
	pstmt.setInt(1,Integer.parseInt(request.getParameter("id")));
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	n = rs.getInt(1);
	n1 =  rs.getString(2);
	
	System.out.print(n1);
	/* out.print(rs.getString(1)+":"+rs.getString(2)+"<br>"); */
	out.print(n+":"+ n1 +"<br>");
	
}
catch(Exception e){

}
%>

</body>
</html>