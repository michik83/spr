<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
    
    
    <t:genericpage>
	<jsp:attribute name="header">
	<t:header/>
    <title>New/Edit Contact</title>
    <h3>Text</h3>
    </jsp:attribute>
	<jsp:attribute name="footer">
      <p id="copyright">Footer</p>
    </jsp:attribute>
	<jsp:body>
        <t:nagivation />
       <div align="center">
        <h1>Upload/Edit Stuff in DB</h1>
        <form:form action="saveContact" method="post" modelAttribute="contact">
        <table>
            <form:hidden path="id"/> 
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Telephone:</td>
                <td><form:input path="telephone" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                <button type="submit" class="btn btn-default" value="Save">Hochladen</button>
                </td>
            </tr>
        </table>
        </form:form>
    </div>
	
		<t:master />
    </jsp:body>
</t:genericpage>
    
    
