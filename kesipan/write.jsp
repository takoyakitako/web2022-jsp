<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script language="javascript">
	// 자바 스크립트 시작 
	function writeCheck() {
		var form = document.writeform;
		if (!form.name.value) {
			alert("이름을 적어주세요");
			form.name.focus();
			return;
		}
		if (!form.title.value) {
			alert("제목을 적어주세요");
			form.title.focus();
			return;
		}
		if (!form.memo.value) {
			alert("내용을 적어주세요");
			form.memo.focus();
			return;
		}
		form.submit();
	}
</script>

<%
String action = "writeOk.jsp";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 작성</title>
</head>
<body>
<form action="<%=action%>" method="post">
	<table>
		<tr>
			<td>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr
						style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
						<td width="5"><img src="img/table_left.gif" width="5"
							height="30" /></td>
						<td>글쓰기</td>
						<td width="5"><img src="img/table_right.gif" width="5"
							height="30" /></td>
					</tr>
				</table>
				<table>
				
				<tr>
						<td>&nbsp;</td>
						<td align="center">번호</td>
						<td><input name="num" size="50" maxlength="100"></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td align="center">제목</td>
						<td><input name="title" size="50" maxlength="100"></td>
						<td>&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td align="center">이름</td>
						<td><input name="name" size="50" maxlength="50"></td>
						<td>&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td align="center">내용</td>
						<td><textarea name="memo" cols="50" rows="13"></textarea></td>
						<td>&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4"></td>
					</tr>
					<tr height="1" bgcolor="#82B5DF">
						<td colspan="4"></td>
					</tr>
					<tr align="center">
						<td>&nbsp;</td>
						<td colspan="2"><input type=submit
							onclick="location.href='writeOk.jsp'" value="등록"> <input
							type=submit value="취소">
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>