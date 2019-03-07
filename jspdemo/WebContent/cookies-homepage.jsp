<html>


<body>
<h3>
Training Portal 
</h3>

<!-- reading fav lan cookie -->
<%
// the default ,..if no cookie set the fav lang
String favlan="Java";


//get the cookies from the browser

Cookie[] thecookies= request.getCookies();

//find our fav lang cookie 
if(thecookies!=null){
	for(Cookie temp:thecookies){
		if("myApp.favlan".equals(temp.getName())){
			favlan=temp.getValue();
			break;
		}
	}
}

%>


<!-- show personalised page -->

<h4>
New books for <%= favlan%>
</h4>
<ul>
<li> blah </li>
<li> blah </li>
</ul>

<h4>
News  for <%= favlan%>
</h4>
<ul>
<li> blah </li>
<li> blah </li>
</ul>

<a href="cookies-personalise-form.html">Personalise this page</a>

</body>

</html>