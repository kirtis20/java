<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, org.json.simple.JSONObject "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int uid = Integer.parseInt(request.getParameter("uid"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		JSONObject jsonResponse = new JSONObject();
		
		try{
			Class.forName("org.mariadb.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mydb","root","maria");

			
			PreparedStatement ps = connection.prepareStatement("insert into students values (?,?,?)");
			ps.setInt(1, uid);
			ps.setString(2, name);
			ps.setInt(3, age);
			
			int rows = ps.executeUpdate();
			if(rows > 0){
				jsonResponse.put("message","data added to db");

			}else{
				jsonResponse.put("message","data not added to db");

			}
		}
		catch (Exception e){
			System.out.print("Error occureed due to "+e.toString());
			e.printStackTrace();
			jsonResponse.put("message","error occured while inserting data");
		}
		
		response.getWriter().write(jsonResponse.toString());
		
		out.flush(); // returns to first page
	%>
</body>
</html>