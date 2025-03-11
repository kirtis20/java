<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int num=Integer.parseInt(request.getParameter("num1"));
	
	int d=0;
	int sum=0;
	while(num!=0)
	{
		d=num%10;
		sum+=d;
		num=num/10;
	}
	out.print(sum);
%>
</body>
</html>
