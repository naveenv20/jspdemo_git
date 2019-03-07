<%@ page import="java.util.*" %>
<html>
<body>
<!-- Step 1 create html  -->
<form action="todo-demo.jsp">
Add new item  : <input type="text" name="theItem">
<input type="submit" value="Submit">
</form>
<br/>
<!-- step 2 add new item to to do list -->
<%
//get to do items from the session
List<String> items= (List<String>) session.getAttribute("myToDoist");
//if to do items doesnt exist create one
if(items==null){
	items=new ArrayList<String>();
	session.setAttribute("myToDoist", items);
}
//see if there is form data to add
String theItem=request.getParameter("theItem");
if(theItem!=null&& (!theItem.trim().equals(""))){
	items.add(theItem);
}
%>
<!-- step 3 display all to do list from session  -->
<hr>
<b>To do list</b>
<ol>
<%
for(String temp:items){
	out.println("<li>"+temp+"</li>");
}
%>
</ol>
</body>
</html>