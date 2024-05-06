<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;

class HomeController extends Controller
{
    public function index()
    {
        $parentCategories = Category::where('parent_id', 0)->get();

        $result = [];

        foreach ($parentCategories as $key => $value) {
            $children = $value->children()->select('id', 'name')->get();

            $products = Product::whereIn('category_id', $children->pluck('id'))
            ->limit(5)
            ->inRandomOrder()
            ->get();

            $result[$value->name] = $products;
        }

        $data = [
            'result' => $result,
        ];

        return view('user.index', $data);
    }
}
