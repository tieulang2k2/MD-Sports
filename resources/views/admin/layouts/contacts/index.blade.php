@extends('admin.shared.main')
@section('title')
MD Sport - Liên hệ
@endsection
@section('content')
<div class="content_yield">
    <div class="row">
        <h3 class="page_title">Danh sách liên hệ</h3>
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

    <table class="table table_xk table-hover table-bordered">
        <thead class="thead_green">
            <tr>
                <th class="text-center">STT</th>
                <th class="text-center">Họ và tên</th>
                <th class="text-center">Email</th>
                <th class="text-center">Chủ đề</th>
                <th class="text-center">Nội dung</th>
                <th class="text-center">Ngày tạo</th>
                <th class="text-center">#</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop -->
            @foreach($contacts as $key => $contact)
            <tr>
                <td class="text-center">{{ ++$key }}</td>
                <td class="text-center">{{ $contact->name }}</td>
                <td class="text-center">{{ $contact->email }}</td>
                <td class="text-center">{{ $contact->subject }}</td>
                <td class="text-center">{{ Str::limit($contact->mess, 50) }}</td>
                <td class="text-center">{{ $contact->created_at->format('d/m/Y') }}</td>
                <td class="text-center action_icon">
                    <a href="{{ route('contact.show', $contact->id) }}"><i class="far fa-eye view"></i></a>
                </td>
            </tr>
            @endforeach
            <!-- End loop -->
        </tbody>
    </table>
</div>

<script>
    setTimeout(function() {
        var element = document.getElementById("div-alert");
        if (element) {
            element.classList.add("fade");
        }
    }, 2000);
</script>
@endsection
