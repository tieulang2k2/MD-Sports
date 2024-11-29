@extends('client.shared.master')
@section('content')
<div class="content_yield d-flex justify-content-center align-items-center"
	style="min-height: 100vh; background-color: #f9f9f9;">
	{{ Form::open(['route' => ['reset.password', $user->id], 'method' => 'put', 'class' => 'w-50 bg-white p-5 rounded shadow-sm']) }}
	<h3 class="mb-4 font-weight-bold text-center text-primary">Cập nhật thông tin</h3>

	<!-- Hiển thị thông báo thành công -->
	@if (session('thanhcong'))
		<div class="alert alert-success text-center">
			{{ session('thanhcong') }}
		</div>
	@endif

	<!-- Hiển thị thông báo lỗi nếu có -->
	@if ($errors->any())
		<div class="alert alert-danger">
			<ul class="mb-0">
				@foreach ($errors->all() as $error)
					<li>{{ $error }}</li>
				@endforeach
			</ul>
		</div>
	@endif

	<!-- Tên người dùng -->
	<div class="form-group">
		{{ Form::label('Tên người dùng:', '', ['class' => 'font-weight-bold text-secondary']) }}
		{!! Form::text('name', $user->name, [
	'class' => 'form-control border border-primary rounded',
	'placeholder' => "Nhập tên người dùng"
]) !!}
		<span class="text-danger">{{ $errors->first('name') }}</span>
	</div>

	<!-- Mật khẩu -->
	<div class="form-group">
		{{ Form::label('Mật khẩu mới:', '', ['class' => 'font-weight-bold text-secondary']) }}
		{!! Form::password('password', [
	'class' => 'form-control border border-primary rounded',
	'placeholder' => "Nhập mật khẩu mới"
]) !!}
		<!-- Hiển thị lỗi nếu mật khẩu để trống -->
		<span class="text-danger">{{ $errors->first('password') }}</span>
	</div>


	<!-- Nút lưu -->
	<div class="text-right">
		{{ Form::submit('Lưu thông tin', [
	'class' => 'btn btn-primary font-weight-bold text-white px-4 py-2 rounded'
]) }}
	</div>
	{{ Form::close() }}
</div>
@endsection