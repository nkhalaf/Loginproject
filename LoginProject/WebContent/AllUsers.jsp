<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.asal.training.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <style type="text/css">
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<%ArrayList<user> users = (ArrayList)request.getAttribute("users");
%>
<table class="table table-hover"   border="1">
<tr>
<th>userId</th>
<th>userName</th>
<th>userPaswword</th>
<th>userGender</th>
<th>userBirthdate</th>
<th>userPhone</th>
<th>user Adress</th>
</tr>
<%   for(int i=0; i<users.size();i++){
%>
<tr>
<td><%=users.get(i).getId()%></td>
<td><%=users.get(i).getName() %></td>
<td><%=users.get(i).getPassword() %></td>
<td><%=users.get(i).getGender()%></td>
<td><%=users.get(i).getbDay()%></td>
<td><%=users.get(i).getPhone() %></td>
<td><%=users.get(i).getAdress() %></td>
</tr>
<%	
}	
	%>

</table>
</body>
</html>