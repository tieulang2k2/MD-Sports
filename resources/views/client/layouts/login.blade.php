@extends('client.shared.master')
@section('content')
<div class="col-md-12">
    <div class="col-md-6 modal-body nph-lg text-center">
    <form method="POST" action="{{ route('client.login') }}">
        @csrf
        <div class="form-group text-left">
            <label for="email" class="font-weight-bold">Email</label> <!-- Tiêu đề trên ô nhập -->
            <input 
                id="email" 
                placeholder="Nhập Email của bạn" 
                type="email" 
                class="form_custom form-control @error('email') is-invalid @enderror" 
                name="email" 
                value="{{ old('email') }}" 
                autocomplete="email" 
                autofocus
            >

            @error('email')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
            @enderror
        </div>
        <div class="form-group text-left">
            <label for="password" class="font-weight-bold">Mật khẩu</label> <!-- Tiêu đề trên ô nhập -->
            <input 
                id="password" 
                placeholder="Nhập mật khẩu của bạn" 
                type="password" 
                class="form_custom form-control @error('password') is-invalid @enderror" 
                name="password" 
                autocomplete="current-password" 
            >

            @error('password')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
            @enderror
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary submit_button btn-lg btn-block login-btn">
                {{ trans('regis.login') }}
                <!-- {{ __('Login') }} -->
            </button>
        </div>
    </form>
    <div class="err-login text-center">
        @if(Session::has('error'))
        {{ Session::get('error') }}
        @endif
    </div>
</div>
</div>
@endsection
