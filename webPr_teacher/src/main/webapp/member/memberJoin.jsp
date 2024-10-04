<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>회원가입페이지</TITLE>
<link href="../css/style.css" type="text/css" rel="stylesheet">
<script>
const email = /[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]$/i;
//alert(email.test("hello5"email.com));
// 버튼을 눌렀을 때 check함수 작동
function check(){
	
	//유효성 검사하기	
	var fm = document.frm;	
	
	
	if (fm.memberId.value ==""){
		alert("아이디를 입력해주세요");
		fm.memberId.focus();
		return;
	}else if (fm.memberPwd.value ==""){		
		alert("비밀번호를 입력해주세요");
		fm.memberPwd.focus();
		return;
	}else if (fm.memberPwd2.value ==""){
		alert("비밀번호2를 입력해주세요");
		fm.memberPwd2.focus();
		return;
	}else if (fm.memberPwd.value != fm.memberPwd2.value){
		alert("비밀번호가 일치하지 않습니다.");
		fm.memberPwd2.value="";
		fm.memberPwd2.focus();
		return;
	}else if (fm.memberName.value ==""){
		alert("이름을 입력해주세요");
		fm.memberName.focus();
		return;
	}else if (fm.memberEmail.value ==""){
		alert("이메일을 입력해주세요");
		fm.memberEmail.focus();
		return;
	}else if (email.test(fm.memberEmail.value)== false){
		alert("이메일 형식이 올바르지 않습니다.");
		fm.memberEmail.value="";
		fm.memberEmail.focus();
		return;
	}else if (fm.memberPhone.value ==""){
		alert("연락처를 입력해주세요");
		fm.memberPhone.focus();
		return;
	}else if (fm.memberBirth.value ==""){
		alert("생년월일을 입력해주세요");
		fm.memberBirth.focus();
		return;
	}else if (hobbyCheck() ==false)  {	
		alert("취미를 한개 이상 선택해주세요");	
		return;
	}	
	
	var ans = confirm("저장하시겠습니까?");
	
	if (ans == true){
		//alert("이동할 정보등록할 차례입니다.");
		//action="./memberJoinAction.jsp" method="post"  html 홈태그 기능을 자바스크립트로 제어
		
		fm.action="<%=request.getContextPath()%>
	/member/memberJoinAction.jsp";
			fm.method = "post";
			fm.submit();
		}
		return; //리턴에 값을 안쓰면 그냥 멈춤 종료
	}

	function hobbyCheck() {

		var arr = document.frm.memberHobby; //문서객체안에 폼객체 안에 input객체 선언
		var flag = false; //체크유무 초기값 false 선언

		for (var i = 0; i < arr.length; i++) { //선택한 여러값을 반복해서 출력
			if (arr[i].checked == true) { //하나라도 선택했다면 true값 리턴
				flag = true;
				break;
			}
		}

		/* if (flag== false){
			alert("취미를 한개 이상 선택해주세요");
			return false;
		}	 */
		return flag;
	}
</script>
</HEAD>

<BODY>
	<header>
		<h3>회원가입 페이지</h3>
		<hr>
	</header>

	<nav></nav>

	<section>
		<article >
			<form name="frm">
				
				<table width= "350px" board = "1" align="left">
					<tr>
						<th class="idcolor">아이디</th>
						<td><input type="text" name="memberId" maxlength="30"
							style="width: 200px;" value="" placeholder="아이디를 입력하세요">
						</td>
					</tr>
					<tr>
						<th class="idcolor">비밀번호</th>
						<td><input type="password" name="memberPwd" maxlength="30"
							style="width: 200px;" value="" placeholder="비밀번호를 입력하세요"></td>
					</tr>
					<tr>
						<th>비밀번호확인</th>
						<td><input type="password" name="memberPwd2" maxlength="30"
							style="width: 200px;" value="" placeholder="비밀번호를 확인 해주세요"></td>
					</tr>
					<tr>
						<th id="name">이름</th>
						<td><input type="text" name="memberName" maxlength="30"
							style="width: 200px;" placeholder="이름을 입력하세요"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="email" name="memberEmail" maxlength="30"
							style="width: 200px;" placeholder="이메일을 입력하세요"></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="number" name="memberPhone" maxlength="30"
							style="width: 200px;" placeholder="전화번호를 입력하세요"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><select name="memberAddr" style="width: 200px;">
								<option value="서울" selected>서울</option>
								<option value="대전">대전</option>
								<option value="부산">부산</option>
								<option value="인천">인천</option>
								<option value="광주">광주</option>
						</select></td>
					</tr>
					<tr>
						<th>성별</th>
						<td><input type="radio" name="memberGender" id="select1"><label
							for="select1">남성</label> <input type="radio" name="memberGender"
							id="select2"><label for="select2">여성</label></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="number" name="memberBirth" maxlength="8"
							style="width: 200px;" placeholder="생년월일을를 입력하세요">
							예)20240101</td>
					</tr>
					<tr>
						<th>취미</th>
						<td><input type="checkbox" name="memberHobby" id="check1"><label
							for="check1"></label>야구 <input type="checkbox" name="memberHobby"
							id="check2"><label for="check2"></label>축구 <input
							type="checkbox" name="memberHobby" id="check3"><label
							for="check3"></label>농구</td>
					</tr>
					<tr>
						<td colspan=2 style="text-align: center;">

							<button type="button" onclick="check();">저장하기</button>
						</td>
					</tr>
				</table>
			</form>
		</article>

	</section>
	<aside></aside>
	<footer> made by lee. </footer>
</BODY>
</HTML>
