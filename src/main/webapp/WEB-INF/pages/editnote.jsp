<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
  <title>NotesApp</title>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <style>
   .textareastyle1 {
    width: 80%; /* Ширина поля в процентах */
    height: 100; /* Высота поля в пикселах */
    resize: none; /* Запрещаем изменять размер */
   } 
  </style>
  <style>
	.textareastyle2 {
		disabled: true;
		width: 150;
		height: 20;
		resize: none;
	}
  </style>
  <style>
	.textareastyle3 {
		disabled: true;
		width: 180;
		height: 20;
		resize: none;
	}
  </style>
  <style>
	.submit {
			width: 85px;
			font-size: 14px;
			font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
			color: white;
			padding: 1px 8px 1px 8px;
			border: 0px solid #A7D1C5;
			background: #6AE672;
			border-radius: 7px;
		}
	.submit:active {
			background: #66DE6E;
			outline: 0;
			outline-offset: 0;
		}
	.submit:focus {
			outline: 0;
			outline-offset: 0;
		}
  </style>
</head>
<body>
<center>
<h2>Edit Note</h2>
<form:form method="post" action="editnote?id=${id}&page=${page}">
  <table>
	<tr>
		<td><form:label path="text"><b>Write note text here: </b></form:label></td>
		<td><form:textarea class="textareastyle1" path="text" placeholder="note text...(max 250 chars)" wrap="hard" cols="51" rows="5" maxlength="250"></form:textarea></td>
	</tr>
	<tr>
		<td><form:label path="isCompleted"><b>Is completed: </b></form:label></td>
		<td><form:radiobutton path="isCompleted" value="true" />True<form:radiobutton path="isCompleted" value="false" />False</td>
	</tr>
	<tr>
		<td><form:label path="id"><b>ID: </b></form:label></td>
		<td><form:textarea class="textareastyle2" path="id" disabled="true" readonly="true" /></td>
	</tr>
	<tr>
		<td><form:label path="createDate"><b>Create Date: </b></form:label></td>
		<td><form:textarea class="textareastyle3" path="createDate" disabled="true" readonly="true" /></td>
	</tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="Accept" class="submit"/>
      </td>
    </tr>
  </table>
</form:form>
</center>
</body>
</html>