<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>

<% 
response.setHeader("Cache-Control", "no-store,must-revalidate");
response.setHeader("Pragma","no-cache");  // less than HTTP 1.1
response.setHeader("Expires","0");  //PROXIES

if(session.getAttribute("username") == null){
	response.sendRedirect("login.jsp");
}

%>
Welcome  ${username}

<a href="videos.jsp">Videos page</a>



<form action = "fileUpload" method="post" enctype="multipart/form-data">
<input type="file" name="file" multiple/>
<input type="submit" ></form>


<form action = "Logout">
<input type="submit" value="logout"></form>

</body>
</html>