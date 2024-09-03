<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Orders List</title>
</head>
<body align="center">
    <h1>Orders List</h1>
    <table border="1" cellpadding="5" cellspacing="2">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Number</th>
            <th>Item</th>
            <th>Room Number</th>
        </tr>
        <tr th:each="food : ${items}">
            <td th:text="${food.name}"></td>
            <td th:text="${food.email}"></td>
            <td th:text="${food.number}"></td>
            <td th:text="${food.food_name}"></td>
            <td th:text="${food.address}"></td>
        </tr>
    </table>
</body>
</html>