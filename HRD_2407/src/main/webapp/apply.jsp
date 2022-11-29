<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h2>수강신청</h2>
<form name="frm" action="action.jsp" method="post">
<input type="hidden" name="mode" value="update">
<table>
	<tr>
		<td>수강월</td>
		<td><input type="text" name="month">2022년03월 예)202203</td>
	</tr>
	<tr>
		<td >회원명</td>
		<td class=apply>
			<select id="cname" name="cname" onchange="num()">
				<option value="10001">홍길동
				<option value="10002">장발장
				<option value="10003">임꺽정
				<option value="20001">성춘향
				<option value="20002">이몽룡
			</select>
		</td>
	</tr>
	<tr>
		<td>회원번호</td>
		<td class=apply><input type="text" id="cno" name="cno" value="" readonly>예)100001</td>
	</tr>
	<tr>
		<td>강의장소</td>
		<td class=apply>
			<select name="area">
				<option value="서울본원">서울본원
				<option value="성남분원">성남분원
				<option value="대전분원">대전분원
				<option value="부산분원">부산분원
				<option value="대구분원">대구분원
			</select>
		</td>
	</tr>
	<tr>
		<td>강의명</td>
		<td class=apply>
			<select id="tcode" name="tcode" onchange="howmuch()">
				<option value="100">초급반
				<option value="200">중급반
				<option value="300">고급반
				<option value="400">심화반
			</select>
		</td>
	</tr>
	<tr>
		<td>수강료</td>
		<td class=apply><input type="text" id="price" name="price" readonly>원</td>
	</tr>
	<tr >
		<td colspan="2">
			<input type="submit" value="수강신청" onclick="check()">
			<input type="reset" value="다시쓰기">
		</td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="check.js"></script>
</body>
</html>
