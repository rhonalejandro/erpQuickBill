<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Services\TenantConnectionManager;

class Tenant
{

    public function handle(Request $request, Closure $next)
    {
        $subdomain = $this->getSubdomain($request);
        if ($subdomain) {
            if (!$this->hasPath($request)) {
                return redirect("/login");
            }
            $tenant = DB::table('users')
                ->where('subdomain', $subdomain)
                ->join('users_tenant', 'users_tenant.id_user', '=', 'users.id')
                ->first();
            if (!$tenant) {
                abort(404);
            }
            $db = $tenant->database;
        } else {
            $db = env('DB_DATABASE', 'forge');
        }
        app(TenantConnectionManager::class)->setTenant($db);
        return $next($request);
    }

    private function getSubdomain($request)
    {
        $host = $request->getHost();
        $parts = explode('.', $host);
        return count($parts) > 2 ? $parts[0] : null;
    }

    private function hasPath($request)
    {

        $path = $request->path();
        if ($path !== '/') {
            return true;
        } else {
            return false;
        }
    }
}