<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chuyển đổi tiền tệ</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f3f5f7; }
        .container { width: 420px; margin: 70px auto; padding: 25px;
            background: white; border-radius: 10px; }
        h2 { text-align: center; color: #245b91; }
        label { display: block; margin-top: 15px; }
        input { width: 100%; box-sizing: border-box; padding: 10px;
            margin-top: 6px; }
        button { width: 100%; margin-top: 22px; padding: 11px;
            border: 0; background: #2469a6; color: white; cursor: pointer; }
        .error { color: #c62828; margin-top: 12px; }
    </style>
</head>
<body>
<div class="container">
    <h2>ỨNG DỤNG CHUYỂN ĐỔI TIỀN TỆ</h2>

    <form action="${pageContext.request.contextPath}/convert" method="post">
        <label for="rate">Tỉ giá (1 USD = ? VNĐ)</label>
        <input type="number" id="rate" name="rate" min="0.01"
               step="any" placeholder="Ví dụ: 25000" required>

        <label for="usd">Số tiền USD cần chuyển đổi</label>
        <input type="number" id="usd" name="usd" min="0"
               step="any" placeholder="Ví dụ: 100" required>

        <button type="submit">Chuyển đổi</button>
    </form>

    <p class="error">${error}</p>
</div>
</body>
</html>
