<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
<script type="text/javascript">
		function check(){
			alert("call received");
			
			 $.ajax({
				 type:"post",
				 url: "ajaxprocessdb.jsp",
				 data:"uid="+$("#uid").val()+"&name="+$("#name").val()+"&age="+$("#age").val(),
				 success: function(result){
				    $("#output").append(result);
				  },
				  error:function(){
					  alert("error in alert");
				  }
			 });
			 
		}	
	</script>

</head>
<body>
		UID: <input id="uid" type='text' name="uid" value="" /> <br />
		Name: <input id="name" type='text' name="name" value="" /> <br />
		age: <input id="age" type="text" name="age" value="" /> <br /> 
		<input type="button" onClick="check()" value="Insert record" />
	<br />
	<br />
	<div id="output"></div>
</body>
</html>