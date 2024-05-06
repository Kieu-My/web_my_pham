<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\DomCrawler\Crawler;

class ConvertHtml extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:convert-html';

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
        $files = File::files(public_path('brand'));

        foreach ($files as $file) {
            $title = "brand_0-9";
            $filePath = $file->getPathname();
            $crawler = new Crawler(File::get($filePath));
            $htmlAfter = $crawler->filter("div#{$title}");
            dd($htmlAfter);
            // $htmlAfter = $htmlAfter->next
            $newFilePath = public_path('brand/' . $title . '.html');
            File::put($newFilePath, $htmlAfter);
            $this->info('File has been created');

        }

        //    $filePath = public_path('demo.html');

        //    $crawler = new Crawler(File::get($filePath));

        //    $htmlAfter = $crawler->filter('div#list_sp_col_right')->html();

        //    $newFilePath = public_path('demo-after.html');

        //    File::put($newFilePath, $htmlAfter);

        //    $this->info('File has been created');

    }
}
