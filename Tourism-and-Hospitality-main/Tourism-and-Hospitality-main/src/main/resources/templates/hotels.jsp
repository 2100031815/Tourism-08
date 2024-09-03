<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Rooms List</title>
</head>
<body align="center">
    <h1>Rooms List</h1>
    <table border="1" cellpadding="5" cellspacing="2">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>CheckIn</th>
            <th>CheckOut</th>
            <th>Persons</th>
            <th>RoomNumber</th>
            <th>Rooms</th>
        </tr>
        <tr th:each="room : ${hotels}">
            <td th:text="${room.name}"></td>
            <td th:text="${room.email}"></td>
            <td th:text="${room.checkIn}"></td>
            <td th:text="${room.checkOut}"></td>
            <td th:text="${room.persons}"></td>
            <td th:text="${room.roomNumber}"></td>
            <td th:text="${room.rooms}"></td>
        </tr>
    </table>
</body>
</html>