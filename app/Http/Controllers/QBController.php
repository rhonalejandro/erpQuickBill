<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Auth;
use DB;

class QBController extends Controller
{
    public function verifySubDomain($subdomain)
    {
        $exists = User::where('subdomain', $subdomain)->exists();

        $suggestions = [];
        if ($exists) {
            $suggestions = [
                $subdomain . rand(1, 999),
                $subdomain . '-' . strtolower(\Str::random(4)),
                strtolower(\Str::random(3)) . '-' . $subdomain,
            ];
        }

        return response()->json([
            'available' => !$exists,
            'suggestions' => $suggestions
        ]);
    }
}
