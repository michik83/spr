<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<tags:nagivation />

	<div class="container">
		<form method="POST" enctype="multipart/form-data" action="upload">
			File to upload: <input type="file" name="file" id="file"><br /> Name:
			<input type="text" name="name" id="name"><br /> <br /> <input
				type="submit" value="Upload"> Press here to upload the file!
		</form>
	</div>

	<tags:master />
</body>
</html>