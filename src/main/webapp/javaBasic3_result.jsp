<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// ※必要な処理を実装してください

// 入力値取得
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String age = request.getParameter("age");
String bloodType = request.getParameter("bloodType");



//名前
if (name.isEmpty()) {
	name = "名無し";
} else if (name.equals("ロボット")) {
	name = "こんにちは、ロボットさん!私と同じ名前ですね!";
}

if (age.isEmpty()) {
	
	age ="0";
}
else{
	int ag = Integer.parseInt(age);
	//年齢
	if (ag == 20) {
		age = "私と同い年なんですね!";
	} else if (ag > 20) {
		ag = ag - 20;
		age = "私よりも" + ag + "歳年上ですね。";
	} else if (ag < 20) {
		ag = 20 - ag;
		age = "私よりも" + ag + "歳年下ですね。";
	}
	
}

//血液型
switch (bloodType) {

case "typeA":
	bloodType = "私もA型です!";
	break;
case "typeB":
	bloodType = "B型の人と話すのは初めてです。";
	break;
case "typeO":
	bloodType = "私の父がO型です。";
	break;
case "typeAB":
	bloodType = "私の母がAB型です。";
	break;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
	<h1>Java基礎 - 演習問題3</h1>

	<h2>ロボットからの返信</h2>
	<div>
		<!-- 必要に応じて処理を変更してください  -->
		<p><%=name%></p>
		<p><%=age%></p>
		<p><%=bloodType%></p>
	</div>
	<a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>