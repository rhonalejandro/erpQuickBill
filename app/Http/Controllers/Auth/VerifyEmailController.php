<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Auth\Events\Verified;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Support\Facades\Log;

class VerifyEmailController extends Controller
{
    /**
     * Mark the authenticated user's email address as verified.
     *
     * @param  EmailVerificationRequest  $request
     * @param  string  $id
     */
    public function __invoke(EmailVerificationRequest $request, string $id)
    {
        $host = $request->getHost();

        try {
            $subdomain = null;

            if (!$request->user()->hasVerifiedEmail()) {
                if ($request->user()->markEmailAsVerified()) {
                    event(new Verified($request->user()));
                }
            }

            $subdomain = self::createTenant($id);

            $this->logoutUser($request);

            if ($subdomain) {
                return redirect()->intended("http://{$subdomain}.{$host}/login");
            }

            return $this->handleFailure();
        } catch (\Exception $e) {
            Log::error('Email verification failed: ' . $e->getMessage());
            return $this->handleFailure();
        }
    }

    /**
     * Log out the current user.
     *
     * @param  EmailVerificationRequest  $request
     */
    private function logoutUser(EmailVerificationRequest $request): void
    {
        $request->session()->invalidate();
        $request->session()->regenerateToken();
    }

    /**
     * Handle verification failure.
     *
     */
    private function handleFailure()
    {
        return redirect()->route('login')->with('error', 'Email verification failed. Please try again.');
    }
}
