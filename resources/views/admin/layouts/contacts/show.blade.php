@extends('admin.shared.main')
@section('title')
MD Sport - Chi tiết liên hệ
@endsection
@section('content')
<div class="content_yield">
    <h3 class="page_title">Chi tiết liên hệ</h3>
    <div class="row">
        <div class="col-md-12">
            @if(Session::has('message'))
            <div id="div-alert" style="position:absolute; right: 10px;" class="float-right mt-2 alert alert-success alert-dismissible show" role="alert" style="position: absolute;">
                <strong>{{ Session::get('message') }}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @elseif(Session::has('err'))
            <div id="div-alert" style="position:absolute; right: 10px;" class="float-right mt-2 alert alert-danger alert-dismissible show" role="alert" style="position: absolute;">
                <strong>{{ Session::get('err') }}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
        </div>
    </div>
    <div class="detail-view">
        <div class="form-group">
            <label>Họ và tên:</label>
            <p>{{ $contact->name }}</p>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <p>{{ $contact->email }}</p>
        </div>
        <div class="form-group">
            <label>Chủ đề:</label>
            <p>{{ $contact->subject }}</p>
        </div>
        <div class="form-group">
            <label>Nội dung:</label>
            <p>{{ $contact->mess }}</p>
        </div>
        <div class="form-group">
            <label>Ngày gửi:</label>
            <p>{{ $contact->created_at->format('d/m/Y H:i') }}</p>
        </div>
        <a href="{{ route('contact.index') }}" class="btn btn-danger">
            <i class="fas fa-arrow-left"></i> Quay lại
        </a>
    </div>
</div>
@endsection
