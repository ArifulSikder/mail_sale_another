<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('app_settings', function (Blueprint $table) {
            $table->id();
            $table->string('favicon');
            $table->string('logo');
            $table->string('logo_image_alt');
            $table->string('fb_link');
            $table->string('instagram_link');
            $table->string('twitter_link');
            $table->string('linkedin_link');
            $table->string('email_link');
            $table->string('pinterest_link');
            $table->string('footer_text');
            $table->unsignedBigInteger('created_by');
            $table->unsignedBigInteger('updated_by')->default(null);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('app_settings');
    }
};