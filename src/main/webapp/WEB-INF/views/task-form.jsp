<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Thêm / Sửa công việc</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        form {
            background: white;
            padding: 20px;
            max-width: 400px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], input[type="checkbox"] {
            margin-top: 5px;
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        input[type="checkbox"] {
            width: auto;
            margin-top: 12px;
        }
        .checkbox-label {
            display: flex;
            align-items: center;
        }
        .checkbox-label span {
            margin-left: 8px;
            font-weight: normal;
            color: #555;
        }
        input[type="submit"] {
            margin-top: 25px;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h2>Thêm / Sửa công việc</h2>
<form:form method="post" action="/task/save" modelAttribute="task">
    <form:hidden path="id" />
    
    <label for="title">Tiêu đề:</label>
    <form:input path="title" id="title" />
    
    <label for="description">Mô tả:</label>
    <form:input path="description" id="description" />
    
    <label class="checkbox-label" for="completed">
        <form:checkbox path="completed" id="completed" />
        <span>Hoàn thành</span>
    </label>
    
    <input type="submit" value="Lưu" />
</form:form>
</body>
</html>
