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
	<section>
		<h1>선수 등록</h1>
		<form method = "post" action="action.jsp" name="frm">
		<input type = "hidden" name = "mode" value ="insert">
		<table border = "1">
			<tr>
				<td>선수 ID</td>
				<td><input type = "text" name = "playerno"></td>
			</tr>
			
			<tr>
				<td>선수이름</td>
				<td><input type = "text" name = "playername"></td>
			</tr>
			
			<tr>
				<td>포지션</td>
				<td name = "position">
					<input type = "radio" name = "position" value = "GF">골키퍼
					<input type = "radio" name = "position" value = "DF">수비수
					<input type = "radio" name = "position" value = "MF">미드필더
					<input type = "radio" name = "position" value = "FW">공격수
				</td>
			</tr>
			
			<tr>
				<td>선수등록일</td>
				<td><input type = "text" name = "date"></td>
			</tr>
			
			<tr>
				<td>소속팀</td>
				<td>
					<select name = "team">
						<option value = "K00">무소속</option>
						<option value = "K01">울산현대</option>
						<option value = "K02">삼성블루윙즈</option>
						<option value = "K03">스틸러스</option>
						<option value = "K04">유나이티드</option>
						<option value = "K05">현대모터스</option>
						<option value = "K06">부산소마고</option>
						<option value = "K07">드래곤즈</option>
						<option value = "K08">일화천마</option>
						<option value = "K10">FC서울</option>			
					</select>
				</td>
			</tr>
			
			<td colspan="2">
				<input type = "submit" value = "추가" onclick="check()"></input>
				<input type = "reset" value = "취소"></input>
			</td>
			
		</table>
		</form>
	</section> 
	<script type="text/javascript" src="check.js"></script>
</body>
</html>