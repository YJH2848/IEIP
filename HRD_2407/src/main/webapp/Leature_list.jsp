<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form>
<table border="1">
<tr>
<td>강사코드</td>
<td>강사명</td>
<td>강의명</td>
<td>수강료</td>
<td>강사취득일</td>
</tr>

<% 
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from tbl_teacher_202201");
	while(rs.next()){
		String date = rs.getString(5);
				%>
				<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td>$<%=rs.getString(4)%></td>
				<td><%=date.substring(0,4)%>년<%=date.substring(4,6)%>월<%=date.substring(6,8)%>일</td>
				</tr>
				<%
		}
	stmt.close();
	con.close();
	}catch(Exception e){
		e.printStackTrace();
}
%>
</table>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>