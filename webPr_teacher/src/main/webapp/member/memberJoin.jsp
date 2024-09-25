<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE> 회원가입 </TITLE>
<link href="../css/style.css" type="text/css" rel="stylesheet">
</HEAD>
 <BODY>
<header><a href ="./memberJoin.jsp" style="text-decoration:none;">회원가입 페이지</a></header>
<nav> <a href="./memberLogin.jsp" style="text-decoration:none;">회원로그인 가기</a></nav>
<section>
	<article>	
	<form name="frm" action="./memberJoinAction.jsp" method="post">
		<table style="width:800px;">
			<tr>
				<th class="idcolor">아이디</th>
				<td>
				<input type="text" name="memberId" maxlength="30" style="width:200px;" value="" placeholder="아이디를 입력하세요">
				</td>
			</tr>
			<tr>
				<th class="idcolor">비밀번호</th>
				<td>
				<input type="password" name="memberPwd" maxlength="30" style="width:100px;">
				</td>
			</tr>
			<tr>
				<th>비밀번호확인</th>
				<td><input type="password" name="memberPwd2" maxlength="30" style="width:100px;"></td>
			</tr>
			<tr>
				<th id="name">이름</th>
				<td><input type="text" name="memberName" maxlength="30" style="width:200px;"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="memberEmail" maxlength="30" style="width:200px;"></td>
			</tr>		
			<tr>
				<th>연락처</th>
				<td><input type="number" name="memberPhone" maxlength="30" style="width:200px;"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<select name="memberAddr" style="width:100px;">
						<option value="서울">서울</option>
						<option value="대전" selected>대전</option>
						<option value="부산">부산</option>
						<option value="인천">인천</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
				<input type="radio" name="memberGender" value="남성">남성
				<input type="radio" name="memberGender" value="여성" checked>여성
				</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="number" name="memberBirth" maxlength="8" style="width:100px;"> 
				예)20240101</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
				<input type="checkbox" name="memberHobby" value="야구">야구
				<input type="checkbox" name="memberHobby" value="축구">축구
				<input type="checkbox" name="memberHobby" value="농구">농구
				</td>
			</tr>
			<tr>
				<td colspan=2 style="text-align:center;">
				<input type="submit" name="btn" value="회원정보 저장하기">
				<input type="reset" name="btn" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</article>	

</section>
<aside>
</aside>
<footer>
made by hji.
</footer>
</BODY>
</HTML>
