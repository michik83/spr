<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:genericpage>
	<jsp:attribute name="header">
	<t:header/>
    <title>JAVA JDBC</title>
    <h3>Text</h3>
    </jsp:attribute>
	<jsp:attribute name="footer">
      <p id="copyright">Footer</p>
    </jsp:attribute>
	<jsp:body>
        <t:nagivation />
        <div class="container"">
		<h1>Contact List</h1>
		<h3>
			<a href="newContact">Neuer Kontakt</a>
		</h3>
		<table border="1">
			<th>No&nbsp;&nbsp;</th>
			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Telephone</th>
			<th>Action</th>

			<c:forEach var="contact" items="${listContact}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${contact.name}</td>
					<td>${contact.email}</td>
					<td>${contact.address}</td>
					<td>${contact.telephone}</td>
					<td><a href="editContact?id=${contact.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteContact?id=${contact.id}">Delete</a>
					</td>

				</tr>
			</c:forEach>
		</table>
	</div>
	
		<t:master />
    </jsp:body>
</t:genericpage>