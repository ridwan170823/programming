<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        if (session('success')) {
            flash()->addSuccess(session('success'));
        }

        if (session('error')) {
            flash()->addError(session('error'));
        }
    }
}
