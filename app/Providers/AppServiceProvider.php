<?php

namespace App\Providers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Config;
use App\Services\TenantConnectionManager;
use Illuminate\Support\Facades\Event;
use Illuminate\Database\Events\TransactionBeginning;
use Closure;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        $tenantManager = app(TenantConnectionManager::class);
        if ($tenant = $this->getTenantFromSubdomain()) {
            if ($tenant->database) {
                $tenantManager->setTenant($tenant->database);
            }
        } else {
            $tenantManager->setTenant(env('DB_DATABASE', 'forge'));
        }

        Event::listen(TransactionBeginning::class, function () use ($tenantManager) {
            $tenantManager->reconnect();
        });
    }


    private function getTenantFromSubdomain()
    {
        $subdomain = explode('.', request()->getHost())[0];
        if (\Schema::hasTable('users_tenant')) {
            return DB::table('users')
                ->where('subdomain', $subdomain)
                ->join('users_tenant', 'users_tenant.id_user', '=', 'users.id')
                ->first();
        }
        return null;
    }
}