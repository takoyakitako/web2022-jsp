<!doctype html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>

<form action="4-5.jsp">
    <table>
        <tr>
            <td>아이디</td>
            <td><input name="id"></td>
        </tr>

        <tr>
            <td>비밀번호</td>
            <td><input type="password"></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
                <input type="radio" value="남" checked>남
                <input type="radio" value="여">여
            </td>
        </tr>
        <tr>
            <td>가입경로</td>
            <td>
                <select>
                    <option value="웹검색" selected>웹검색</option>
                    <option value="지인소개">지인소개</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>주소지</td>
            <td>
                <select size="4">
                    <option selected>서울</option>
                    <option value="경기">경기</option>
                    <option>인천</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>메모</td>
            <td>
                <textarea rows="4"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="가입">
</form>

</body>
</html>