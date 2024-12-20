@extends('client.shared.master')
@section('content')
<div class="privacy-policy-page">
    <!-- Tiêu đề Chính sách bảo mật -->
    <div class="privacy-policy-header">
        <h1>Chính Sách Bảo Mật</h1>
    </div>
    <div class="container">
        <div class="row">
            <!-- Sidebar Menu -->
            <div class="col-lg-3 col-md-4 policy-menu">
                <ul>
                    <li><a href="#menuid1">1. Mục đích và phạm vi thu thập</a></li>
                    <li><a href="#menuid2">2. Phạm vi sử dụng thông tin</a></li>
                    <li><a href="#menuid3">3. Thời gian lưu trữ thông tin</a></li>
                    <li><a href="#menuid4">4. Những người hoặc tổ chức có thể được chia sẻ thông tin</a></li>
                    <li><a href="#menuid5">5. Địa chỉ của đơn vị thu thập và quản lý thông tin</a></li>
                    <li><a href="#menuid6">6. Phương tiện và công cụ để người dùng tiếp cận và chỉnh sửa</a></li>
                    <li><a href="#menuid7">7. Cam kết bảo mật thông tin cá nhân khách hàng</a></li>
                </ul>
            </div>

            <!-- Content Section -->
            <div class="col-lg-9 col-md-8 policy-content">
                <div id="menuid1" class="policy-section">
                    <h2>1. Mục đích và phạm vi thu thập</h2>
                    <p>Chúng tôi thu thập thông tin cá nhân của khách hàng nhằm mục đích cải thiện chất lượng dịch vụ, xử lý các yêu cầu và giao dịch của khách hàng. Các thông tin bao gồm nhưng không giới hạn: họ tên, số điện thoại, địa chỉ, email, và thông tin thanh toán. Việc thu thập được thực hiện tuân thủ các quy định pháp luật và với sự đồng ý của khách hàng.</p>
                </div>

                <div id="menuid2" class="policy-section">
                    <h2>2. Phạm vi sử dụng thông tin</h2>
                    <p>Thông tin cá nhân của khách hàng sẽ được sử dụng cho các mục đích sau:</p>
                    <ul>
                        <li>Cung cấp sản phẩm, dịch vụ và hỗ trợ khách hàng.</li>
                        <li>Gửi thông báo về tình trạng đơn hàng, khuyến mãi và cập nhật sản phẩm.</li>
                        <li>Giải quyết các tranh chấp hoặc khiếu nại liên quan đến dịch vụ.</li>
                        <li>Đáp ứng yêu cầu pháp lý hoặc cơ quan nhà nước khi cần thiết.</li>
                    </ul>
                </div>

                <div id="menuid3" class="policy-section">
                    <h2>3. Thời gian lưu trữ thông tin</h2>
                    <p>Thông tin cá nhân của khách hàng sẽ được lưu trữ trong thời gian cần thiết để thực hiện các mục đích đã nêu hoặc theo yêu cầu của pháp luật. Sau khi hoàn tất mục đích lưu trữ, thông tin sẽ được xóa bỏ hoặc ẩn danh để đảm bảo an toàn.</p>
                </div>

                <div id="menuid4" class="policy-section">
                    <h2>4. Những người hoặc tổ chức có thể được chia sẻ thông tin</h2>
                    <p>Thông tin cá nhân của khách hàng có thể được chia sẻ với các bên thứ ba liên quan như:</p>
                    <ul>
                        <li>Đơn vị vận chuyển để giao hàng.</li>
                        <li>Ngân hàng hoặc đơn vị thanh toán trực tuyến để xử lý giao dịch.</li>
                        <li>Cơ quan nhà nước theo yêu cầu pháp lý.</li>
                    </ul>
                </div>

                <div id="menuid5" class="policy-section">
                    <h2>5. Địa chỉ của đơn vị thu thập và quản lý thông tin</h2>
                    <p>Công ty TNHH MD Sport<br>Địa chỉ: 470 Đ. Trần Đại Nghĩa, Hoà Hải, Ngũ Hành Sơn, Đà Nẵng<br>Hotline: 0123-456-789<br>Email: support@mdsport.com</p>
                </div>

                <div id="menuid6" class="policy-section">
                    <h2>6. Phương tiện và công cụ để người dùng tiếp cận và chỉnh sửa</h2>
                    <p>Khách hàng có thể liên hệ qua email hoặc hotline để yêu cầu chỉnh sửa, cập nhật hoặc xóa thông tin cá nhân. Chúng tôi cam kết hỗ trợ và xử lý mọi yêu cầu của khách hàng trong vòng 24 giờ làm việc.</p>
                </div>

                <div id="menuid7" class="policy-section">
                    <h2>7. Cam kết bảo mật thông tin cá nhân khách hàng</h2>
                    <p>Chúng tôi cam kết bảo mật tuyệt đối thông tin cá nhân của khách hàng thông qua các biện pháp bảo mật tiên tiến. Thông tin chỉ được sử dụng đúng mục đích và không bị tiết lộ ra bên ngoài khi chưa có sự đồng ý của khách hàng.</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
