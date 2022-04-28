<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%
request.setCharacterEncoding("UTF-8");
// 入力値を取得
String pro1 = request.getParameter("product1");
String pro2 = request.getParameter("product2");
String amt1 = request.getParameter("amount1");
String amt2 = request.getParameter("amount2");
String rank = request.getParameter("rank");

if (ParamUtil.isNullOrEmpty(amt1)) {
amt1 = "0";
}
if(ParamUtil.isNullOrEmpty(amt2)){
	amt2 = "0";
}

// 数値に変換
int amount1 = Integer.parseInt(amt1);
int amount2 = Integer.parseInt(amt2);

// ポイントを定義
int point1 = 0;
int point2 = 0;

// メソッドを呼んでポイントを取得  
if(ParamUtil.isNullOrEmpty(rank)){
	point1 = ParamUtil.getPoint(amount1);	
	point2 = ParamUtil.getPoint(amount2);	
}
else{
	point1 = ParamUtil.getPoint(amount1, rank);
	point2 = ParamUtil.getPoint(amount2, rank);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
	text-align: right;
}
</style>
</head>
<body>
	<h1>Java基礎 - 演習問題5(発展)</h1>

	<h2>計算結果</h2>

	<table border="1">
		<tr>
			<th>商品</th>
			<th>金額</th>
			<th>ポイント</th>
		</tr>
		<tr>
			<td><%=pro1%></td>
			<td class="right"><%=amt1%></td>
			<td class="right"><%=point1%></td>
		</tr>
		<tr>
			<td><%=pro2%></td>
			<td class="right"><%=amt2%></td>
			<td class="right"><%=point2%></td>
		</tr>
	</table>

	<a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>