<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String mode = request.getParameter("mode");
		String playerno = request.getParameter("playerno");
		String playername = request.getParameter("playername");
		String position = request.getParameter("position");
		String date = request.getParameter("date");
		String team = request.getParameter("team");
		
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			switch(mode){
				case "insert":
					String sql = String.format("insert into tbl_player_20221205 values('%s', '%s', '%s', '%s', '%s')",playerno, playername, position, date, team);
					int rs = stmt.executeUpdate(sql);
				%>
				<jsp:include page = "list.jsp" />
				<%
				break;
				
			}
			stmt.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
			
			
	%>
</body>
</html>