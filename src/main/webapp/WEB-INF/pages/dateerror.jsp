<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NoteApp</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<style>
		.linkClass {
			font-color: red;
		}
	</style>
</head>
<body>
	<center>
		<h1 class="linkClass"> WRONG DATE ERROR!<br> MUST BE "yyyy-mm-dd" (2018-11-01 for example).<br> You wrote: ${date} </h1>
		<a href="/testnotes">Back to notes.</a>
	</center>
</body>
</html>