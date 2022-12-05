<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<table border="1">
<tr>
	<td>선수이름</td>
	<td>포지션</td>
	<td>팀이름</td>
	<td>경기장 이름</td>
	<td>좌석 수</td>
</tr>
<%
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select p.player_name, p.player_position, t.team_name, s.stadium_name, TO_CHAR(s.seat_count, 'fm999,999,999,990') from tbl_player_20221205 p, tbl_team_20221205 t, tbl_stadium_20221205 s where s.seat_count >= 30000 and p.team_id = t.team_id and s.stadium_id = t.stadium_id");
	while(rs.next()){
		String position = rs.getString(2);
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
		 <td><%=position %></td>
		 <td><%=rs.getString(3) %></td>
		 <td><%=rs.getString(4) %></td>
		 <td><%=rs.getString(5) %>개</td>
		 
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
</html>