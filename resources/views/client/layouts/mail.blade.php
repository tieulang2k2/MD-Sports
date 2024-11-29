<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phản hồi từ khách hàng MD Sport</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 20px; background-color: #f4f4f4;">
    <div style="max-width: 600px; margin: auto; background: #ffffff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">
        <h2 style="color: #333; border-bottom: 1px solid #e0e0e0; padding-bottom: 10px;">Phản hồi từ khách hàng MD Sport</h2>
        <p><strong>Tên:</strong> {{ $name }}</p>
        <p><strong>Email:</strong> {{ $email }}</p>
        <p><strong>Chủ đề:</strong> {{ $subject }}</p>
        <p><strong>Nội dung:</strong></p>
        <div style="background: #f9f9f9; padding: 10px; border-radius: 5px; margin-top: 10px;">
            <p>{{ $mess }}</p>
        </div>
        <p style="margin-top: 20px; color: #777;">Cảm ơn bạn đã liên hệ với chúng tôi!</p>
    </div>
</body>
</html>
