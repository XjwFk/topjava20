<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MealForm</title>
</head>
<body>
<h1>${param.action == "create" ? "Create Meal:" : "Update Meal:"}</h1>
<jsp:useBean id="meal" type="ru.javawebinar.topjava.model.Meal" scope="request"/>
<form method="post" action="meals">
    <p><input type="hidden" name="id" value="${meal.id}"></p>
    <p>DateTime: <input type="datetime-local" name="dateTime" value="${meal.dateTime}"></p>
    <p>Description: <input type="text" name="description" value="${meal.description}"></p>
    <p>Calories: <input type="number" name="calories" value="${meal.calories}"></p>
    <button type="submit">Save</button>
    <button onclick="window.history.back()" type="button">Cancel</button>
</form>
</body>
</html>
