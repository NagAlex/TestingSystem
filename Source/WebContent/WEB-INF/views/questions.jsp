<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title>Questions</title>
	<link rel="stylesheet" href='<s:url value="/resources" />/styles.css' type="text/css">
</head>
<body>
	<header>
		<h3>Question number <c:out value="${question.id}" /> :</h3>
	</header>
	<main class="box">
		<sf:form method="POST" modelAttribute="question">
			<sf:errors path="*" cssClass="errorblock" element="div"/>
			<table>
					<tr>
						<th>
							<c:out value="${question.question}"/>
						</th>
					</tr>
	 			<c:forEach var="answer" items="${answersList}">
					<tr>
						<td>
							<input name="answ" type="radio" value="${answer.id}">
							<c:out value="${answer.answer}"/>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div>
				<input name="commit" type="submit" value="Continue">
			</div>
		</sf:form>
	</main>
	<footer>
		<div>Copyright&copy;2016 Nekora Alexander</div>
	</footer>
</body>
</html>