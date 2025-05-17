<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách công việc</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
        }
        a.button {
            display: inline-block;
            padding: 8px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-bottom: 15px;
            transition: background-color 0.3s ease;
        }
        a.button:hover {
            background-color: #0056b3;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e6f0ff;
        }
        .action-links a {
            color: #007bff;
            text-decoration: none;
            margin: 0 5px;
        }
        .action-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Danh sách công việc</h2>
<a class="button" href="/task/new">Thêm công việc</a>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Tiêu đề</th>
        <th>Mô tả</th>
        <th>Hoàn thành</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="task" items="${tasks}">
        <tr>
            <td>${task.id}</td>
            <td style="text-align: left;">${task.title}</td>
            <td style="text-align: left;">${task.description}</td>
            <td>${task.completed ? '✔️' : '❌'}</td>
            <td class="action-links">
                <a href="/task/edit/${task.id}">Sửa</a> |
                <a href="/task/delete/${task.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa công việc này?');">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
