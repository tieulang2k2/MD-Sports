@extends('client.shared.master')

@section('content')
<!-- Start Size Guide Page -->
<div class="size-guide-container">
    <div class="size-guide-wrapper">
        <!-- Page Title -->
        <div class="size-guide-banner">
            <div class="size-guide-header text-center">
                <h2 class="size-guide-title">Hướng dẫn chọn size</h2>
            </div>
        </div>

        <!-- Introduction Section -->
        <div class="size-guide-intro">
            <div class="text-center">
                <p class="size-guide-description">
                    Chọn đúng size không chỉ mang lại sự thoải mái mà còn giúp bạn tự tin trong từng bước di chuyển. Hãy tham khảo hướng dẫn dưới đây để lựa chọn kích thước phù hợp nhất.
                </p>
            </div>
        </div>

        <!-- Measurement Guide Section -->
        <div class="size-guide-measurement">
            <div class="measurement-steps-section">
                <h3 class="measurement-title">Hướng dẫn đo chân</h3>
                <h4>Chuẩn bị các dụng cụ đo</h4>
                <ul class="measurement-tools">
                    <li>Một cây bút</li>
                    <li>Thước đo</li>
                    <li>Một tờ giấy trắng có kích cỡ to hơn bàn chân</li>
                    <li>Một đôi tất (nếu bạn có dự định mang kèm với giày)</li>
                </ul>
                <h4>Các bước thực hiện</h4>
                <ol class="measurement-steps">
                    <li>
                        <strong>Bước 1: Đo kích thước bàn chân</strong><br>
                        Đầu tiên đặt bàn chân đã mang tất lên mặt phẳng của tờ giấy. Đảm bảo luôn giữ chân cố định và không xê dịch khi thực hiện bước này. Tiếp đến, sử dụng bút chì dựng thẳng đứng và vuông góc với tờ giấy.
                    </li>
                    <li>
                        <strong>Bước 2: Đánh dấu số đo của chân</strong><br>
                        Sử dụng bút chì và thước để kẻ một đường thẳng từ mũi đến gót chân, sau đó đánh dấu điểm đầu và điểm cuối để xác định chiều dài của bàn chân.
                    </li>
                    <li>
                        <strong>Bước 3: Xác định kích thước bàn chân</strong><br>
                        Tiếp tục sử dụng thước để đo hai điểm vừa được đánh dấu ở bước 2, kích thước đo được chính là chiều dài bàn chân của bạn.
                    </li>
                    <li>
                        <strong>Bước 4: Đối chiếu size với bảng kích thước</strong><br>
                        Sử dụng bảng quy đổi size để xác định chính xác size giày của mình.
                    </li>
                </ol>
            </div>
        </div>

        <!-- Tips Section -->
        <div class="size-guide-tips">
            <div class="tips-content">
            <h3 class="measurement-title">Mẹo đo chân</h3>
                <ul class="tips-list">
                    <li>Nên đo chân vào buổi chiều vì lúc này chân có kích thước lớn nhất.</li>
                    <li>Nếu số đo nằm giữa hai size, hãy chọn size lớn hơn để thoải mái hơn.</li>
                    <li>Đối với giày thể thao, bạn nên chọn size lớn hơn khoảng 0.5cm so với kích thước chân thực tế.</li>
                </ul>
            </div>
        </div>

        <!-- Size Chart Section -->
        <div class="size-guide-chart">
            <div class="text-center">
                <h3 class="chart-title">Bảng size Giày Dép của một số thương hiệu nổi bật</h3>
                <img src="{{ asset('front_assets/images/1.jpg') }}" alt="Bảng size giày" class="size-chart-image">
                <img src="{{ asset('front_assets/images/2.jpg') }}" alt="Bảng size giày" class="size-chart-image">
                <img src="{{ asset('front_assets/images/3.jpg') }}" alt="Bảng size giày" class="size-chart-image">
            </div>
        </div>

        <!-- Clothing Size Guide Section -->
        <div class="clothing-size-measurement">
            <h3 class="clothing-title">Hướng dẫn đo size quần áo</h3>
            <h4>Chuẩn bị các dụng cụ đo</h4>
            <ul class="clothing-tools">
                <li>Thước dây</li>
            </ul>
            <h4>Các bước thực hiện</h4>
            <ol class="clothing-steps">
                <li>
                    <strong>Bước 1: Đo kích thước các thông số cơ thể</strong><br>
                    Đứng thẳng và đặt thước dây quanh các bộ phận như ngực, eo, hông, cánh tay.
                    <ul>
                        <li><strong>Ngực:</strong> Để đo được kích cỡ đúng, dùng thước dây mềm đo quanh phần nở nhất của ngực, giữ thước dây thẳng theo phương ngang.</li>
                        <li><strong>Eo:</strong> Đo phần hẹp nhất của vòng eo, giữ thước dây theo phương ngang.</li>
                        <li><strong>Hông:</strong> Đứng khép hai chân và đo quanh phần nở nhất của hông, giữ thước dây thẳng theo phương ngang.</li>
                    </ul>
                </li>
                <li>
                    <strong>Bước 2: Ghi lại số liệu về thông số cơ thể</strong><br>
                    Ghi lại số liệu về thông số cơ thể phù hợp với sản phẩm mà Quý khách đã chọn.
                </li>
                <li>
                    <strong>Bước 3: Đối chiếu size với bảng kích thước</strong><br>
                    Sử dụng bảng quy đổi size để xác định chính xác size quần áo của mình. Mỗi thương hiệu có thể có các tiêu chuẩn kích thước khác nhau, vì vậy hãy luôn kiểm tra bảng kích thước cụ thể cho từng sản phẩm.
                </li>
            </ol>
        </div>

        <!-- Clothing Size Chart Section -->
        <div class="clothing-size-chart">
            <div class="text-center">
                <h3 class="chart-title">Bảng size quần áo</h3>
                <p>Quý khách nên lưu ý về kiểu dáng của quần áo để lựa chọn cho phù hợp:</p><br>
                <img src="{{ asset('front_assets/images/sizequanao.png') }}" alt="Bảng size quần áo" class="clothing-chart-image"><br><br><br>
                <p>Dây size phổ biến của các sản phẩm quần áo là:</p><br>
                <img src="{{ asset('front_assets/images/sizeday.png') }}" alt="Bảng size quần áo" class="clothing-chart-image">
            </div>
        </div>
    </div>
</div>
<!-- End Size Guide Page -->
@endsection