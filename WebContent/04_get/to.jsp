<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	String ans =request.getParameter("ans");
	
	String result =null;
	
	if (ans ==null || ans.equals("")) {
		String script = "<script>";
		script += "alert('값이 없습니다.');";
		script += "history.back();";
		script += "</script>";
		
		out.print(script);
		return;
	}
	int user_select =Integer.parseInt(ans);
	if( user_select == 300) {
		result = "정답입니다.";
	} else {
		result ="정답이 아닙니다.";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
</head>
<body>
	<h1>응답결과</h1>
	<h2>선택한 값: <%=ans%></h2>
	<h3><%=result%></h3>
</body>
</html>