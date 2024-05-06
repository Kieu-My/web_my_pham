<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductSize;
use App\Models\Size;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::with(['category', 'brand'])
            ->orderBy('id', 'desc')->get();

        $data = [
            'products' => $products,
        ];

        return view('admin.product.index', $data);
    }

    public function create()
    {
        $categories = Category::where('parent_id', '<>', 0)->get();
        $brands = Brand::all();
        $data = [
            'categories' => $categories,
            'brands' => $brands,
        ];

        return view('admin.product.create', $data);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:254|unique:products',
            'price' => 'required|numeric|min:0',
            'category_id' => 'required',
            'brand_id' => 'required',
            'description' => 'max:1000',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'sale' => 'nullable|numeric|min:0|max:100',
            'quantity' => 'required|numeric|min:0',
        ], [
            'name.required' => 'Tên sản phẩm không được để trống',
            'name.max' => 'Tên sản phẩm không được quá 254 ký tự',
            'name.unique' => 'Tên sản phẩm đã tồn tại',
            'price.required' => 'Giá sản phẩm không được để trống',
            'price.numeric' => 'Giá sản phẩm phải là số',
            'price.min' => 'Giá sản phẩm không được nhỏ hơn 0',
            'category_id.required' => 'Danh mục không được để trống',
            'brand_id.required' => 'Nhà sản xuất không được để trống',
            'description.max' => 'Mô tả không được quá 1000 ký tự',
            'image.required' => 'Ảnh sản phẩm không được để trống',
            'image.image' => 'Ảnh sản phẩm phải là ảnh',
            'image.mimes' => 'Ảnh sản phẩm phải có định dạng jpeg, png, jpg, gif, svg',
            'image.max' => 'Ảnh sản phẩm không được quá 2048 ký tự',
            'sale.numeric' => 'Giảm giá phải là số',
            'sale.min' => 'Giảm giá không được nhỏ hơn 0',
            'sale.max' => 'Giảm giá không được lớn hơn 100',
            'quantity.required' => 'Số lượng không được để trống',
            'quantity.numeric' => 'Số lượng phải là số',
            'quantity.min' => 'Số lượng không được nhỏ hơn 0',
        ]);

        $avatar = $request->file('image');
        if ($avatar) {
            $avatarName = date('Ymdhis') . '_' . $avatar->getClientOriginalName();
            $avatar->move(public_path('products'), $avatarName);
        }

        $product = new Product();
        $product->name = $request->name;
        $product->slug = Str::slug($request->name, '-');
        $product->price = $request->price;
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->description = $request->description;
        $product->image = $avatarName;
        $product->sale = $request->sale;
        $product->quantity = $request->quantity;
        $product->save();

        $images = $request->file('images');

        if ($images) {
            foreach ($images as $image) {
                $imageName = date('Ymdhis') . '_' . $image->getClientOriginalName();
                $image->move(public_path('products'), $imageName);

                $productImages[] = [
                    'product_id' => $product->id,
                    'path' => $imageName,
                ];
            }

            ProductImage::insert($productImages);
        }

        return redirect()->route('admin.product.index');
    }

    public function edit($id)
    {
        $product = Product::with(['category', 'brand', 'images'])->find($id);
        $categories = Category::where('parent_id', '<>', 0)->get();
        $brands = Brand::all();

        $data = [
            'product' => $product,
            'categories' => $categories,
            'brands' => $brands,
        ];

        return view('admin.product.edit', $data);
    }

    public function update(Request $request, $id)
    {
        $product = Product::find($id);

        $this->validate($request, [
            'name' => 'required|max:254|unique:products,name,' . $id,
            'price' => 'required|numeric|min:0',
            'category_id' => 'required',
            'brand_id' => 'required',
            'description' => 'max:1000',
            'sale' => 'numeric|min:0|max:100',
        ], [
            'name.required' => 'Tên sản phẩm không được để trống',
            'name.max' => 'Tên sản phẩm không được quá 254 ký tự',
            'name.unique' => 'Tên sản phẩm đã tồn tại',
            'price.required' => 'Giá sản phẩm không được để trống',
            'price.numeric' => 'Giá sản phẩm phải là số',
            'price.min' => 'Giá sản phẩm không được nhỏ hơn 0',
            'category_id.required' => 'Danh mục không được để trống',
            'brand_id.required' => 'Nhà sản xuất không được để trống',
            'description.max' => 'Mô tả không được quá 1000 ký tự',
            'sale.numeric' => 'Giảm giá phải là số',
            'sale.min' => 'Giảm giá không được nhỏ hơn 0',
            'sale.max' => 'Giảm giá không được lớn hơn 100',
        ]);

        $avatar = $request->file('image');

        if ($avatar) {
            $avatarName = date("Ymdhis") . $avatar->getClientOriginalName();
            $avatar->move(public_path('products'), $avatarName);
            $product->image = $avatarName;
        }

        $product->name = $request->name;
        $product->slug = Str::slug($request->name, '-');
        $product->price = $request->price;
        $product->category_id = $request->category_id;
        $product->brand_id = $request->brand_id;
        $product->description = $request->description;
        $product->sale = $request->sale;
        $product->quantity = $request->quantity;
        $product->save();

        $images = $request->file('images');

        $productImages = [];
        if ($images) {
            foreach ($images as $image) {
                $imageName = date('Ymdhis') . $image->getClientOriginalName();
                $image->move(public_path('products'), $imageName);

                $productImages[] = [
                    'product_id' => $id,
                    'path' => $imageName,
                ];
            }
        }

        ProductImage::where('product_id', $id)->delete();

        ProductImage::insert($productImages);

        return redirect()->route('admin.product.index')->with('success', 'Cập nhật sản phẩm thành công');
    }

    public function destroy($id)
    {
        Product::destroy($id);

        return redirect()->route('admin.product.index')->with('success', 'Xóa sản phẩm thành công');
    }
}
