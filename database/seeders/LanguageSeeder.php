<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $languages = [
            ['code' => 'ar', 'full_name' => 'Arabic'],
            ['code' => 'zh', 'full_name' => 'Chinese'],
            ['code' => 'da', 'full_name' => 'Danish'],
            ['code' => 'de', 'full_name' => 'German'],
            ['code' => 'en', 'full_name' => 'English'],
            ['code' => 'es', 'full_name' => 'Spanish'],
            ['code' => 'fr', 'full_name' => 'French'],
            ['code' => 'he', 'full_name' => 'Hebrew'],
            ['code' => 'it', 'full_name' => 'Italian'],
            ['code' => 'ja', 'full_name' => 'Japanese'],
            ['code' => 'nl', 'full_name' => 'Dutch'],
            ['code' => 'pl', 'full_name' => 'Polish'],
            ['code' => 'pt', 'full_name' => 'Portuguese'],
            ['code' => 'ru', 'full_name' => 'Russian'],
            ['code' => 'tr', 'full_name' => 'Turkish'],
            ['code' => 'pt-br', 'full_name' => 'Portuguese (Brazil)'],
        ];

        foreach ($languages as $language) {
            DB::table('languages')->insert([
                'code' => $language['code'],
                'full_name' => $language['full_name'],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}
