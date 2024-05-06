<?php

namespace App\Console\Commands;

use App\Models\Product;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ConvertCategory extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:convert-category';

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

        $products = Product::where('status', 0)->get();

        foreach ($products as $product) {
            $images = DB::connection('crawl')->table('product_images_hasaki')->where('name', $product->name)->get();

            if (($images->count() == 0)) {
                $this->info('Product ' . $product->name . ' not found');

                $product->status = 3;
                $product->save();

                continue;
            }


            $attr = [];
            foreach ($images as $key => $value) {
                $attr[] = [
                    'product_id' => $product->id,
                    'path' => $value->image,
                ];
            }


            $product->status = 2;
            $product->image = $images[0]->image;
            $product->save();


            DB::table('product_images')->insert($attr);

            $this->info('Product ' . $product->name . ' converted');
        }
    }
}
