<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<% 

response.setHeader("Cache-Control", "no-store,must-revalidate"); //	HTTP 1.1
response.setHeader("Pragma","no-cache");  // less than HTTP 1.1
response.setHeader("Expires","0");  //PROXIES

if(session.getAttribute("username") == null){
	response.sendRedirect("login.jsp");
}

%>

<iframe width="560" height="315" src="https://www.youtube.com/embed/OuBUUkQfBYM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>