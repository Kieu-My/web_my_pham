@extends('user.layouts.index')
@section('title', $product->name)
@section('content')
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="{{ route('home') }}"><i class="fa fa-home"></i> Trang chủ</a>
                        <a href="{{ route('user.category.index', $product->category->slug) }}">
                            {{ $product->category->name }}
                        </a>
                        <span>
                            {{ $product->name }}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <div class="container">
            <div class="row">
                <input type="hidden" id="product_id" value="{{ $product->id }}">
                <input type="hidden" id="user_id" value="{{ auth()->id() }}">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                                @foreach ($product->images as $image)
                                    <img class="product-big-img" src="{{ $image->path }}" alt="">
                                    <div class="zoom-icon">
                                        <i class="fa fa-search-plus"></i>
                                    </div>

                                    @php
                                        break;
                                    @endphp
                                @endforeach
                            </div>
                            <div class="product-thumbs">
                                <div class="product-thumbs-track ps-slider owl-carousel">
                                    @foreach ($product->images as $image)
                                        <div class="pt" data-imgbigurl="{{ $image->path }}"><img
                                                src="{{ $image->path }}" alt=""></div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <span>
                                        {{ $product->brand->name }}
                                    </span>
                                    <h3>{{ $product->name }}</h3>
                                    <a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
                                </div>
                                <div class="pd-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <span>(5)</span>
                                </div>
                                <div class="pd-desc">
                                    {{-- <p>{!! $product->description !!}</p> --}}
                                    <h4><span style="text-decoration: underline">Giá bán:</span>
                                        {{ number_format($product->sale_price) }}
                                        đ
                                        @if ($product->sale > 0)
                                            <span>
                                                {{ number_format($product->price) }} đ
                                            </span>
                                        @endif
                                    </h4>
                                </div>

                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1" name="quantity" id="quantity">
                                    </div>
                                    <a id="add-to-cart-btn" onclick="addToCart()" class=" primary-btn pd-cart">Add To
                                        Cart</a>
                                </div>
                                <ul class="pd-tags">
                                    <li><span>Danh mục</span>:
                                        <a href="{{ route('user.category.index', $product->category->slug) }}"
                                            class="text-capitalize" style="color: red">
                                            {{ $product->category->name }}
                                        </a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">Mô tả</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" role="tab">
                                        Thông tin chi tiết
                                    </a>
                                </li>
                                {{-- <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">
                                        Đánh giá (2)
                                    </a>
                                </li> --}}
                            </ul>
                        </div>
                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <h5>Mô tả</h5>
                                                <p>{!! $product->description !!}</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                    <div class="specification-table">
                                        <table>
                                            {{-- <tr>
                                                <td class="p-catagory">Customer Rating</td>
                                                <td>
                                                    <div class="pd-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <span>(5)</span>
                                                    </div>
                                                </td>
                                            </tr> --}}
                                            <tr>
                                                <td class="p-catagory">Giá</td>
                                                <td>
                                                    <div class="p-price">
                                                        {{ number_format(($product->price * (100 - $product->sale)) / 100) }}đ


                                                        @if ($product->sale != 0)
                                                            <code style="text-decoration: line-through">
                                                                {{ number_format($product->price) }}
                                                                đ
                                                            </code>
                                                        @endif
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-catagory">
                                                    Số lượng
                                                </td>
                                                <td>
                                                    {{ $product->quantity }}
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
