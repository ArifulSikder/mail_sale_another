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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('f_name')->nullable();
            $table->string('l_name')->nullable();
            $table->string('company_name')->nullable();
            $table->string('city')->nullable();
            $table->string('address')->nullable();
            $table->string('street')->nullable();
            $table->string('town')->nullable();
            $table->string('country')->nullable();
            $table->string('code')->nullable();
            $table->string('post_code')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->unique();
            $table->string('note', 1000)->nullable();
            $table->boolean('applied_coupon')->nullable()->comment('0=not applied, 1=applied')->default(0);
            $table->double('sales_price', 8,2)->nullable();
            $table->integer('payment_method')->nullable()->comment('1=stripe, 2=paypal');
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
        Schema::dropIfExists('orders');
    }
};
