<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="1">
    <thead align="center">
    <td>dateTime</td>
    <td>description</td>
    <td>calories</td>
    <td colspan="2"></td>
    <td></td>
    </thead>
<c:forEach var="meal" items="${meals}">
    <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
    <tr bgcolor=${meal.excess ? "red" : "green"}>
        <td>${meal.dateTime}</td>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>
        <td><a href="meals?action=update&id=${meal.id}">update</a></td>
        <td><a href="meals?action=delete&id=${meal.id}">delete</a></td>
    </tr></br>
</c:forEach>
</table>
</br><a href="meals?action=create">Create meal</a>
</body>
</html>