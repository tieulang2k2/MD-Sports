<div class="instagram-box">
    <h3 class="instagram-title">Thương Hiệu Nổi Bật</h3>
    <div class="main-instagram owl-carousel owl-theme">
        @foreach($brands as $key => $brand)
            <div class="item">
                <div class="ins-inner-box">
                    <img src="{{asset('/images/'.$brand->logo)}}" alt="{{$brand->name}}">
                    <div class="hov-in">
                        <a href="{{url('product-all?brand_id='.$brand->id)}}">Xem sản phẩm của thương hiệu</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
