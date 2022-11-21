<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>

</head>
<body>
<table border="1">
<tr>
<td>후보번호</td>
<td>성명</td>
<td>소속정당</td>
<td>학력</td>
<td>주민번호</td>
<td>지역구</td>
<td>대표전화</td>
</tr>
<% 
try{
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
   Statement stmt = con.createStatement();
   ResultSet rs = stmt.executeQuery("select M_NO, M_NAME, P_NAME, P_SCHOOL, M_JUMIN, M_CITY, P_TEL1, P_TEL2, P_TEL3 from TBL_PARTY_202005 PARTY, TBL_MEMBER_202005 MEMBER WHERE PARTY.P_CODE = MEMBER.P_CODE");
   while(rs.next()){
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%>-<%=rs.getString(8)%>-<%=rs.getString(9)%></td>
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
</body>
</html>