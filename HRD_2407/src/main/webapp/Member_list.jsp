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
<section>
<h1>회원정보조회</h1>
</section>
<form>
	<table border="1">
		<tr>
			<td>수강월</td>
			<td>회원번호</td>
			<td>회원명</td>
			<td>강의명</td>
			<td>강의장소</td>
			<td>수강표</td>
			<td>등급</td>
		</tr>
<% 
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select class.regist_month as month, member.c_no, member.c_name as name, teacher.class_name as clname, class.class_area as area, class.tuition as tuition, member.grade as grade  from tbl_member_202201 member join tbl_class_202201 class on(member.c_no = class.c_no) join tbl_teacher_202201 teacher on(class.teacher_code=teacher.teacher_code)");
	while(rs.next()){
				%>
				<tr> 
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				</tr>
				<%
		}
	stmt.close();
	con.close();
	}catch(Exception e){
		e.printStackTrace();
}
%>
<jsp:include page="footer.jsp"></jsp:include>
	</table>
</form>
</body>
</html>