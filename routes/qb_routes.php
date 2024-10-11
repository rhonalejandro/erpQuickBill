<?php

use App\Http\Controllers\QBController;

Route::prefix('qb')->group(function () {
    Route::prefix('register')->middleware('guest')->group(function () {
        Route::get('/verify-subdomain/{subdomain?}', [QBController::class, 'verifySubDomain'])
            ->name('verify-subdomain');
    });
});