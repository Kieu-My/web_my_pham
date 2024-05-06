@extends('user.layouts.index')
@section('title', 'Trang chủ')
@section('content')
    @foreach ($result as $key => $item)
        <section class="man-banner spad">
            <div class="container-fluid">
                <div class="card">
                    <div class="row">
                        <div class="col-12">
                            <div class="card-header">
                                <p style="font-size: 20px; font-weight: bold; vertical-align: center">
                                    {{ $key }}
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="product-slider owl-carousel">
                                @foreach ($item as $value)
                                    <div class="product-item">
                                        <a href="{{ route('user.product.index', $value->slug) }}">
                                            <div class="pi-pic">
                                                <img src="{{ $value->image }}" alt="" style="height: 300px">
                                                @if ($value->sale > 0)
                                                    <div class="sale">Sale</div>
                                                @endif
                                                <div class="icon">
                                                    <a href="{{ route('user.white_list.add', $value->id) }}"
                                                        style="color: red; text-decoration: none;"><i
                                                            class="icon_heart_alt"></i></a>
                                                </div>
                                            </div>
                                            <div class="pi-text">
                                                <div class="catagory-name">
                                                    {{ $value->category->name }}
                                                </div>
                                                <a href="{{ route('user.product.index', $value->slug) }}">
                                                    <h5>
                                                        {{ $value->name }}
                                                    </h5>
                                                </a>
                                                <div class="product-price">
                                                    @if ($value->sale > 0)
                                                        {{ number_format($value->price - ($value->price * $value->sale) / 100) }}
                                                        <span>{{ number_format($value->price) }}</span>
                                                    @else
                                                        ${{ number_format($value->price) }}
                                                    @endif
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr>
    @endforeach

    Tuong@gmail.com
@endsection
