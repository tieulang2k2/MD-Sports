@extends('client.shared.master')
@section('content')
<!-- Start About Us Page -->
<div class="about-box-main">
	<div class="container">
		<!-- Banner Section -->
		<div class="row about-banner">
			<div class="col-12 text-center">
				<img src="{{ asset('front_assets/images/logomd.png') }}" alt="MD Sport Banner" class="about-banner-img">
			</div>
		</div>

		<!-- Company Overview Section -->
		<div class="row about-overview">
			<div class="col-lg-12 text-center">
				<h2 class="about-title">Giới thiệu về <span class="highlight-text">MD Sport - Đà Nẵng</span></h2>
				<p class="about-description">Được thành lập vào năm 2024, MD Sport - Đà Nẵng đã nhanh chóng khẳng định vị thế là thương hiệu uy tín hàng đầu trong lĩnh vực cung cấp sản phẩm và phụ kiện thể thao. Chúng tôi cam kết mang đến cho khách hàng những trải nghiệm mua sắm đẳng cấp, với các sản phẩm chất lượng cao từ các thương hiệu nổi tiếng trên thế giới. MD Sport luôn đồng hành cùng khách hàng trong việc nâng cao phong cách sống năng động, khỏe mạnh và chinh phục những mục tiêu thể thao vượt bậc.</p>
				
			</div>
		</div>

		<!-- Key Features Section -->
		<div class="row about-features">
			<div class="col-lg-4 text-center">
				<img src="{{asset('front_assets/images/product.jpg') }}" alt="Sản phẩm đa dạng" class="feature-img">
				<h4 class="feature-title">Sản phẩm đa dạng</h4>
				<p class="feature-description">Cung cấp hơn 500+ sản phẩm thể thao từ giày, áo quần đến phụ kiện, đáp ứng mọi nhu cầu.</p>
			</div>
			<div class="col-lg-4 text-center">
				<img src="{{ asset('front_assets/images/brand.jpg') }}" alt="Thương hiệu uy tín" class="feature-img">
				<h4 class="feature-title">Thương hiệu uy tín</h4>
				<p class="feature-description">Hợp tác với các thương hiệu nổi tiếng như Nike, Adidas, Puma, đảm bảo chất lượng sản phẩm.</p>
			</div>
			<div class="col-lg-4 text-center">
				<img src="{{ asset('front_assets/images/dichvu.jpg') }}" alt="Dịch vụ tận tâm" class="feature-img">
				<h4 class="feature-title">Dịch vụ tận tâm</h4>
				<p class="feature-description">Đội ngũ nhân viên chuyên nghiệp, mang đến trải nghiệm mua sắm trực tuyến tiện lợi và hài lòng.</p>
			</div>
		</div>

		<!-- Map Section -->
		<div class="row about-map">
			<div class="col-lg-12 text-center">
				<h3 class="map-title">Địa chỉ của chúng tôi</h3>
				<div class="map-frame">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9122.997572699685!2d108.2465319057515!3d15.97453225154318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4sIMSQ4bqhaSBo4buNYyDEkMOgIE7hurVuZw!5e0!3m2!1svi!2s!4v1732274364339!5m2!1svi!2s"
						width="600" height="450" class="map-iframe" allowfullscreen="" loading="lazy"
						referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End About Us Page -->
@endsection
