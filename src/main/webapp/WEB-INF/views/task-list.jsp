<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Task List</title></head>
<body>
<h2>Danh sách công việc</h2>
<a href="/task/new">Thêm công việc</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tiêu đề</th>
        <th>Mô tả</th>
        <th>Hoàn thành</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="task" items="${tasks}">
        <tr>
            <td>${task.id}</td>
            <td>${task.title}</td>
            <td>${task.description}</td>
            <td>${task.completed ? '✔️' : '❌'}</td>
            <td>
                <a href="/task/edit/${task.id}">Sửa</a> |
                <a href="/task/delete/${task.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
