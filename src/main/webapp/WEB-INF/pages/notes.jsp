<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NoteApp</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<style>
		.linkClass {
			background-color: #F5F5F5;
			font-family: Comic Sans;
			font-size: 25px;
		}
	</style>
	<style>		
		.table1 {
			font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
			font-size: 14px;
			border-radius: 10px;
			border-spacing: 0;
			text-align: center;
		}
		.th1 {
			background: #454545;
			color: white;
			text-shadow: 1px 1px 1px #2D2020;
			padding: 10px 20px;
		}
		.th1, .td1 {
			border-style: solid;
			border-width: 1px 1px 1px 1px;
			border-color: #454545;
		}
		.th1:first-child, .td1:first-child {
			text-align: left;
		}
		.th1:first-child {
			border-top-left-radius: 10px;
		}
		.th1:last-child {
			border-top-right-radius: 10px;
			border-right: none;
		}
		.td1 {
			padding: 10px 20px;
			background: #FAFAFA;
		}
		.tr1:last-child .td1:first-child {
			border-radius: 0 0 0 10px;
		}
		.tr1:last-child .td1:last-child {
			border-radius: 0 0 10px 0;
		}
		.tr1 .td1:last-child {
			border-right: none;
		}
	</style>
	<style>
		.conf {
			width: 70px;
			font-size: 14px;
			font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
			color: white;
			padding: 1px 8px 1px 8px;
			border: 0px solid #A7D1C5;
			background: #454545;
			border-radius: 7px;
		}
		.conf:active {
			background: #AFDBCE;
			outline: 0;
			outline-offset: 0;
		}
		.conf:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.uncompletednotes {
			width: 230px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #FAFAFA;
			border-radius: 9px;
		}
		.uncompletednotes:active {
			background: #EDEDED;
			outline: 0;
			outline-offset: 0;
		}
		.uncompletednotes:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.uncompletednotes1 {
			width: 230px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #DBDCFF;
			border-radius: 9px;
		}
		.uncompletednotes1:active {
			background: #CACAEB;
			outline: 0;
			outline-offset: 0;
		}
		.uncompletednotes1:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.allnotes {
			width: 130px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #FAFAFA;
			border-radius: 9px;
		}
		.allnotes:active {
			background: #EDEDED;
			outline: 0;
			outline-offset: 0;
		}
		.allnotes:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.allnotes1 {
			width: 130px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #DBDCFF;
			border-radius: 9px;
		}
		.allnotes1:active {
			background: #CACAEB;
			outline: 0;
			outline-offset: 0;
		}
		.allnotes1:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.addnote {
			width: 180px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #DBDCFF;
			border-radius: 9px;
		}
		.addnote:active {
			background: #CACAEB;
			outline: 0;
			outline-offset: 0;
		}
		.addnote:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.completednotes {
			width: 200px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #FAFAFA;
			border-radius: 9px;
		}
		.completednotes:active {
			background: #EDEDED;
			outline: 0;
			outline-offset: 0;
		}
		.completednotes:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
		.completednotes1 {
			width: 200px;
			font-size: 20px;
			font-family: Courier New;
			padding: 1px 8px 1px 8px;
			border: 1px solid #E6E6E6;
			background: #DBDCFF;
			border-radius: 9px;
		}
		.completednotes1:active {
			background: #CACAEB;
			outline: 0;
			outline-offset: 0;
		}
		.completednotes1:focus {
			outline: 0;
			outline-offset: 0;
		}
	</style>
	<style>
	.on {
			width: 37px;
			font-size: 14px;
			font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
			color: white;
			padding: 1px 8px 1px 8px;
			border: 0px solid #A7D1C5;
			background: #454545;
			border-radius: 7px;
	}
	.on:active {
			background: #AFDBCE;
			outline: 0;
			outline-offset: 0;
	}
	.on:focus {
			outline: 0;
			outline-offset: 0;
	}
  </style>
   <style>
	.off {
			width: 39px;
			font-size: 14px;
			font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
			color: white;
			padding: 1px 8px 1px 8px;
			border: 0px solid #A7D1C5;
			background: #454545;
			border-radius: 7px;
	}
	.off:active {
			background: #AFDBCE;
			outline: 0;
			outline-offset: 0;
	}
	.off:focus {
			outline: 0;
			outline-offset: 0;
	}
  </style>
