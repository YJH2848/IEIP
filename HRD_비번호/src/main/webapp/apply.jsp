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
		<h1>���� ���</h1>
		<form method = "post" action="action.jsp" name="frm">
		<input type = "hidden" name = "mode" value ="insert">
		<table border = "1">
			<tr>
				<td>���� ID</td>
				<td><input type = "text" name = "playerno"></td>
			</tr>
			
			<tr>
				<td>�����̸�</td>
				<td><input type = "text" name = "playername"></td>
			</tr>
			
			<tr>
				<td>������</td>
				<td name = "position">
					<input type = "radio" name = "position" value = "GF">��Ű��
					<input type = "radio" name = "position" value = "DF">�����
					<input type = "radio" name = "position" value = "MF">�̵��ʴ�
					<input type = "radio" name = "position" value = "FW">���ݼ�
				</td>
			</tr>
			
			<tr>
				<td>���������</td>
				<td><input type = "text" name = "date"></td>
			</tr>
			
			<tr>
				<td>�Ҽ���</td>
				<td>
					<select name = "team">
						<option value = "K00">���Ҽ�</option>
						<option value = "K01">�������</option>
						<option value = "K02">�Ｚ�������</option>
						<option value = "K03">��ƿ����</option>
						<option value = "K04">������Ƽ��</option>
						<option value = "K05">������ͽ�</option>
						<option value = "K06">�λ�Ҹ���</option>
						<option value = "K07">�巡����</option>
						<option value = "K08">��ȭõ��</option>
						<option value = "K10">FC����</option>			
					</select>
				</td>
			</tr>
			
			<td colspan="2">
				<input type = "submit" value = "�߰�" onclick="check()"></input>
				<input type = "reset" value = "���"></input>
			</td>
			
		</table>
		</form>
	</section> 
	<script type="text/javascript" src="check.js"></script>
</body>
</html>