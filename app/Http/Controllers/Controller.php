<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Str;
use App\Models\Tenant;
use App\Models\User;
use App\Models\Plan;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    // ***********************************************************************
    // funciones del tenant
    // ***********************************************************************

    // self::createTenant(9);
    public static function createTenant($id_user)
    {

        $tenant = Tenant::where("id_user", $id_user)->first();
        $user = User::findOrFail($id_user);

        if (!$tenant) {

            $dbName = strtolower('db_' . Str::random(12));

            DB::statement("CREATE DATABASE $dbName CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci");

            $tenant = Tenant::create([
                'id_user' => $user->id,
                'database' => $dbName
            ]);
            config(['database.connections.newtenant' => [
                'driver' => 'mysql',
                'host' => env('DB_HOST', '127.0.0.1'),
                'database' => $dbName,
                'username' => env('DB_USERNAME', 'forge'),
                'password' => env('DB_PASSWORD', ''),
            ]]);

            Artisan::call('migrate', [
                '--database' => 'newtenant',
                '--path' => 'database/migrations/tenants',
                '--force' => true
            ]);

            Artisan::call('db:seed', [
                '--database' => 'newtenant',
                '--class' => 'DatabaseTenantSeeder',
                '--force' => true
            ]);

            DB::connection('newtenant')->table('users')->insert([
                'id' => 2,
                'name' => $user->name,
                'email' => $user->email,
                'email_verified_at' => $user->email_verified_at,
                'password' => $user->password,
                'plan' => $user->plan,
                'plan_expire_date' => $user->plan_expire_date,
                'requested_plan'  => $user->requested_plan,
                'trial_plan' => $user->trial_plan,
                'trial_expire_date' => $user->trial_expire_date,
                'type' => $user->type,
                'storage_limit' => $user->storage_limit,
                'avatar' => $user->avatar,
                'messenger_color' => $user->messenger_color,
                'lang' => $user->lang,
                'default_pipeline' => $user->default_pipeline,
                'active_status' => $user->active_status,
                'delete_status' => $user->delete_status,
                'mode' => $user->mode,
                'dark_mode' => $user->dark_mode,
                'is_disable' => $user->is_disable,
                'is_enable_login' => $user->is_enable_login,
                'is_active' => $user->is_active,
                'referral_code' => $user->referral_code,
                'used_referral_code' => $user->used_referral_code,
                'commission_amount' => $user->commission_amount,
                'last_login_at' => $user->last_login_at,
                'created_by' => $user->created_by,
                'remember_token' => $user->remember_token,
                'created_at' => $user->created_at,
                'updated_at' => $user->updated_at,
                'is_email_verified' => $user->is_email_verified
            ]);
            $planUser = Plan::where("id", $user->plan)->first();
            DB::connection('newtenant')->table('plans')->insert($planUser->toArray());
            $rolesModel = DB::table("model_has_roles")->get();
            foreach ($rolesModel as $rol) {
                try {
                    DB::connection('newtenant')->table('model_has_roles')->insert((array)$rol);
                } catch (\Throwable $th) {
                }
            }
        }
        return $user->subdomain;
    }
    
    // ***********************************************************************
    // Fin funciones del tenant
    // ***********************************************************************

    // ***********************************************************************
    // funciones de registro
    // ***********************************************************************
    
    public static function getPlanes()
    {
        $planes = Plan::where("is_disable", 1)->get();
        return $planes;
    }

    // ***********************************************************************
    // fin funciones de registro
    // ***********************************************************************
}
