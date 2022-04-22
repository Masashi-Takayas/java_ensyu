<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
 
    String[] month = { "1月", "2月", "3月"};

    String[] productsClass = {"食品","飲料"};
    
    int[][] amount = {
    		{ 352000, 442000, 520000},
    		{ 278000, 342600, 380500}
    		};
    
    int [] sumMonthAmount = {amount[0][0]+amount[1][0],
    		amount[0][1]+amount[1][1],amount[0][2]+amount[1][2]};
    
    int []sumProductAmount = 
    		{amount[0][0]+amount[0][1]+amount[0][2],amount[1][0]+amount[1][1]+amount[1][2]};
    
    int total = sumProductAmount[0]+sumProductAmount[1];

    String sumTitle = "合計";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>
</head>
<body>
  <table>
  
      <tr>
      <th><%%></th>
      <th><%out.println(month[0]) ;%></th>
      <th><%out.println(month[1]) ;%></th>
      <th><%out.println(month[2]) ;%></th>
      <th><%out.println(sumTitle) ;%></th>
    </tr>
    
    <tr>
      <td><%out.println(productsClass[0]) ;%></td>
      <td><%out.println(amount[0][0]) ;%></td>
      <td><%out.println(amount[0][1]) ;%></td>
      <td><%out.println(amount[0][2]) ;%></td>
      <td><%out.println(sumProductAmount[0]) ;%></td>
    </tr>
    
    <tr>
      <td><%out.println(productsClass[1]) ;%></td>
      <td><%out.println(amount[1][0]) ;%></td>
      <td><%out.println(amount[1][1]) ;%></td>
      <td><%out.println(amount[1][2]) ;%></td>
      <td><%out.println(sumProductAmount[1]) ;%></td>
    </tr>

    <tr>
      <th><%out.println(sumTitle) ;%></th>
      <td><%out.println(sumMonthAmount[0]) ;%></td>
      <td><%out.println(sumMonthAmount[1]) ;%></td>
      <td><%out.println(sumMonthAmount[2]) ;%></td>
      <td><%out.println(total) ;%></td>
    </tr>
    
  </table>
</body>
</html>