<html>
<head>
<title>
Student Response
</title>
</head>
<body>

The student is confirmed !!!!  : 
First Name is :  <%=request.getParameter("firstname")%>
Last Name is :  ${param.LastName} 
Country is : ${param.country}

<!-- display the fav language logic -->
<ul>
<%
String[] langs=request.getParameterValues("favlan");
for (String temp:langs){
	out.println("<li>"+temp+"</li>");
}



%>





</ul>

</body>


</html>