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
        Schema::create('payment_apis', function (Blueprint $table) {
            $table->id();
            $table->string('payment_type');
            $table->string('mode');
            $table->string('client_id');
            $table->string('client_secret');
            $table->string('app_id');
            $table->boolean('active_status')->default(1);
            $table->foreignId('created_by');
            $table->foreignId('updated_by')->nullable();    
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
        Schema::dropIfExists('payment_apis');
    }
};
