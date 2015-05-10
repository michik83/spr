<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<t:genericpage>
	<jsp:attribute name="header">
	<t:header/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <title>Upload File to Database</title>
    <h3>Text</h3>
</jsp:attribute>
	<jsp:attribute name="footer">
      <p id="copyright">Footer</p>
    </jsp:attribute>
	<jsp:body>
<t:nagivation />
<div class="container">

<f:form modelAttribute="uploadItem" method="POST" enctype="multipart/form-data"
				action="upload">

 <label for="email">File to Upload:</label>
    <f:input type="file" class="form-control" id="file" name="file" path="file"/>
    
    <script type="text/javascript" src="<c:url value="/resources/js/imagepreview.js" />"></script>
    <div id="imagePreview"></div>
    

<div class="form-group">
    <label for="pwd">Name:</label>
    <f:input type="text" class="form-control" id="name" name="name" path="name"/>
  </div>
   <button type="submit" class="btn btn-default" value="upload">Hochladen</button>
</f:form>

	</div>
<t:master />

<br><br>
 </jsp:body>
</t:genericpage>