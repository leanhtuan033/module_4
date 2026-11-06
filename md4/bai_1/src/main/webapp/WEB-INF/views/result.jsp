<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Kết quả chuyển đổi</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f3f5f7; }
        .container { width: 460px; margin: 70px auto; padding: 25px;
            background: white; border-radius: 10px; text-align: center; }
        h2 { color: #245b91; }
        .amount { font-size: 25px; font-weight: bold; color: #16834a; }
        a { display: inline-block; margin-top: 20px; color: #2469a6; }
    </style>
</head>
<body>
<div class="container">
    <h2>KẾT QUẢ CHUYỂN ĐỔI</h2>
    <p>Tỉ giá: 1 USD = ${rate} VNĐ</p>
    <p>Số tiền cần đổi: ${usd} USD</p>
    <p>Số tiền sau chuyển đổi:</p>
    <p class="amount">${vnd} VNĐ</p>
    <a href="${pageContext.request.contextPath}/">Quay lại</a>
</div>
</body>
</html>