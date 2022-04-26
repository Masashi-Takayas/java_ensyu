<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// ※必要な処理を実装してください
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
String operator = request.getParameter("operator");
// 入力値取得
String messe = "数値を入力してください";

int number = 0;

// 表示するメッセージ用の変数

// メッセージ作成

if (num1 == "" && num2 == "") {
	messe = "数値が両方とも未入力です";
} else if (num1 == "" || num2 == "") {
	messe = "数値を入力してください";

} else if (!(num1 == "" && num2 == "")) {

	int n1 = Integer.parseInt(num1);
	int n2 = Integer.parseInt(num2);

	switch (operator) {
	case "add":
		number = n1 + n2;
		messe = n1 + "+" + n2 + "=" + number;
		break;
	case "sub":
		number = n1 - n2;
		messe = n1 + "-" + n2 + "=" + number;
		break;
	case "mul":
		number = n1 * n2;
		messe = n1 + "×" + n2 + "=" + number;
		break;
	case "div":
		number = n1 / n2;
		messe = n1 + "÷" + n2 + "=" + number;
		break;
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
	width: 80px;
}
</style>
</head>
<body>

	<h1>Java基礎 - 演習問題3(発展)</h1>
	<h2>四則演算</h2>

	<p><%=messe%></p>
	<!-- メッセージの表示  -->

	<form action="javaBasicDev3.jsp" method="post">
		<input type="number" min="1" max="999999" class="number" name="num1">
		<select name="operator">
			<option value="add">＋</option>
			<option value="sub">ー</option>
			<option value="mul">×</option>
			<option value="div">÷</option>
		</select> <input type="number" min="1" max="999999" class="number" name="num2">
		<button type="submit">計算</button>
	</form>
</body>
</html>