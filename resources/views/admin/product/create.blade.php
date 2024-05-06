@extends('admin.layouts.index')
@section('title', 'Quản lý sản phẩm')
@section('content')
    <h3>
        Thêm sản phẩm
    </h3>

    <div class="row">
        <div class="col-12">
            <form action="{{ route('admin.product.store') }}" method="post" enctype="multipart/form-data"
                id="form-create-product">
                @csrf
                <div
                    class="form-group
                    @error('name')
                        text-danger
                    @enderror">
                    <label for="name">Tên sản phẩm</label>
                    <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}"
                        oninput="onChange('name')" placeholder="Nhập tên sản phẩm">
                    @error('name')
                        <p class="text-danger" id="error-msg-name">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div
                    class="form-group
                    @error('category_id')
                        text-danger
                    @enderror">
                    <label for="category_id">Danh mục</label>
                    <select name="category_id" id="category_id" class="form-control" onchange="onChange('category_id')">
                        <option value="">Chọn danh mục</option>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}" @if ($category->id == old('category_id')) selected @endif>
                                {{ $category->name }}</option>
                        @endforeach
                    </select>
                    @error('category_id')
                        <p class="text-danger" id="error-msg-category_id">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div
                    class="form-group
                    @error('brand_id')
                        text-danger
                    @enderror">
                    <label for="brand_id">Nhà thương hiệu</label>
                    <select name="brand_id" id="brand_id" class="form-control" onchange="onChange('brand_id')">
                        <option value="">Chọn nhà thương hiệu</option>
                        @foreach ($brands as $brand)
                            <option value="{{ $brand->id }}" @if ($brand->id == old('brand_id')) selected @endif>
                                {{ $brand->name }}</option>
                        @endforeach
                    </select>
                    @error('brand_id')
                        <p class="text-danger" id="error-msg-brand_id">
                            {{ $message }}
                        </p>
                    @enderror
                </div>

                <div
                    class="form-group
                            @error('brand_id')
                                text-danger
                            @enderror">
                    <label for="size">Số lượng</label>
                    <input type="number" class="form-control" name="quantity" id="quantity" oninput="onChange('quantity')"
                        placeholder="Nhập số lượng sản phẩm" value="{{ old('quantity') }}">
                    @error('quantity')
                        <p class="text-danger" id="error-msg-quantity">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div
                    class="form-group
                    @error('image')
                        text-danger
                    @enderror">
                    <label for="image">Avatar</label>
                    <input type="file" class="form-control" name="image" id="image" accept="image/*" /
                        onchange="onChange('image')">
                    @error('image')
                        <p class="text-danger" id="error-msg-image">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div
                    class="form-group
                @error('image')
                    text-danger
                @enderror">
                    <label for="image">Ảnh</label>
                    <input type="file" class="form-control" name="images[]" id="images" accept="image/*" multiple />
                </div>
                <div
                    class="form-group
                    @error('price')
                        text-danger
                    @enderror">
                    <label for="price">Giá</label>
                    <input type="number" class="form-control" name="price" id="price" value="{{ old('price') }}"
                        oninput="onChange('price')" placeholder="Nhập giá sản phẩm">
                    @error('price')
                        <p class="text-danger" id="error-msg-price">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div
                    class="form-group
                @error('sale')
                    text-danger
                @enderror">
                    <label for="sale">Giảm giá</label>
                    <input type="number" class="form-control" name="sale" id="sale" value="{{ old('sale') }}"
                        oninput="onChange('sale')" placeholder="Nhập giảm giá">
                    @error('sale')
                        <p class="text-danger" id="error-msg-sale">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div
                    class="form-group
                    @error('description')
                        text-danger
                    @enderror">
                    <label for="description">Mô tả</label>
                    <textarea name="description" id="description" class="form-control" rows="5">{{ old('description') }}</textarea>
                    @error('description')
                        <p class="text-danger">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <button id="btn-submit" class="btn btn-primary">Thêm mới</button>
            </form>
        </div>
    </div>
@endsection

@section('extra-scripts')
@endsection
