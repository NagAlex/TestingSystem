<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
	<title>Home page</title>
	<link rel="stylesheet" href='<s:url value="/resources" />/styles.css' type="text/css">
</head>
<body>
	<header>
		<h2>Welcome to Simple Testing System</h2>
	</header>
	<main class="box">
		<div><a href="<s:url value="/test" />"><c:out value="${hi}"/></a></div>
	</main>
	<footer>
		<div>Copyright&copy;2016 Nekora Alexander</div>
	</footer>
</body>
</html>