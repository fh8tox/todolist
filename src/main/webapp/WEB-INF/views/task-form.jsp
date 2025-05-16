<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Form</title>
</head>
<body>
<h2>Thêm / Sửa công việc</h2>
<form:form method="post" action="/task/save" modelAttribute="task">
    <form:hidden path="id" />
    <p>Tiêu đề: <form:input path="title" /></p>
    <p>Mô tả: <form:input path="description" /></p>
    <p>Hoàn thành: <form:checkbox path="completed" /></p>
    <input type="submit" value="Lưu" />
</form:form>
</body>
</html>
