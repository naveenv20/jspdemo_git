<html>
<head>
<title>
Confirmation
</title>
<%
//read form data
String favlan=request.getParameter("favprglang");	
//create cookie
Cookie thecookie =new Cookie("myApp.favlan",favlan);

//set the life span
thecookie.setMaxAge(60*60*5);//in seconds

//send the cookie to browser

response.addCookie(thecookie);

%>
</head>

<body>
Thanks ! we set the fav language to : ${param.favprglang}
<br/><br/>

<a href="cookies-homepage.jsp" > Return to home page</a> 

</body>
</html>