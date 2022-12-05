<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page = "header.jsp" />
</head>
<body>
<form>
<table border="1">
	<tr>
		<td>선수id</td>
		<td>선수이름</td>
		<td>표지션</td>
		<td>선수등록일</td>
		<td>팀id</td>
	</tr>
<%
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select p.player_id, p.player_name, p.player_position, p.player_date, t.team_name from tbl_player_20221205 p, tbl_team_20221205 t where p.team_id = t.team_id order by p.player_id");
	while(rs.next()){
		String position = rs.getString(3);
		switch(position){
		case "GF":
			position = "골키퍼";
			break;
		case "DF":
			position = "수비수";
			break;
		case "MF":
			position = "미드필더";
			break;
		case "FW":
			position = "공격수";
			break;
		}
		
		%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=position %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
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
</body>

	<jsp:include page = "footer.jsp" />
</html>
