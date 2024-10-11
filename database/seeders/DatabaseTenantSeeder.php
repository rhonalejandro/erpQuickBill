<?php

namespace Database\Seeders;

use App\Models\Utility;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;

class DatabaseTenantSeeder extends Seeder
{
    /**
     * @return void
     */
    public function run()
    {
        $this->call(NotificationSeeder::class);
        Artisan::call('module:migrate LandingPage');
        Artisan::call('module:seed LandingPage');
        $this->call(UsersTableTenantSeeder::class);
        $this->call(AiTemplateSeeder::class);
        $this->call(LanguageSeeder::class);
    }
}
