<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href='<s:url value="/resources" />/styles.css' type="text/css">
	<title>Test passed</title>
</head>
<body>
	<main class="box">
		<h2 id="congr">Congratulations!!!</h2>
		<p>Test is passed</p>
		<p>Your results: <c:out value="${results}" /> % </p>
		<div>
			<sf:form method="GET">
				<input name="commit" type="submit" value="Test Again">
			</sf:form>
		</div>
	</main>	
	<footer>
		<div>Copyright&copy;2016 Nekora Alexander</div>
	</footer>
</body>
</html>