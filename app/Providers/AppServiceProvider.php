<?php

namespace App\Providers;

use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();

        Carbon::macro('toFormateDate', function ()
        {
          return  $this->format('Y-m-d');
        });

        
        $categories = Category::with('subcategories')->where('parent_id', null)->where('active_status', 1)->get();
        View::share('categories', $categories);
    }
}
