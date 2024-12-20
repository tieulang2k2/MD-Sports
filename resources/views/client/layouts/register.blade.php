@extends('client.shared.master')
@section('content')
<div class="container">
	<div class="modal-body">
		<form method="POST" action="{{ route('client.register') }}">
			@csrf
			<div class="row">
				<div class="col-md-6 nph-rg">
					<div class="form-group text-left">
						<label for="name" class="font-weight-bold">Tên người dùng</label> <!-- Tiêu đề -->
						<input id="name" type="text" placeholder="Nhập tên người dùng" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" autocomplete="name" autofocus>

						@error('name')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>

					<div class="form-group text-left">
						<label for="email" class="font-weight-bold">Email</label> <!-- Tiêu đề -->
						<input id="email" type="email" placeholder="Nhập email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email">

						@error('email')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>

					<div class="form-group text-left">
						<label for="password" class="font-weight-bold">Mật khẩu</label> <!-- Tiêu đề -->
						<input id="password" type="password" placeholder="Nhập mật khẩu" class="form-control @error('password') is-invalid @enderror" name="password" autocomplete="new-password">

						@error('password')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>

					<div class="form-group text-left">
						<label for="password_confirmation" class="font-weight-bold">Xác nhận mật khẩu</label> <!-- Tiêu đề -->
						<input id="password_confirmation" type="password" placeholder="Nhập lại mật khẩu" class="form-control" name="password_confirmation" autocomplete="new-password">

						@error('password_confirmation')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>
				</div>

				<div class="col-md-6 nph-rg">
					<div class="form-group text-left">
						<label for="full_name" class="font-weight-bold">Họ và tên</label> <!-- Tiêu đề -->
						<input id="full_name" type="text" placeholder="Nhập họ và tên" class="form-control @error('full_name') is-invalid @enderror" name="full_name" value="{{ old('full_name') }}" autocomplete="full_name" autofocus>

						@error('full_name')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>

					<div class="form-group text-left">
						<label for="address" class="font-weight-bold">Địa chỉ</label> <!-- Tiêu đề -->
						<input id="address" type="text" placeholder="Nhập địa chỉ" class="form-control @error('address') is-invalid @enderror" name="address" value="{{ old('address') }}" autocomplete="address" autofocus>

						@error('address')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>

					<div class="form-group text-left">
						<label for="phone_no" class="font-weight-bold">Số điện thoại</label> <!-- Tiêu đề -->
						<input id="phone_no" type="text" placeholder="Nhập số điện thoại" class="form-control @error('phone_no') is-invalid @enderror" name="phone_no" onKeyPress="return isNumberKey(event)" value="{{ old('phone_no') }}" autocomplete="phone_no" autofocus>

						@error('phone_no')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror
					</div>

					<div class="form-group text-left">
						<label class="form-check-label">
							<input type="checkbox" required="required">
							<a href="#">Tôi đồng ý với các điều khoản</a>
						</label>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-lg btn-block login-btn">
							Đăng ký
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection
