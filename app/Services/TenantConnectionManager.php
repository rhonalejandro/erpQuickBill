<?php

namespace App\Services;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use App\Models\User;

class TenantConnectionManager
{
    protected $tenant;

    public function setTenant($tenant)
    {
        $this->tenant = $tenant;
        $this->reconnect();
    }

    public function reconnect()
    {
        if ($this->tenant) {
            Config::set('database.default', 'tenant');
            Config::set('database.connections.tenant.database', $this->tenant);
            DB::purge('tenant');
            DB::reconnect('tenant');
        }
    }
}
