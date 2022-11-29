<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>

</head>
<body>
<% 

String mode = request.getParameter("mode");
String month = request.getParameter("month");
String cname = request.getParameter("cname");
String cno = request.getParameter("cno");
String area = request.getParameter("area");
String tcode = request.getParameter("tcode");
String price = request.getParameter("price");


try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	switch(mode){
	case "insert" :
		String sql = String.format("insert into tbl_class_202201 values()"
	}
	stmt.close();
	con.close();
	}catch(Exception e){
		e.printStackTrace();
}
%>
</body>
</html>