</head>
<body>
	<center>
		<table>
			<tr>
				<!--
				<td><i class="linkClass"><a href="/testnotes/completed">[Completed Notes]</a></i></td>
				<td>---</td>
				<td><i class="linkClass"><a href="/testnotes/all">[All Notes]</a></i></td>
				<td>---</td>
				<td><i class="linkClass"><a href="/testnotes/uncompleted">[Uncompleted Notes]</a><i></td>
				-->
				<td>
					<form name="completed" method="get" action="completed">
						<input type="submit" value="Completed Notes" class="completednotes${completed}">
					</form>
				</td>
				<td>
				</td>
				<td>
					<form name="all" method="get" action="all">
						<input type="submit" value="All Notes" class="allnotes${all}">
					</form>
				</td>
				<td>
				</td>
				<td>
					<form name="uncompleted" method="get" action="uncompleted">
						<input type="submit" value="Uncompleted Notes" class="uncompletednotes${uncompleted}">
					</form>
				</td>
			</tr>
		</table>
		<table>
		<tr>
			<td colspan="2" align="center"><b>DATE FILTER: </b><b>[${datestring}]</td>
			</tr>
			<tr>
				<td>
					<form name="onDateFilter" method="get" action="ondatefilter">
						Введите дату в формате "yyyy-mm-dd":
						<input type="text" size="10" name="String" required="true">
						<input type="submit" value="ON" class="on">
					</form>
				</td>
				<td><form name="offDateFilter" method="post" action="offdatefilter">
					<input type="submit" value="OFF" class="off">
				</form></td>
			</tr>
		</table>
		<table border="1" width="60%" class="table1">
			<tr class="tr1">
				<th class="th1"><b>ID</b></th>
				<th class="th1"><b>Text</b></th>
				<th class="th1"><b>Completed</b></th>
				<th class="th1"><b>Date</b></th>
				<th colspan="2" class="th1"><b>Configuration</b></th>
			</tr>
		  <c:forEach items="${notes}" var="note">
			<tr width="700px" class="tr1">
				<td align="center" valign="top" class="td1">${note.getId()}</td>
				<td width="170px" valign="top" class="td1">${note.getText()}</td>
				<td align="center" valign="top" class="td1">${note.getIsCompleted()}</td>
				<td align="center" valign="top" class="td1">${note.getCreateDate()}</td>
				<!--
				<td align="center" valign="top"><a href="/testnotes/edit?id=${note.getId()}&page=${page}">Edit</a></td>
				<td align="center" valign="top"><a href="/testnotes/delete?id=${note.getId()}&page=${page}">Delete</a></td>
				-->
				<td align="center" valign="top" class="td1"><form name="editnote" method="get" action="edit">
					<input type="hidden" name="id" value="${note.getId()}">
					<input type="hidden" name="page" value="${page}">
					<input type="submit" class="conf" value="Edit">
				</form></td>
				<td align="center" valign="top" class="td1"><form name="deletenote" method="get" action="delete">
					<input type="hidden" name="id" value="${note.getId()}">
					<input type="hidden" name="page" value="${page}">
					<input type="submit" class="conf" value="Delete">
				</form></td>
			</tr>
		  </c:forEach>
		</table>
		<table>
			<tr>
				<td><h4><a href="/testnotes/notes?page=${page-1}">previous</a></h4></td>
				<td><h3><b>Current page: </b>${page}</h3></td>
				<td><h4><a href="/testnotes/notes?page=${page+1}">next</a></h4></td>
			</tr>
		</table>
		<!--
		<h3><a href="/testnotes/addnote?page=${page}">Add note</a></h3>
		-->
		<form name="addnote" method="get" action="addnote">
			<input type="hidden" name="page" value="${page}">
			<input type="submit" value="Add New Note" class="addnote">
		</form>
	</center>
</body>
</html>