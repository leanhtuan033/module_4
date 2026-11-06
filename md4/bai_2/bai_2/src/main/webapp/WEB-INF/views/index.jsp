
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Từ điển Anh - Việt</title>

    <style>
        body {
            font-family: Arial;
            background: #f2f5f8;
        }

        .container {
            width: 600px;
            margin: 80px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: #245a91;
        }

        input {
            width: 70%;
            padding: 12px;
        }

        button {
            padding: 12px 20px;
            background: #2468ad;
            color: white;
            border: none;
            cursor: pointer;
        }

        .success {
            margin-top: 20px;
            padding: 15px;
            background: #eaf7ef;
            color: green;
        }

        .error {
            margin-top: 20px;
            padding: 15px;
            background: #fff0f0;
            color: red;
        }
    </style>
</head>

<body>
<div class="container">

    <h1>TỪ ĐIỂN ANH - VIỆT</h1>

    <form action="${pageContext.request.contextPath}/search"
          method="post">

        <input type="text"
               name="word"
               placeholder="Nhập từ tiếng Anh..."
               value="<c:out value='${word}'/>">

        <button type="submit">Tra cứu</button>
    </form>

    <c:if test="${found == true}">
        <div class="success">
            <h3>Từ: <c:out value="${word}"/></h3>
            <p>Nghĩa tiếng Việt:
                <strong><c:out value="${meaning}"/></strong>
            </p>
        </div>
    </c:if>

    <c:if test="${found == false}">
        <div class="error">
            <c:out value="${message}"/>
        </div>
    </c:if>

</div>
</body>
</html>
