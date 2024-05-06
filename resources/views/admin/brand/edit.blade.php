@extends('admin.layouts.index')
@section('title', 'Sửa thương hiệu')
@section('content')
    <h3>
        Sửa thương hiệu
    </h3>
    <div class="row">
        <div class="col-12">
            <form action="{{ route('admin.brand.update', $brand->id) }}" method="post">
                @csrf
                <div class="form-group
                    @error('name')
                        text-danger
                    @enderror">
                    <label for="name">Tên thương hiệu</label>
                    <input type="text" class="form-control" name="name" id="name" value="{{ $brand->name }}" oninput="onChange('name')">
                    @error('name')
                        <p class="text-danger" id="error-msg-name">
                            {{ $message }}
                        </p>
                    @enderror
                </div>
                <div class="d-flex justify-content-between">
                    <a href="{{ route('admin.brand.index') }}" class="btn btn-secondary">
                        Quay lại
                    </a>
                    <button type="submit" class="btn btn-primary">
                        Cập nhật
                    </button>
                </div>
            </form>
        </div>
    </div>

@endsection
