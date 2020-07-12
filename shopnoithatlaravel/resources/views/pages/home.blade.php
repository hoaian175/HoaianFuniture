@extends('layout')
@section('content')

 <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Sản phẩm nổi bật</h2>
                        @foreach($all_product as $key => $product)
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                        <div class="productinfo text-center">
                                            <a href="{{ route('ChiTietSanPham',$product->product_id) }}">
                                                        <img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="" />
                                                    </a>
                                                    <a href="{{ route('ChiTietSanPham',$product->product_id) }}">
                                                        <h2>{{number_format($product->product_price).' '.'VNĐ'}}</h2>
                                                    </a>
                                                    <a href="{{ route('ChiTietSanPham',$product->product_id) }}">
                                                        <p>{{$product->product_name}}</p>
                                                    </a>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm giỏ hàng</a>
                                        </div>
                                       {{--  <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2>3.150.000đ</h2>
                                                <p>Sofa bed đơn giản - SB01</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                            </div>
                                        </div> --}}
                                </div>
                                <div class="choose">
                                    <ul class="nav nav-pills nav-justified">
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Thêm yêu thích</a></li>
                                        <li><a href="#"><i class="fa fa-plus-square"></i>So sánh</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div><!--features_items-->

@endsection