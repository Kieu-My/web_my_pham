<?php

namespace App\Console\Commands;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use Carbon\Carbon;
use Exception;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ConvertProducts extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:convert-products';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $categories = Category::pluck('id', 'name');
        $brands = Brand::pluck('id', 'name');

        $products = DB::connection('crawl')->table('product_hasaki')->where('status', 0)
            ->get();

        $count = count($products);
        $i = 0;
        foreach ($products as $key => $value) {

            try {
                $category_id = $categories->get($value->category);

                if (!$category_id) {
                    $category_id = Category::create([
                        'name' => $value->category,
                        'slug' => Str::slug($value->category),
                        'parent_id' => 0,
                    ])->id;

                    $categories->put($value->category, $category_id);
                }

                $brand_id = $brands->get($value->brand);

                if (!$brand_id) {
                    $brand_id = Brand::create([
                        'name' => $value->brand,
                        'slug' => Str::slug($value->brand, '-')
                    ])->id;

                    $brands->put($value->brand, $brand_id);
                }

                $product = Product::insertGetId([
                    'name' => $value->name,
                    'slug' => Str::slug($value->name, '-'),
                    'category_id' => $category_id,
                    'brand_id' => $brand_id,
                    'price' => $value->price,
                    'description' => $value->description,
                    'sale' => 0,
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ]);

                $productImages = DB::connection('crawl')->table('product_images_hasaki')->where('name', $value->name)->get();

                $productImagesArr = [];
                foreach ($productImages as $key => $v) {
                    $productImagesArr[] = [
                        'product_id' => $product,
                        'path' => $v->image,
                    ];
                }

                DB::table('product_images')->insert($productImagesArr);

                DB::connection('crawl')->table('product_hasaki')->where('id', $value->id)->update([
                    'status' => 1
                ]);

                $i++;

                $this->info('Success' . $value->id . ' - ' . $value->name . ' ' . $i . '/' . $count);
            } catch (Exception $e) {
                $this->error($e->getMessage());

                $this->info('Error' . $value->id . ' - ' . $value->name . ' ' . $i . '/' . $count);

                continue;


            }
        }

    }
}
