<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use Symfony\Component\DomCrawler\Crawler;

class Demo extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:demo';

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
        $filePath = public_path('demo.html');

        $crawler = new Crawler(File::get($filePath));

        $htmlAfter = $crawler->filter('div#list_sp_col_right')->html();

        $newFilePath = public_path('demo-after.html');

        File::put($newFilePath, $htmlAfter);

        $this->info('File has been created');

    }
}

composer require symfony/dom-crawler

{
  "loop_data": {
    "loop": "div.ProductGrid__grid div.ProductGridItem__itemOuter",
    "database": {
      "table": "hasaki",
      "template_id": "template_file/demo2.json"
    },
    "data": {
      "main_url": {
        "dom": "div.item_sp_hasaki a.block_info_item_sp",
        "type": "href",
        "position": 0
      },
      "main_name": {
        "dom": "div.item_sp_hasaki a.block_info_item_sp",
        "type": "data-name",
        "position": 0
      },
      "price": {
        "dom": "div.item_sp_hasaki a.block_info_item_sp",
        "type": "data-price",
        "position": 0
      },
      "brands": {
        "dom": "div.item_sp_hasaki a.block_info_item_sp",
        "type": "data-brand",
        "position": 0
      }
    },
    "template_id": {
      "value": "template_file/honda/honda-1.json"
    },
    "project_id": {
      "value": 30
    }
  }
}
