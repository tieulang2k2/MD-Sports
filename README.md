# Hướng dẫn cài đặt dự án Laravel

## Yêu cầu hệ thống
1. Hệ điều hành: Windows, macOS, hoặc Linux.
2. PHP phiên bản 7.2 trở lên.
3. XAMPP phiên bản 7.0 trở lên (bao gồm Apache và MySQL).
4. Composer: Công cụ quản lý phụ thuộc cho PHP.

## Chuẩn bị
### 1. Cài đặt XAMPP
- Tải về và cài đặt XAMPP từ trang chủ: [XAMPP Download](https://www.apachefriends.org/index.html)
- Sau khi cài đặt, mở XAMPP Control Panel và khởi động Apache và MySQL.

### 2. Cài đặt Composer
- Tải về và cài đặt Composer từ trang chủ: [Composer Download](https://getcomposer.org/)
- Kiểm tra cài đặt Composer bằng lệnh sau trong terminal:
    ```bash
    composer --version
    ```

## Các bước cài đặt dự án
### 1. Sao chép dự án
- Tải hoặc clone dự án về máy tính của bạn:
    ```bash
    git clone <link tới repository>
    ```
- Di chuyển thư mục dự án vào thư mục `htdocs` của XAMPP. Thường đường dẫn sẽ là:
    ```bash
    C:\xampp\htdocs\<tên-thư-mục-dự-án>
    ```

### 2. Cấu hình cơ sở dữ liệu
- Mở phpMyAdmin bằng cách truy cập [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
- Tạo cơ sở dữ liệu mới với tên `md_sport` (hoặc tên khác nếu bạn muốn, nhớ cập nhật tệp `.env`):
    ```sql
    CREATE DATABASE md_sport;
    ```

### 3. Cấu hình tệp `.env`
- Sao chép tệp `.env.example` thành `.env` trong thư mục dự án:
    ```bash
    cp .env.example .env
    ```
- Mở tệp `.env` và cập nhật thông tin kết nối cơ sở dữ liệu:
    ```env
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=md_sport
    DB_USERNAME=root
    DB_PASSWORD=
    ```

### 4. Cài đặt các phụ thuộc
- Mở terminal trong thư mục dự án và chạy lệnh sau để cài đặt các phụ thuộc cần thiết:
    ```bash
    composer install
    ```

### 5. Tạo khóa ứng dụng
- Tạo khóa ứng dụng Laravel bằng lệnh sau:
    ```bash
    php artisan key:generate
    ```

### 6. Chạy di trú và giả lập dữ liệu
- Chạy di trú cơ sở dữ liệu để tạo các bảng cần thiết:
    ```bash
    php artisan migrate
    ```
- Giả lập dữ liệu (nếu có file Seeder):
    ```bash
    php artisan db:seed
    ```

## Khởi chạy dự án
- Khởi động Apache và MySQL từ XAMPP Control Panel.
- Mở terminal trong thư mục dự án và chạy lệnh sau để khởi chạy server phát triển của Laravel:
    ```bash
    php artisan serve
    ```

## Truy cập ứng dụng
- Truy cập trang client tại: [http://localhost:8000/home](http://localhost:8000/home)
- Truy cập trang admin tại: [http://localhost:8000/admin/login](http://localhost:8000/admin/login)

Nếu bạn gặp bất kỳ vấn đề nào trong quá trình cài đặt, hãy kiểm tra lại các bước trên hoặc liên hệ https://www.facebook.com/tusn20 để được hỗ trợ.
