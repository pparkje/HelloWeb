<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%! 
public String getStar() {
	String star ="";
	for(int i =0; i<10;i++) {
		for(int j =0; j<i+1; j++) {
			star += "*";
		}
		star += "<br />";
	}
	return star;
	
} 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Hello JSP</title>
</head>
<body>
<% 
	String star1 =getStar();
	out.print(star1);
%>
	
</body>
</html>